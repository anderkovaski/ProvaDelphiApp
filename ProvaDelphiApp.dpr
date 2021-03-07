program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufMain in 'forms\ufMain.pas' {fMain},
  ufTarefa1 in 'forms\ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'forms\ufTarefa2.pas' {fTarefa2},
  uMyThread in 'classes\uMyThread.pas',
  ufTarefa3 in 'forms\ufTarefa3.pas' {fTarefa3},
  uProjetos in 'classes\uProjetos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
