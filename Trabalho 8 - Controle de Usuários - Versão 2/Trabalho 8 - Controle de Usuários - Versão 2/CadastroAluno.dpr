program CadastroAluno;

uses
  Vcl.Forms,
  UTelaBase in 'tela-base\UTelaBase.pas' {FTelaBase},
  UTela in 'crud-telas\UTela.pas' {FTela},
  UUsuario in 'crud-usuarios\UUsuario.pas' {FUsuario},
  UPrincipal in 'login\UPrincipal.pas' {FLogin},
  UMenu in 'menu\UMenu.pas' {FMenu},
  UPesquisarTela in 'pesquisa-tela\UPesquisarTela.pas' {FPesquisaTela},
  UDM in 'UDM\UDM.pas' {DM: TDataModule},
  UAluno in 'crud-alunos\UAluno.pas' {FAluno};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFPesquisaTela, FPesquisaTela);
  Application.CreateForm(TFTelaBase, FTelaBase);
  Application.Run;
end.
