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
  DM.QUsuarios.SQL.Clear;
  DM.QUsuarios.SQL.Text := 'select * from usuarios where login like :login and senha like :senha';
  DM.QUsuarios.Parameters.ParamByName('login').Value := Edit1.Text;
  DM.QUsuarios.Parameters.ParamByName('senha').Value := Edit2.Text;

  try
    DM.QUsuarios.Open;
    if not(DM.QUsuarios.IsEmpty) then
    begin
      FMenu.idUsuarioLogado := DM.QUsuarios.FieldByName('id').AsInteger;
      DM.QUsuarios.SQL.Text := 'select * from usuarios';
      FMenu.ShowModal;
    end
    else
    begin
      ShowMessage('Login/Senha incorretos.');
      DM.QUsuarios.SQL.Clear;
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
