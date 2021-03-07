unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, DataSnap.DBClient;

type
  TfTarefa3 = class(TForm)
    pnMain: TPanel;
    lbValoresProjeto: TLabel;
    grProjetos: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    cdsProjetos: TClientDataSet;
    dsProjetos: TDataSource;
    procedure CriarClientDataSet;
    procedure CriarDataSource;
    procedure BidingComponentes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

{ TfTarefa3 }

procedure TfTarefa3.BidingComponentes;
begin
  dsProjetos.DataSet := cdsProjetos;
  grProjetos.DataSource := dsProjetos;
end;

procedure TfTarefa3.CriarClientDataSet;
begin
  cdsProjetos := TClientDataSet.Create(Self);
  cdsProjetos.FieldDefs.Add('IdProjeto', ftInteger);
  cdsProjetos.FieldDefs.Add('NomeProjeto', ftString, 100);
  cdsProjetos.FieldDefs.Add('Valor', ftCurrency);
  cdsProjetos.CreateDataSet;
end;

procedure TfTarefa3.CriarDataSource;
begin
  dsProjetos := TDataSource.Create(Self);
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Release;
  fTarefa3 := nil;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  CriarClientDataSet;
  CriarDataSource;
  BidingComponentes;
end;

end.
