unit ufMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, ufTarefa1;

type
  TfMain = class(TForm)
    pnMain: TPanel;
    MainMenu: TMainMenu;
    miTarefas: TMenuItem;
    miTarefa1: TMenuItem;
    miTarefa2: TMenuItem;
    miTarefa3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure miTarefa1Click(Sender: TObject);
  private
    { Private declarations }
    procedure InicializaForms;
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

{ TfMain }

procedure TfMain.FormCreate(Sender: TObject);
begin
  InicializaForms;
end;

procedure TfMain.InicializaForms;
begin
end;

procedure TfMain.miTarefa1Click(Sender: TObject);
var
  fTarefa1: TfTarefa1;
begin
  fTarefa1 := TfTarefa1.Create(Application);
  fTarefa1.Show;
end;

end.
