inherited FTela: TFTela
  Caption = 'Cadastro de telas'
  ClientHeight = 199
  ClientWidth = 423
  ExplicitWidth = 439
  ExplicitHeight = 238
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 423
    ExplicitWidth = 423
    inherited ToolBar1: TToolBar
      Left = 222
      ExplicitLeft = 222
    end
  end
  inherited GCabecalho: TGroupBox
    Width = 423
    Height = 0
    ExplicitWidth = 423
    ExplicitHeight = 0
  end
  inherited PageControl: TPageControl
    Top = 23
    Width = 423
    Height = 176
    ExplicitTop = 23
    ExplicitWidth = 423
    ExplicitHeight = 176
    inherited tbInfo: TTabSheet
      ExplicitWidth = 415
      ExplicitHeight = 148
      inherited GInfo: TGroupBox
        Width = 415
        Height = 148
        ExplicitWidth = 415
        ExplicitHeight = 148
        object Label2: TLabel
          Left = 72
          Top = 16
          Width = 8
          Height = 13
          Caption = 'id'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 176
          Top = 19
          Width = 27
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 72
          Top = 72
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 72
          Top = 35
          Width = 75
          Height = 21
          Color = 14024703
          DataField = 'id'
          DataSource = DSDataSet
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 176
          Top = 35
          Width = 161
          Height = 21
          DataField = 'name'
          DataSource = DSDataSet
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 72
          Top = 88
          Width = 265
          Height = 21
          DataField = 'descricao'
          DataSource = DSDataSet
          TabOrder = 2
        end
      end
    end
    inherited tbFiltros: TTabSheet
      ExplicitWidth = 415
      ExplicitHeight = 148
      inherited GFiltros: TGroupBox
        Width = 415
        Height = 1
        ExplicitWidth = 415
        ExplicitHeight = 1
      end
      inherited GDataSet: TDBGrid
        Top = 1
        Width = 415
        Height = 128
        DataSource = DM.DSPTela
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
      inherited StatusBar1: TStatusBar
        Top = 129
        Width = 415
        ExplicitTop = 129
        ExplicitWidth = 415
      end
    end
  end
  inherited Imagens: TImageList
    Left = 376
    Top = 72
  end
  inherited DSDataSet: TDataSource
    DataSet = DM.MPTela
    Left = 376
    Top = 128
  end
end
