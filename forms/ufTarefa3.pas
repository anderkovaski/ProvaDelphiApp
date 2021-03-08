unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, DataSnap.DBClient, uProjetos, System.Math;

type
  TfTarefa3 = class(TForm)
    pnMain: TPanel;
    lbValoresProjeto: TLabel;
    grProjetos: TDBGrid;
    btTotal: TButton;
    edTotal: TEdit;
    btTotalDivisoes: TButton;
    edTotalDiv: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btTotalClick(Sender: TObject);
    procedure btTotalDivisoesClick(Sender: TObject);
  private
    cdsProjetos: TClientDataSet;
    dsProjetos: TDataSource;
    Projetos: TProjetos;

    function CalcularValorTotalProjetos: Currency;
    function CalcularTotalDivisoes: Currency;
    procedure InicializarProjetos;
    procedure InicializarEstrutura;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

{ TfTarefa3 }

procedure TfTarefa3.btTotalClick(Sender: TObject);
begin
  edTotal.Text := FormatCurr('R$ 0.00', CalcularValorTotalProjetos);
end;

procedure TfTarefa3.btTotalDivisoesClick(Sender: TObject);
begin
  edTotalDiv.Text := FormatCurr('R$ 0.00', CalcularTotalDivisoes);
end;

function TfTarefa3.CalcularTotalDivisoes: Currency;
var
  ValorTotalDiv: Real;
  ValorAnterior: Currency;
begin
  ValorTotalDiv := 0.0;
  cdsProjetos.DisableControls;
  try
    cdsProjetos.First;
    ValorAnterior := cdsProjetos.FieldByName('Valor').AsCurrency;
    cdsProjetos.Next;
    while not cdsProjetos.Eof do
    begin
      ValorTotalDiv := ValorTotalDiv +
        (cdsProjetos.FieldByName('Valor').AsCurrency / ValorAnterior);
      ValorAnterior := cdsProjetos.FieldByName('Valor').AsCurrency;
      cdsProjetos.Next;
    end;
  finally
    Result := RoundTo(ValorTotalDiv, -2);
    cdsProjetos.EnableControls;
  end;
end;

function TfTarefa3.CalcularValorTotalProjetos: Currency;
var
  ValorTotal: Currency;
begin
  ValorTotal := 0.0;
  cdsProjetos.DisableControls;
  try
    cdsProjetos.First;
    while not cdsProjetos.Eof do
    begin
      ValorTotal := ValorTotal + cdsProjetos.FieldByName('Valor').AsCurrency;
      cdsProjetos.Next;
    end;
  finally
    Result := ValorTotal;
    cdsProjetos.EnableControls;
  end;
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Release;
  fTarefa3 := nil;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  InicializarEstrutura;
  InicializarProjetos;
end;

procedure TfTarefa3.FormDestroy(Sender: TObject);
begin
  Projetos.Free;
end;

procedure TfTarefa3.InicializarEstrutura;
begin
  Projetos := TProjetos.Create;

  cdsProjetos := TClientDataSet.Create(Self);
  cdsProjetos.FieldDefs.Add('IdProjeto', ftInteger);
  cdsProjetos.FieldDefs.Add('NomeProjeto', ftString, 50);
  cdsProjetos.FieldDefs.Add('Valor', ftCurrency);
  cdsProjetos.CreateDataSet;

  dsProjetos := TDataSource.Create(Self);

  dsProjetos.DataSet := cdsProjetos;
  grProjetos.DataSource := dsProjetos;
end;

procedure TfTarefa3.InicializarProjetos;
var
  I: Integer;
begin
  Projetos.GerarItensAleatorios(10, 100);

  for I:=0 to Projetos.Items.Count-1 do
  begin
    cdsProjetos.Append;
    cdsProjetos.FieldByName('IdProjeto').AsInteger := Projetos.Items[I].Id;
    cdsProjetos.FieldByName('NomeProjeto').AsString := Projetos.Items[I].Nome;
    cdsProjetos.FieldByName('Valor').AsCurrency := Projetos.Items[I].Valor;
    cdsProjetos.Post;
  end;
end;

end.
