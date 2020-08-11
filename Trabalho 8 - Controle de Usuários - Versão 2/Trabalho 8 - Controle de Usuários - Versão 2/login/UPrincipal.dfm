object FLogin: TFLogin
  Left = 0
  Top = 0
  ActiveControl = btnEntrar
  Caption = 'Acesso'
  ClientHeight = 164
  ClientWidth = 282
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
  object Label1: TLabel
    Left = 40
    Top = 13
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object btnEntrar: TButton
    Left = 166
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 0
    OnClick = btnEntrarClick
  end
  object Edit1: TEdit
    Left = 40
    Top = 32
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 40
    Top = 83
    Width = 201
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object DSDataSet: TDataSource
    DataSet = DM.MLogin
    Left = 36
    Top = 112
  end
end
