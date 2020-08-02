unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Data.DB, UDM;

type
  TFMenu = class(TForm)
    MainMenu1: TMainMenu;
    Configurao1: TMenuItem;
    Cadastros1: TMenuItem;
    MIUsuarios: TMenuItem;
    MITela: TMenuItem;
    MIAlunos: TMenuItem;
    Sair1: TMenuItem;
    procedure MIAlunosClick(Sender: TObject);
    procedure MIUsuariosClick(Sender: TObject);
    procedure MITelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure acessarTela(tela: String);
    procedure verificarPermissao();
  private
    { Private declarations }
  public
    idUsuarioLogado: Integer;
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation
uses UAluno, UUsuario, UTela;

{$R *.dfm}
procedure TFMenu.FormShow(Sender: TObject);
begin
  DM.QUserTela.Parameters.ParamByName('id').Value := idUsuarioLogado;
  DM.QUserTela.Open;
end;

procedure TFMenu.acessarTela(Tela : String);
begin
  DM.QPTela.Close;
  DM.QPTela.SQL.Clear;
  DM.QPTela.SQL.Text := 'select id from tela where name like :name';
  DM.QPTela.Parameters.ParamByName('name').Value := Tela;
  DM.QPTela.Open;
end;

procedure TFMenu.verificarPermissao();
begin
  DM.QRelUserTela.Close;
  DM.QRelUserTela.SQL.Clear;
  DM.QRelUserTela.SQL.Text := 'select * from rel_usuario_tela where idTela = :idTela and idUsuario = :idUsuario';
  DM.QRelUserTela.Parameters.ParamByName('idTela').Value := DM.QPTela.FieldByName('id').AsInteger;
  DM.QRelUserTela.Parameters.ParamByName('idUsuario').Value := idUsuarioLogado;
  DM.QRelUserTela.Open;
end;

procedure TFMenu.MIAlunosClick(Sender: TObject);
begin
  acessarTela('FAluno');
  verificarPermissao();

  if not(DM.QRelUserTela.IsEmpty) then begin
    FAluno.ShowModal;
  end
  else
    ShowMessage('Usuário sem permissão de acesso!');
end;

procedure TFMenu.MITelaClick(Sender: TObject);
begin
  acessarTela('FTela');
  verificarPermissao();
  DM.QPTela.SQL.Text := 'select * from tela';

  if not(DM.QRelUserTela.IsEmpty) then begin
    FTela.ShowModal;
  end
  else
    ShowMessage('Usuário sem permissão de acesso!');
end;

procedure TFMenu.MIUsuariosClick(Sender: TObject);
begin
  acessarTela('FUsuario');
  verificarPermissao();

  if not(DM.QRelUserTela.IsEmpty) then begin
    FUsuario.ShowModal;
  end
  else
    ShowMessage('Usuário sem permissão de acesso!');
end;

procedure TFMenu.Sair1Click(Sender: TObject);
begin
  FMenu.Close;
end;

end.
