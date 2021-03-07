unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uMyThread, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Samples.Spin;

type
  TfTarefa2 = class(TForm)
    Panel1: TPanel;
    btIniciar: TButton;
    pbThread1: TProgressBar;
    pbThread2: TProgressBar;
    lbThread1: TLabel;
    lbThread2: TLabel;
    edThread2: TSpinEdit;
    edThread1: TSpinEdit;
    lbIntervaloT1: TLabel;
    lbIntervaloT2: TLabel;
    procedure btIniciarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Thread1, Thread2: TmyThread;
    procedure FinalizarThreads(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.btIniciarClick(Sender: TObject);
begin
  btIniciar.Enabled := False;

  Thread1 := TmyThread.Create(edThread1.Value, pbThread1);
  Thread1.OnTerminate := FinalizarThreads;
  Thread2 := TmyThread.Create(edThread2.Value, pbThread2);
  Thread2.OnTerminate := FinalizarThreads;

  Thread1.Start;
  Thread2.Start;
end;

procedure TfTarefa2.FinalizarThreads(Sender: TObject);
begin
  if (pbThread1.Position = 100) and (pbThread2.Position = 100) then
  begin
    Application.MessageBox('Todas as threads foram executadas com sucesso!', 'Aviso', MB_ICONEXCLAMATION+MB_OK);
    btIniciar.Enabled := True;
    pbThread1.Position := 0;
    pbThread2.Position := 0;
  end;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Release;
  fTarefa2 := nil;
end;

end.
