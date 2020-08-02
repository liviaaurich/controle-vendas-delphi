program CadastroAluno;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FLogin},
  UAluno in 'UAluno.pas' {FAluno},
  UUsuario in 'UUsuario.pas' {FUsuario},
  UDM in 'UDM.pas' {DM: TDataModule},
  UTela in 'UTela.pas' {FTela},
  UPesquisarTela in 'UPesquisarTela.pas' {FPesquisaTela},
  UTelaBase in 'UTelaBase.pas' {FTelaBase},
  UMenu in 'UMenu.pas' {FMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFAluno, FAluno);
  Application.CreateForm(TFUsuario, FUsuario);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFTela, FTela);
  Application.CreateForm(TFPesquisaTela, FPesquisaTela);
  Application.CreateForm(TFTelaBase, FTelaBase);
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
