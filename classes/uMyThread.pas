unit uMyThread;

interface

uses
  System.Classes, System.SysUtils, Vcl.ComCtrls;

type
TmyThread = class(TThread)
private
  FIntervalo: Integer;
  FPosicaoAtual: Integer;
  FProgressBar: TProgressBar;

  procedure SetIntervalo(Value: Integer);
  procedure SetPosicaoAtual(Value: Integer);
  procedure SetProgressBar(ProgressBar: TProgressBar);
protected
public
  property Intervalo: Integer read FIntervalo write setIntervalo;
  property PosicaoAtual: Integer read FPosicaoAtual;

  procedure Execute; override;
  constructor Create(IntervaloExecucao: Integer; ProgressBar: TProgressBar);
  procedure Sincronizar;
end;

const
  LIMITE_CONTAGEM = 100;

implementation

{ TmyThread }

constructor TmyThread.Create(IntervaloExecucao: Integer; ProgressBar: TProgressBar);
begin
  SetIntervalo(IntervaloExecucao);
  SetProgressBar(ProgressBar);

  FreeOnTerminate := True;
  inherited Create(True);
end;

procedure TmyThread.Execute;
begin
  inherited;

  SetPosicaoAtual(0);

  repeat
    Sleep(FIntervalo);
    Inc(FPosicaoAtual);
    Self.Queue(Self.Sincronizar);
  until (FPosicaoAtual > LIMITE_CONTAGEM);
end;

procedure TmyThread.SetPosicaoAtual(Value: Integer);
begin
  FPosicaoAtual := Value;
end;

procedure TmyThread.SetIntervalo(Value: Integer);
begin
  if Value <= 0 then
    raise Exception.Create('TMyThread - O intervalo de execução deve ser maior que zero');
    
  FIntervalo := Value;
end;

procedure TmyThread.SetProgressBar(ProgressBar: TProgressBar);
begin
  FProgressBar := ProgressBar;
end;

procedure TmyThread.Sincronizar;
begin
  FProgressBar.Position := FPosicaoAtual;
end;

end.
