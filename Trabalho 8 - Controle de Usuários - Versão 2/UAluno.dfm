inherited FAluno: TFAluno
  Caption = 'Cadastro de Alunos'
  ClientHeight = 484
  ClientWidth = 657
  Position = poMainFormCenter
  ExplicitWidth = 673
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 657
    ExplicitWidth = 735
    inherited ToolBar1: TToolBar
      Left = 456
      ExplicitLeft = 534
    end
  end
  inherited GCabecalho: TGroupBox
    Width = 657
    ExplicitWidth = 735
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 38
      Height = 13
      Caption = 'id Aluno'
      FocusControl = DBEdit1
    end
    object Label4: TLabel
      Left = 135
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 89
      Height = 21
      TabStop = False
      Color = 14024703
      DataField = 'idAluno'
      DataSource = DSDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 135
      Top = 40
      Width = 295
      Height = 21
      DataField = 'nome'
      DataSource = DSDataSet
      TabOrder = 0
    end
  end
  inherited PageControl: TPageControl
    Width = 657
    Height = 376
    ActivePage = tbInfo
    ExplicitWidth = 735
    ExplicitHeight = 376
    inherited tbInfo: TTabSheet
      ExplicitWidth = 727
      ExplicitHeight = 348
      inherited GInfo: TGroupBox
        Width = 649
        Height = 348
        ExplicitLeft = -3
        ExplicitTop = -3
        ExplicitWidth = 649
        ExplicitHeight = 348
        object Label5: TLabel
          Left = 136
          Top = 111
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit4
        end
        object Label6: TLabel
          Left = 392
          Top = 111
          Width = 33
          Height = 13
          Caption = 'Estado'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 136
          Top = 64
          Width = 55
          Height = 13
          Caption = 'Nascimento'
          FocusControl = DBEdit6
        end
        object Label8: TLabel
          Left = 320
          Top = 13
          Width = 19
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEdit7
        end
        object Label9: TLabel
          Left = 136
          Top = 13
          Width = 43
          Height = 13
          Caption = 'Matr'#237'cula'
          FocusControl = DBEdit8
        end
        object Label10: TLabel
          Left = 320
          Top = 64
          Width = 24
          Height = 13
          Caption = 'Sexo'
          FocusControl = DBEdit9
        end
        object Label11: TLabel
          Left = 136
          Top = 208
          Width = 63
          Height = 13
          Caption = 'Observa'#231#245'es'
          FocusControl = DBMemo1
        end
        object Label12: TLabel
          Left = 251
          Top = 160
          Width = 25
          Height = 13
          Caption = 'Bolsa'
          FocusControl = DBEdit10
        end
        object DBEdit4: TDBEdit
          Left = 136
          Top = 130
          Width = 217
          Height = 21
          DataField = 'cidade'
          DataSource = DSDataSet
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 392
          Top = 130
          Width = 114
          Height = 21
          DataField = 'estado'
          DataSource = DSDataSet
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 136
          Top = 80
          Width = 134
          Height = 21
          DataField = 'dtNascimento'
          DataSource = DSDataSet
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 320
          Top = 32
          Width = 186
          Height = 21
          DataField = 'cpf'
          DataSource = DSDataSet
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 136
          Top = 32
          Width = 134
          Height = 21
          TabStop = False
          Color = 14024703
          DataField = 'matricula'
          DataSource = DSDataSet
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 320
          Top = 80
          Width = 186
          Height = 21
          DataField = 'sexo'
          DataSource = DSDataSet
          TabOrder = 3
        end
        object DBMemo1: TDBMemo
          Left = 136
          Top = 224
          Width = 370
          Height = 97
          DataField = 'observacoes'
          DataSource = DSDataSet
          TabOrder = 8
        end
        object DBCheckBox1: TDBCheckBox
          Left = 136
          Top = 179
          Width = 97
          Height = 17
          Caption = 'Bolsista'
          DataField = 'bolsista'
          DataSource = DSDataSet
          TabOrder = 6
          OnClick = DBCheckBox1Click
        end
        object DBEdit10: TDBEdit
          Left = 219
          Top = 176
          Width = 134
          Height = 21
          DataField = 'bolsa'
          DataSource = DSDataSet
          ReadOnly = True
          TabOrder = 7
        end
      end
    end
    inherited tbFiltros: TTabSheet
      ExplicitWidth = 727
      ExplicitHeight = 348
      inherited GFiltros: TGroupBox
        Width = 649
        ExplicitWidth = 727
      end
      inherited GDataSet: TDBGrid
        Width = 649
        Height = 240
      end
      inherited StatusBar1: TStatusBar
        Top = 329
        Width = 649
        ExplicitTop = 329
        ExplicitWidth = 727
      end
    end
  end
  inherited Imagens: TImageList
    Left = 528
  end
  inherited DSDataSet: TDataSource
    DataSet = DM.MAluno
    Left = 592
  end
end
