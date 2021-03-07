object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
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
  object pnMain: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 361
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnQuery: TPanel
      Left = 0
      Top = 0
      Width = 584
      Height = 209
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
        Left = 206
        Top = 15
        Width = 32
        Height = 13
        Caption = 'Tabela'
      end
      object lbCondicoes: TLabel
        Left = 394
        Top = 15
        Width = 49
        Height = 13
        Caption = 'Condi'#231#245'es'
      end
      object meColunas: TMemo
        Left = 10
        Top = 34
        Width = 180
        Height = 143
        TabOrder = 0
      end
      object meTabela: TMemo
        Left = 203
        Top = 34
        Width = 180
        Height = 143
        TabOrder = 1
      end
      object meCondicoes: TMemo
        Left = 394
        Top = 34
        Width = 180
        Height = 143
        TabOrder = 2
      end
      object btGeraSql: TButton
        Left = 499
        Top = 183
        Width = 75
        Height = 25
        Caption = 'Gera SQL'
        TabOrder = 3
        OnClick = btGeraSqlClick
      end
    end
    object pnResultado: TPanel
      Left = 0
      Top = 209
      Width = 584
      Height = 152
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      TabOrder = 1
      object meResultado: TMemo
        Left = 10
        Top = 10
        Width = 564
        Height = 132
        ReadOnly = True
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
