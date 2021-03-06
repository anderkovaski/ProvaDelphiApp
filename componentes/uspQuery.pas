unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)
  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;

    procedure VerificaErros;
    function CriarClausulaSelect: String;
    function CriarClausulaFrom: String;
    function CriarClausulaWhere: String;
    { Private declarations }
  protected
      procedure GeraSQL;
    { Protected declarations }
  public
    { Public declarations }
  published
    property spCondicoes: TStringList read FspCondicoes write FspCondicoes;
    property spColunas: TStringList read FspColunas write FspColunas;
    property spTabelas: TStringList read FspTabelas write FspTabelas;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Componentes', [TspQuery]);
end;

{ TspQuery }

function TspQuery.CriarClausulaFrom: String;
begin
  Result := 'from ' + FspTabelas.DelimitedText;
end;

function TspQuery.CriarClausulaSelect: String;
begin
  if (not Assigned(FspColunas)) or (FspColunas.Count <1) then
    Result := 'select *'
  else
  begin
    FspColunas.Delimiter := ',';
    Result := 'select ' + FspColunas.DelimitedText;
  end;
end;

function TspQuery.CriarClausulaWhere: String;
begin
  if (not Assigned(FspCondicoes)) or (FspCondicoes.Count < 1) then
    Result := EmptyStr
  else
  begin
    FspCondicoes.Delimiter := ',';
    Result := 'where' + StringReplace(FspCondicoes.DelimitedText, ',', ' AND ', [rfReplaceALL]);
  end;
end;

procedure TspQuery.GeraSQL;
begin
  VerificaErros;

  SQL.Clear;

  SQL.Add(CriarClausulaSelect);
  SQL.Add(CriarClausulaFrom);
  SQL.Add(CriarClausulaWhere);
end;

procedure TspQuery.VerificaErros;
begin
  if (not Assigned(FspTabelas)) or (not FspTabelas.Count = 1)then
    raise Exception.Create('TspQuery - Deve ser informado uma tabela');
end;

end.
