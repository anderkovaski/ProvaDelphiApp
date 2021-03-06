object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 361
  ClientWidth = 584
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 361
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    TabOrder = 0
    object lbThread1: TLabel
      Left = 10
      Top = 53
      Width = 40
      Height = 13
      Caption = 'Thread1'
    end
    object lbThread2: TLabel
      Left = 10
      Top = 101
      Width = 40
      Height = 13
      Caption = 'Thread2'
    end
    object pbThread1: TProgressBar
      Left = 10
      Top = 72
      Width = 561
      Height = 17
      MarqueeInterval = 1
      Step = 1
      TabOrder = 0
    end
    object pbThread2: TProgressBar
      Left = 10
      Top = 120
      Width = 561
      Height = 17
      MarqueeInterval = 1
      Step = 1
      TabOrder = 1
    end
  end
  object btIniciar: TButton
    Left = 10
    Top = 18
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 1
    OnClick = btIniciarClick
  end
  object Timer1: TTimer
    Enabled = False
    Left = 128
    Top = 64
  end
  object Timer2: TTimer
    Enabled = False
    Left = 128
    Top = 120
  end
end
