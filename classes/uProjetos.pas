unit uProjetos;

interface

uses
  System.Generics.Collections, System.SysUtils;

type

TProjeto = class
  private
    FValor: Currency;
    FId: Integer;
    FNome: String;
    procedure SetValor(const Value: Currency);
  public
    property Id: Integer read FId write FId;
    property Nome: String read FNome write FNome;
    property Valor: Currency read FValor write SetValor;
end;

TProjetos = class
  private
    FItems: TList<TProjeto>;
    FValorMaxProjeto: Currency;
    FMaxItens: Integer;

    function SortearValor: Currency;
  public
    constructor Create;
    destructor Destroy; override;
    procedure SetItem(Projeto: TProjeto);
    procedure SetValorMaxProjeto(Value: Currency);
    procedure SetItensMaximo(Value: Integer);
    procedure GerarItensAleatorios(QtdMaxItens: Integer; ValorMaxProjeto: Currency);

    property Items: TList<TProjeto> read FItems;
end;

implementation

{ TProjetos }

procedure TProjeto.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

{ TProjetos }

constructor TProjetos.Create;
begin
  inherited;
  FItems := TList<TProjeto>.Create;
end;

destructor TProjetos.Destroy;
begin
  FItems.Free;
  inherited;
end;

procedure TProjetos.GerarItensAleatorios(QtdMaxItens: Integer; ValorMaxProjeto: Currency);
var
  I: Integer;
begin
  SetItensMaximo(QtdMaxItens);
  SetValorMaxProjeto(ValorMaxProjeto);

  for I := 0 to FMaxItens-1 do
  begin
    FItems.Add(TProjeto.Create);
    FItems[I].Id := I+1;
    FItems[I].Nome := 'Projeto ' + IntToStr(I+1);
    FItems[I].Valor := SortearValor;
  end;
end;

procedure TProjetos.SetItem(Projeto: TProjeto);
begin
  FItems.Add(Projeto);
end;

procedure TProjetos.SetItensMaximo(Value: Integer);
begin
  if Value <= 0 then
    raise Exception.Create('TProjetos - Quantidade de itens dos projetos deve ser no mínimo um');

  FMaxItens := Value;
end;

procedure TProjetos.SetValorMaxProjeto(Value: Currency);
begin
  if Value <= 0 then
    raise Exception.Create('TProjetos - Valor máximo dos projetos deve ser maior que zero');

  FValorMaxProjeto := Value;
end;

function TProjetos.SortearValor: Currency;
begin
  Randomize;
  Result := Random(Trunc(FValorMaxProjeto));
end;

end.
