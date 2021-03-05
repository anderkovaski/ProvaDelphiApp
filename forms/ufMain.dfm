object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 186
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnMain: TPanel
    Left = 0
    Top = 0
    Width = 418
    Height = 186
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 184
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object MainMenu: TMainMenu
    Left = 72
    Top = 40
    object miTarefas: TMenuItem
      Caption = 'Tarefas'
      object miTarefa1: TMenuItem
        Caption = 'Tarefa 1'
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
