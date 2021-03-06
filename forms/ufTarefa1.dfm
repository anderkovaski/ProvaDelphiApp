object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Tarefa 1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 640
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
  object pnMain: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnQuery: TPanel
      Left = 0
      Top = 0
      Width = 624
      Height = 249
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lbColunas: TLabel
        Left = 10
        Top = 15
        Width = 38
        Height = 13
        Caption = 'Colunas'
      end
      object lbTabela: TLabel
        Left = 214
        Top = 15
        Width = 32
        Height = 13
        Caption = 'Tabela'
      end
      object lbCondicoes: TLabel
        Left = 418
        Top = 15
        Width = 49
        Height = 13
        Caption = 'Condi'#231#245'es'
      end
      object meColunas: TMemo
        Left = 10
        Top = 34
        Width = 195
        Height = 175
        TabOrder = 0
      end
      object meTabela: TMemo
        Left = 214
        Top = 34
        Width = 195
        Height = 175
        TabOrder = 1
      end
      object meCondicoes: TMemo
        Left = 418
        Top = 34
        Width = 195
        Height = 175
        TabOrder = 2
      end
      object btGeraSql: TButton
        Left = 538
        Top = 217
        Width = 75
        Height = 25
        Caption = 'Gera SQL'
        TabOrder = 3
        OnClick = btGeraSqlClick
      end
    end
    object pnResultado: TPanel
      Left = 0
      Top = 249
      Width = 624
      Height = 192
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      TabOrder = 1
      object meResultado: TMemo
        Left = 10
        Top = 10
        Width = 604
        Height = 172
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object spQuery: TspQuery
    Left = 248
    Top = 224
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 248
    Top = 272
  end
end
