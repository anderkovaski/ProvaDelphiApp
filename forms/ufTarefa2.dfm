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
      Top = 165
      Width = 40
      Height = 13
      Caption = 'Thread1'
    end
    object lbThread2: TLabel
      Left = 10
      Top = 213
      Width = 40
      Height = 13
      Caption = 'Thread2'
    end
    object lbIntervaloT1: TLabel
      Left = 10
      Top = 25
      Width = 111
      Height = 13
      Caption = 'Intervalo Thread1 (ms)'
    end
    object lbIntervaloT2: TLabel
      Left = 10
      Top = 76
      Width = 111
      Height = 13
      Caption = 'Intervalo Thread2 (ms)'
    end
    object pbThread1: TProgressBar
      Left = 10
      Top = 184
      Width = 561
      Height = 17
      MarqueeInterval = 1
      Step = 1
      TabOrder = 3
    end
    object pbThread2: TProgressBar
      Left = 10
      Top = 232
      Width = 561
      Height = 17
      MarqueeInterval = 1
      Step = 1
      TabOrder = 4
    end
    object btIniciar: TButton
      Left = 10
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Iniciar'
      TabOrder = 2
      OnClick = btIniciarClick
    end
    object edThread2: TSpinEdit
      Left = 10
      Top = 95
      Width = 121
      Height = 22
      Increment = 50
      MaxValue = 100000
      MinValue = 50
      TabOrder = 1
      Value = 400
    end
    object edThread1: TSpinEdit
      Left = 10
      Top = 44
      Width = 121
      Height = 22
      Increment = 50
      MaxValue = 100000
      MinValue = 50
      TabOrder = 0
      Value = 300
    end
  end
end
