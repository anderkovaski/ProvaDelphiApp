unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uMyThread, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TfTarefa2 = class(TForm)
    Panel1: TPanel;
    btIniciar: TButton;
    pbThread1: TProgressBar;
    pbThread2: TProgressBar;
    lbThread1: TLabel;
    lbThread2: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure btIniciarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Thread1, Thread2: TmyThread;
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.btIniciarClick(Sender: TObject);
begin
  Thread1 := TmyThread.Create(1000, pbThread1);
  Thread2 := TmyThread.Create(500, pbThread2);

  Thread1.Start;
  Thread2.Start;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Release;
  fTarefa2 := nil;
end;

end.
