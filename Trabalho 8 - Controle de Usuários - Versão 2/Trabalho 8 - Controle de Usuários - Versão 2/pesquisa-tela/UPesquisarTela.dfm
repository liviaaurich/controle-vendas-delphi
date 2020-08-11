object FPesquisaTela: TFPesquisaTela
  Left = 0
  Top = 0
  Caption = 'Selecionar Tela'
  ClientHeight = 289
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 423
    Height = 289
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 421
      Height = 248
      Align = alTop
      DataSource = DSDataSet
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = btnSelectClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descri'#231#227'o'
          Visible = True
        end>
    end
    object btnSelect: TButton
      Left = 336
      Top = 255
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 1
      OnClick = btnSelectClick
    end
    object cbIncluir: TCheckBox
      Left = 16
      Top = 259
      Width = 73
      Height = 17
      Caption = 'Incluir'
      TabOrder = 2
    end
    object cbAlterar: TCheckBox
      Left = 79
      Top = 259
      Width = 74
      Height = 17
      Caption = 'Alterar'
      TabOrder = 3
    end
    object cbExcluir: TCheckBox
      Left = 151
      Top = 259
      Width = 74
      Height = 17
      Caption = 'Excluir'
      TabOrder = 4
    end
    object cbImprimir: TCheckBox
      Left = 215
      Top = 259
      Width = 82
      Height = 17
      Caption = 'Imprimir'
      TabOrder = 5
    end
  end
  object DSDataSet: TDataSource
    DataSet = DM.MNotUserTela
    Left = 360
    Top = 16
  end
end
