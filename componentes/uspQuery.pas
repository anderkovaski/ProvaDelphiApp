unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)
  private
    FspCondicoes: TStrings;
    FspColunas: TStrings;
    FspTabelas: TStrings;

    procedure VerificaErros;
    function CriarClausulaSelect: String;
    function CriarClausulaFrom: String;
    function CriarClausulaWhere: String;
    { Private declarations }
  protected
    { Protected declarations }
  public
    procedure GeraSQL;
    { Public declarations }
  published
    property spCondicoes: TStrings read FspCondicoes write FspCondicoes;
    property spColunas: TStrings read FspColunas write FspColunas;
    property spTabelas: TStrings read FspTabelas write FspTabelas;
    { Published declarations }
  end;

const
  NL = #13#10;
  SP = #32#32;

implementation

{ TspQuery }

function TspQuery.CriarClausulaFrom: String;
begin
  Result := 'from' + NL + SP + FspTabelas.DelimitedText;
end;

function TspQuery.CriarClausulaSelect: String;
begin
  if (not Assigned(FspColunas)) or (FspColunas.Count <1) then
    Result := 'select' + NL + SP + '*'
  else
  begin
    FspColunas.Delimiter := ',';
    Result := 'select' + NL + SP + FspColunas.DelimitedText.Replace(',', ', ');
  end;
end;

function TspQuery.CriarClausulaWhere: String;
begin
  if (not Assigned(FspCondicoes)) or (FspCondicoes.Count < 1) then
    Result := EmptyStr
  else
  begin
    FspCondicoes.Delimiter := ',';
    Result := 'where' +  NL + SP + FspCondicoes.DelimitedText.Replace(',', ' and ');
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
  if (not Assigned(FspTabelas)) or (not (FspTabelas.Count = 1))then
    raise Exception.Create('TspQuery - Deve ser informado uma tabela');
end;

end.
