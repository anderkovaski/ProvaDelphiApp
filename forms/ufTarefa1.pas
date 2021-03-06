unit ufTarefa1;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uspQuery, Vcl.ExtCtrls,
  FireDAC.Phys.MySQLDef, FireDAC.Phys, FireDAC.Phys.MySQL;

type
  TfTarefa1 = class(TForm)
    pnMain: TPanel;
    pnQuery: TPanel;
    lbColunas: TLabel;
    lbTabela: TLabel;
    lbCondicoes: TLabel;
    pnResultado: TPanel;
    meColunas: TMemo;
    meTabela: TMemo;
    meCondicoes: TMemo;
    btGeraSql: TButton;
    spQuery: TspQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    meResultado: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGeraSqlClick(Sender: TObject);
  private
    { Private declarations }
    procedure GeraResposta;
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btGeraSqlClick(Sender: TObject);
begin
  spQuery.spColunas := meColunas.Lines;
  spQuery.spTabelas := meTabela.Lines;
  spQuery.spCondicoes := meCondicoes.Lines;

  spQuery.GeraSQL;

  GeraResposta;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Release;
  fTarefa1 := nil;
end;

procedure TfTarefa1.GeraResposta;
begin
  meResultado.Clear;
  meResultado.Lines := spQuery.SQL;
end;

end.
