program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufMain in 'forms\ufMain.pas' {fMain},
  ufTarefa1 in 'forms\ufTarefa1.pas' {fTarefa1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
