inherited FUsuario: TFUsuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 462
  ClientWidth = 585
  Position = poMainFormCenter
  ExplicitWidth = 601
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 585
    ExplicitWidth = 585
    inherited ToolBar1: TToolBar
      Left = 384
      ExplicitLeft = 384
    end
  end
  inherited GCabecalho: TGroupBox
    Width = 585
    Height = 0
    ExplicitWidth = 585
    ExplicitHeight = 0
  end
  inherited PageControl: TPageControl
    Top = 23
    Width = 585
    Height = 439
    ExplicitTop = 23
    ExplicitWidth = 585
    ExplicitHeight = 439
    inherited tbInfo: TTabSheet
      ExplicitWidth = 577
      ExplicitHeight = 411
      inherited GInfo: TGroupBox
        Top = 193
        Width = 577
        Height = 218
        ExplicitTop = 193
        ExplicitWidth = 577
        ExplicitHeight = 218
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 577
        Height = 129
        Align = alTop
        Caption = 'Dados'
        TabOrder = 1
        object Label3: TLabel
          Left = 40
          Top = 21
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 400
          Top = 21
          Width = 30
          Height = 13
          Caption = 'Senha'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 40
          Top = 72
          Width = 28
          Height = 13
          Caption = 'E-mail'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 40
          Top = 40
          Width = 36
          Height = 21
          Color = 14024703
          DataField = 'id'
          DataSource = DSDataSet
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 88
          Top = 40
          Width = 297
          Height = 21
          DataField = 'login'
          DataSource = DSDataSet
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 400
          Top = 40
          Width = 137
          Height = 21
          DataField = 'senha'
          DataSource = DSDataSet
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 40
          Top = 91
          Width = 345
          Height = 21
          DataField = 'email'
          DataSource = DSDataSet
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 129
        Width = 577
        Height = 64
        Align = alTop
        Caption = 'Telas'
        TabOrder = 2
        object btnAddTela: TSpeedButton
          Left = 40
          Top = 24
          Width = 89
          Height = 24
          Caption = ' Adiconar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000130B0000130B00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000600000012000000210000002A0000002A0000
            0021000000120000000600000000000000000000000000000000000000000000
            0000000000010000000C0000002E1575329C229A48DB2DB657FF2DB657FF229B
            48DD1575329C0000002E0000000C000000010000000000000000000000000000
            00000000000C1A833A882EB758FF59C77AFF68CE85FF69D385FF68D384FF69CE
            86FF59C77AFF2EB758FF1A833A880000000C0000000000000000000000000000
            00061D8C418138BB60FF72D58CFF58D179FF44CB69FF3CC963FF3CC963FF44CB
            69FF58D179FF72D58CFF38BB60FF1D8C41810000000600000000000000000014
            00192EB758FF74D690FF51D274FF41CC68FF40CC66FF40CC66FF40CC66FF40CC
            66FF41CC68FF51D274FF74D690FF2EB758FF0014001900000000000000001F95
            46825ECA7EFF63D983FF48D26EFF46D26DFF46D26DFFFFFFFFFFFFFFFFFF46D2
            6DFF46D26DFF48D26EFF63D983FF5ECA7EFF1F954682000000000000000029AC
            51CF76DB92FF58DB7CFF4ED873FF4ED873FF4ED873FFFFFFFFFFFFFFFFFF4ED8
            73FF4ED873FF4ED873FF58DB7CFF76DB92FF29AC51CF00000000000000002CB4
            55FA81E69CFF58DD7EFF55DD7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF55DD7BFF58DF7EFF80E49BFF2BB456F500000000000000002CB4
            55FA85EAA1FF61E485FF5EE483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF5EE483FF61E485FF86ECA1FF2CB455FA00000000000000002BB0
            54C781E39CFF6FEE91FF65EC8AFF3CC963FF3CC963FFFFFFFFFFFFFFFFFF3CC9
            63FF3CC963FF65EC8AFF6FEE91FF81E39CFF2BB054C700000000000000002BB0
            526F64D184FF82F6A1FF6DF292FF6CF291FF6CF291FFFFFFFFFFFFFFFFFF6CF2
            91FF6CF291FF6DF292FF82F6A1FF64D184FF2BB0526F00000000000000002AAA
            550630B75AFF8FEEA8FF80FC9FFF73F998FF73F997FF3CC963FF3CC963FF73F9
            97FF73F998FF80FC9FFF8FEEA8FF30B75AFF2AAA550600000000000000000000
            00002BB4566A3BBD63FF8FF1A9FF8CFFA9FF80FFA0FF79FF9CFF79FF9CFF80FF
            A0FF8CFFA9FF8FF1A9FF3BBD63FF2BB4566A0000000000000000000000000000
            0000000000002DB6576630B75AFF67D386FF8AECA5FF9BFFB5FF9BFFB5FF8AEC
            A5FF67D386FF30B75AFF2DB65766000000000000000000000000000000000000
            000000000000000000002AAA55062CB5576C2DB557C02DB657F92DB657F92DB5
            57C02CB5576C2AAA550600000000000000000000000000000000}
          OnClick = btnAddTelaClick
        end
        object btnRemoveTela: TSpeedButton
          Left = 144
          Top = 24
          Width = 89
          Height = 24
          Caption = '  Excluir'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000130B0000130B00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000600000012000000210000002A0000002A0000
            0021000000120000000600000000000000000000000000000000000000000000
            0000000000010000000C0000002E1B41879C295AB2DB356CCFFF356CCFFF295B
            B2DD1B41879C0000002E0000000C000000010000000000000000000000000000
            00000000000C1F4B9788376ED0FF6793E2FF78A2E9FF79A6EDFF78A6EDFF79A3
            E9FF6793E2FF376ED0FF1F4B97880000000C0000000000000000000000000000
            00062551A2814176D4FF82ACEFFF6699EAFF5089E5FF4683E3FF4683E3FF5089
            E5FF6699EAFF82ACEFFF4176D4FF2551A2810000000600000000000000000000
            1419376ED0FF86ADF0FF5E94EBFF4C87E6FF4A86E6FF4A86E6FF4A86E6FF4A86
            E6FF4C87E6FF5E94EBFF86ADF0FF376ED0FF0000141900000000000000002756
            AC826C97E4FF72A3F3FF538DEBFF518CEBFF518CEBFF518CEBFF518CEBFF518C
            EBFF518CEBFF538DEBFF72A3F3FF6C97E4FF2756AC8200000000000000003166
            C3CF88AFF4FF669CF4FF5993F2FF5993F2FF5993F2FF5993F2FF5993F2FF5993
            F2FF5993F2FF5993F2FF669CF4FF88AFF4FF3166C3CF0000000000000000356C
            CEFA93BAFEFF669CF6FF6299F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF6299F6FF669CF8FF92B9FDFF3269CDF50000000000000000356C
            CEFA99BFFFFF70A4FDFF6CA2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF6CA2FDFF70A4FDFF9AC2FFFF356CCEFA00000000000000003369
            CAC794BAFBFF80B1FFFF74A9FFFF4683E3FF4683E3FF4683E3FF4683E3FF4683
            E3FF4683E3FF74A9FFFF80B1FFFF94BAFBFF3369CAC700000000000000003267
            C76F739EEAFF96BFFFFF7DAEFFFF7CAEFFFF7CAEFFFF7CAEFFFF7CAEFFFF7CAE
            FFFF7CAEFFFF7DAEFFFF96BFFFFF739EEAFF3267C76F00000000000000002A7F
            D406386ED0FFA4C8FFFF92BFFFFF84B5FFFF83B5FFFF83B5FFFF83B5FFFF83B5
            FFFF84B5FFFF92BFFFFFA4C8FFFF386ED0FF2A7FD40600000000000000000000
            00003269CC6A4579D7FFA4C8FFFFA1CAFFFF92C0FFFF8BBCFFFF8BBCFFFF92C0
            FFFFA1CAFFFFA4C8FFFF4579D7FF3269CC6A0000000000000000000000000000
            000000000000346BCF66386ED0FF77A2EDFF9EC3FFFFB2D5FFFFB2D5FFFF9EC3
            FFFF77A2EDFF386ED0FF346BCF66000000000000000000000000000000000000
            000000000000000000002A7FD406336CCF6C356BCFC0356BCEF9356BCEF9356B
            CFC0336CCF6C2A7FD40600000000000000000000000000000000}
          OnClick = btnRemoveTelaClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 193
        Width = 577
        Height = 218
        Align = alClient
        DataSource = DM.DSUserTela
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'idTela'
            Title.Caption = 'id Tela'
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
    end
    inherited tbFiltros: TTabSheet
      ExplicitWidth = 577
      ExplicitHeight = 411
      inherited GFiltros: TGroupBox
        Width = 577
        ExplicitWidth = 577
      end
      inherited GDataSet: TDBGrid
        Width = 577
        Height = 303
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'login'
            Title.Caption = 'Login'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'senha'
            Title.Caption = 'Senha'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'E-mail'
            Visible = True
          end>
      end
      inherited StatusBar1: TStatusBar
        Top = 392
        Width = 577
        ExplicitTop = 392
        ExplicitWidth = 577
      end
    end
  end
  inherited Imagens: TImageList
    Left = 440
    Top = 272
  end
  inherited DSDataSet: TDataSource
    DataSet = DM.MUsuarios
    Left = 512
    Top = 272
  end
end
