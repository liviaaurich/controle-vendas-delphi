unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Data.DB, UDM;

type
  TFMenu = class(TForm)
    MMenu: TMainMenu;
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
    procedure verificarPermissao();
    procedure FormCreate(Sender: TObject);
    procedure abrirForm(nome: string);
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
procedure TFMenu.FormCreate(Sender: TObject);
begin
  FormShow(nil);
end;

procedure TFMenu.FormShow(Sender: TObject);
begin
  idUsuarioLogado := DM.MLoginid.Value;
  verificarPermissao();
end;

procedure TFMenu.verificarPermissao();
begin
  DM.MPermissoes.Close;
  DM.QPermissoes.Close;
  DM.QPermissoes.Parameters.ParamByName('id').Value := DM.MLoginid.Value;
  DM.QPermissoes.Open;
  DM.MPermissoes.Open;

  FMenu.MIUsuarios.Visible := DM.MPermissoes.Locate('name', VarArrayOf([FMenu.MIUsuarios.Hint]), []);
  FMenu.MITela.Visible := DM.MPermissoes.Locate('name', VarArrayOf([FMenu.MITela.Hint]), []);
  FMenu.MIAlunos.Visible := DM.MPermissoes.Locate('name', VarArrayOf([FMenu.MIAlunos.Hint]), []);
end;

procedure TFMenu.MIAlunosClick(Sender: TObject);
begin
  abrirForm(FMenu.MIAlunos.Hint);
  verificarPermissao();
end;

procedure TFMenu.MITelaClick(Sender: TObject);
begin
  abrirForm(FMenu.MITela.Hint);
  verificarPermissao();
end;

procedure TFMenu.MIUsuariosClick(Sender: TObject);
begin
  abrirForm(FMenu.MIUsuarios.Hint);
  verificarPermissao();
end;

procedure TFMenu.Sair1Click(Sender: TObject);
begin
  FMenu.Close;
end;

procedure TFMenu.abrirForm(nome: string);
var
  persistentClass: TPersistentClass;
begin
  persistentClass := Getclass('T' + trim(nome));
  if (persistentClass <> nil) then
  begin
    with tFormClass(persistentClass).Create(Application) do
      try
        Name := nome;
        ShowModal;
      finally
        Free;
        tFormClass(persistentClass) := nil;
      end;
  end;

end;

end.
