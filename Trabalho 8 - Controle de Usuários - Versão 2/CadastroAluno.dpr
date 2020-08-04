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
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFPesquisaTela, FPesquisaTela);
  Application.CreateForm(TFTelaBase, FTelaBase);
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
