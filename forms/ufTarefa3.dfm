object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnMain: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 361
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object lbValoresProjeto: TLabel
      Left = 10
      Top = 15
      Width = 92
      Height = 13
      Caption = 'Valores por projeto'
    end
    object grProjetos: TDBGrid
      Left = 10
      Top = 34
      Width = 564
      Height = 223
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object btTotal: TButton
      Left = 372
      Top = 271
      Width = 75
      Height = 25
      Caption = 'Obter Total'
      TabOrder = 1
      OnClick = btTotalClick
    end
    object edTotal: TEdit
      Left = 453
      Top = 274
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 2
    end
  end
  object btTotalDivisoes: TButton
    Left = 344
    Top = 304
    Width = 103
    Height = 25
    Caption = 'Obter Total Divisoes'
    TabOrder = 1
    OnClick = btTotalDivisoesClick
  end
  object edTotalDiv: TEdit
    Left = 453
    Top = 305
    Width = 121
    Height = 21
    Alignment = taRightJustify
    TabOrder = 2
  end
end
