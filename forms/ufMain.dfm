object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 181
  ClientWidth = 304
  Color = clBtnFace
  Constraints.MinHeight = 240
  Constraints.MinWidth = 320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnMain: TPanel
    Left = 0
    Top = 0
    Width = 304
    Height = 181
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object MainMenu: TMainMenu
    Left = 72
    Top = 40
    object miTarefas: TMenuItem
      Caption = 'Tarefas'
      object miTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = miTarefa1Click
      end
      object miTarefa2: TMenuItem
        Caption = 'Tarefa 2'
      end
      object miTarefa3: TMenuItem
        Caption = 'Tarefa 3'
      end
    end
  end
end
