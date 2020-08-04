unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, UDM;

type
  TFLogin = class(TForm)
    DSDataSet: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    btnEntrar: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}
uses UMenu;

procedure TFLogin.btnEntrarClick(Sender: TObject);
begin
  DSDataSet.DataSet.Close;
  DSDataSet.DataSet.Open;
  try
    if (DSDataSet.DataSet.Locate('login;senha', VarArrayOf([Edit1.Text, Edit2.Text]), [])) then
    begin
      FMenu.ShowModal;
    end
    else
    begin
      ShowMessage('Login/Senha incorretos.');
    end;

  Except
    ShowMessage('Ocorreu algum erro, para mais informações contate o administrador do sistema.');
  end;
end;

procedure TFLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DSDataSet.DataSet.Close;
  Action := caFree;
  TFLogin(Sender) := Nil;
end;

procedure TFLogin.FormShow(Sender: TObject);
begin
  DSDataSet.DataSet.Open;
end;

end.
