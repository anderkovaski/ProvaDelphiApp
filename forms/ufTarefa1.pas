unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uspQuery;

type
  TfTarefa1 = class(TForm)
    spQuery1: TspQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Release;
  fTarefa1 := nil;
end;

end.
