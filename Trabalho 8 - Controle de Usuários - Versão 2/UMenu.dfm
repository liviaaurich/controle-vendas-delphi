object FMenu: TFMenu
  Left = 0
  Top = 0
  Caption = 'FMenu'
  ClientHeight = 253
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 72
    Top = 48
    object Configurao1: TMenuItem
      Caption = 'Configura'#231#227'o'
      object MIUsuarios: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = MIUsuariosClick
      end
      object MITela: TMenuItem
        Caption = 'Tela'
        OnClick = MITelaClick
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object MIAlunos: TMenuItem
        Caption = 'Alunos'
        OnClick = MIAlunosClick
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
