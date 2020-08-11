unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    DBConnection: TADOConnection;
    QAluno: TADOQuery;
    MAluno: TClientDataSet;
    PAluno: TDataSetProvider;
    MAlunoidAluno: TAutoIncField;
    MAlunonome: TStringField;
    MAlunocidade: TStringField;
    MAlunoestado: TStringField;
    MAlunodtNascimento: TDateTimeField;
    MAlunocpf: TStringField;
    MAlunomatricula: TStringField;
    MAlunosexo: TStringField;
    MAlunoobservacoes: TMemoField;
    MAlunobolsista: TBooleanField;
    MAlunobolsa: TFloatField;
    QUsuarios: TADOQuery;
    PUsuarios: TDataSetProvider;
    MUsuarios: TClientDataSet;
    MUsuariosid: TAutoIncField;
    MUsuarioslogin: TStringField;
    MUsuariossenha: TStringField;
    MUsuariosemail: TStringField;
    PPTela: TDataSetProvider;
    MPTela: TClientDataSet;
    DSPTela: TDataSource;
    QPTela: TADOQuery;
    QUserTela: TADOQuery;
    PUserTela: TDataSetProvider;
    DSUserTela: TDataSource;
    MUserTela: TClientDataSet;
    MPTelaid: TAutoIncField;
    MPTelaname: TStringField;
    MPTeladescricao: TStringField;
    QNotUserTela: TADOQuery;
    PNotUserTela: TDataSetProvider;
    MNotUserTela: TClientDataSet;
    DSNotUserTela: TDataSource;
    MNotUserTelaid: TAutoIncField;
    MNotUserTelaname: TStringField;
    MNotUserTeladescricao: TStringField;
    QRelUserTela: TADOQuery;
    PRelUserTela: TDataSetProvider;
    MRelUserTela: TClientDataSet;
    DSRelUserTela: TDataSource;
    MRelUserTelaidUsuario: TIntegerField;
    MRelUserTelaidTela: TIntegerField;
    MUserTelaidUsuario: TIntegerField;
    MUserTelaidTela: TIntegerField;
    MUserTelaname: TStringField;
    MUserTeladescricao: TStringField;
    MRelUserTelainserir: TBooleanField;
    MRelUserTelaalterar: TBooleanField;
    MRelUserTelaexcluir: TBooleanField;
    MRelUserTelaimprimir: TBooleanField;
    QLogin: TADOQuery;
    PLogin: TDataSetProvider;
    MLogin: TClientDataSet;
    MLoginid: TAutoIncField;
    MLoginlogin: TStringField;
    MLoginsenha: TStringField;
    MLoginemail: TStringField;
    DSLogin: TDataSource;
    QPermissoes: TADOQuery;
    PPermissoes: TDataSetProvider;
    MPermissoes: TClientDataSet;
    DSPermissoes: TDataSource;
    MPermissoesidUsuario: TIntegerField;
    MPermissoesidTela: TIntegerField;
    MPermissoesname: TStringField;
    MPermissoesinserir: TBooleanField;
    MPermissoesalterar: TBooleanField;
    MPermissoesexcluir: TBooleanField;
    MPermissoesimprimir: TBooleanField;
    MUserTelainserir: TBooleanField;
    MUserTelaalterar: TBooleanField;
    MUserTelaexcluir: TBooleanField;
    MUserTelaimprimir: TBooleanField;
    procedure MAlunoAfterPost(DataSet: TDataSet);
    procedure MAlunoAfterDelete(DataSet: TDataSet);
    procedure MAlunoAfterCancel(DataSet: TDataSet);
    procedure MAlunoAfterInsert(DataSet: TDataSet);
    procedure DBConnectionBeforeConnect(Sender: TObject);
    procedure MUsuariosAfterPost(DataSet: TDataSet);
    procedure MUsuariosAfterDelete(DataSet: TDataSet);
    procedure MUsuariosAfterCancel(DataSet: TDataSet);
    procedure MUsuariosAfterScroll(DataSet: TDataSet);
    procedure MPTelaAfterCancel(DataSet: TDataSet);
    procedure MPTelaAfterDelete(DataSet: TDataSet);
    procedure MPTelaAfterPost(DataSet: TDataSet);
    procedure MUserTelaAfterPost(DataSet: TDataSet);
    procedure MUserTelaAfterDelete(DataSet: TDataSet);
    procedure MUserTelaAfterCancel(DataSet: TDataSet);
    procedure QUserTelaBeforeOpen(DataSet: TDataSet);
    procedure QNotUserTelaBeforeOpen(DataSet: TDataSet);
    procedure MNotUserTelaAfterDelete(DataSet: TDataSet);
    procedure MNotUserTelaAfterPost(DataSet: TDataSet);
    procedure MNotUserTelaAfterCancel(DataSet: TDataSet);
    procedure MRelUserTelaAfterCancel(DataSet: TDataSet);
    procedure MRelUserTelaAfterDelete(DataSet: TDataSet);
    procedure MRelUserTelaAfterPost(DataSet: TDataSet);
    procedure QPermissoesBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DBConnectionBeforeConnect(Sender: TObject);
begin
  DBConnection.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";' +
                                   'Initial Catalog=Trabalho_05;Data Source=DESKTOP-RUDR7EI;Use Procedure for Prepare=1;' +
                                   'Auto Translate=True;Packet Size=4096;Workstation ID=DESKTOP-RUDR7EI;Initial File Name="";' +
                                   'Use Encryption for Data=False;Tag with column collation when possible=False;MARS Connection=False;' +
                                   'DataTypeCompatibility=0;Trust Server Certificate=False;Server SPN=DESKTOP-RUDR7EI;Application Intent=READWRITE;password="";';
end;

procedure TDM.MAlunoAfterCancel(DataSet: TDataSet);
begin
  MAluno.CancelUpdates;
end;

procedure TDM.MAlunoAfterDelete(DataSet: TDataSet);
begin
  MAluno.ApplyUpdates(-1);
end;

procedure TDM.MAlunoAfterInsert(DataSet: TDataSet);
begin
  MAlunomatricula.AsString := IntToStr(Random(777777777));
  MAlunobolsista.AsBoolean := false;
  MAlunoestado.AsString := 'ES';
end;

procedure TDM.MAlunoAfterPost(DataSet: TDataSet);
begin
  MAluno.ApplyUpdates(-1);
end;

procedure TDM.MNotUserTelaAfterCancel(DataSet: TDataSet);
begin
  MNotUserTela.CancelUpdates;
end;

procedure TDM.MNotUserTelaAfterDelete(DataSet: TDataSet);
begin
  MNotUserTela.ApplyUpdates(-1);
end;

procedure TDM.MNotUserTelaAfterPost(DataSet: TDataSet);
begin
  MNotUserTela.ApplyUpdates(-1);
end;

procedure TDM.MPTelaAfterCancel(DataSet: TDataSet);
begin
  MPTela.CancelUpdates;
end;

procedure TDM.MPTelaAfterDelete(DataSet: TDataSet);
begin
  MPTela.ApplyUpdates(-1);
end;

procedure TDM.MPTelaAfterPost(DataSet: TDataSet);
begin
  MPTela.ApplyUpdates(-1);
end;

procedure TDM.MRelUserTelaAfterCancel(DataSet: TDataSet);
begin
  MRelUserTela.CancelUpdates;
end;

procedure TDM.MRelUserTelaAfterDelete(DataSet: TDataSet);
begin
  MRelUserTela.ApplyUpdates(-1);
  QRelUserTela.Close;
  MRelUserTela.Close;

  QRelUserTela.Open;
  MRelUserTela.Open;
end;

procedure TDM.MRelUserTelaAfterPost(DataSet: TDataSet);
begin
  MRelUserTela.ApplyUpdates(-1);
  QRelUserTela.Close;
  MRelUserTela.Close;

  QRelUserTela.Open;
  MRelUserTela.Open;
end;

procedure TDM.MUserTelaAfterCancel(DataSet: TDataSet);
begin
  MUserTela.CancelUpdates;
end;

procedure TDM.MUserTelaAfterDelete(DataSet: TDataSet);
begin
  MUserTela.ApplyUpdates(-1);
end;

procedure TDM.MUserTelaAfterPost(DataSet: TDataSet);
begin
  MUserTela.ApplyUpdates(-1);
end;

procedure TDM.MUsuariosAfterCancel(DataSet: TDataSet);
begin
  MUsuarios.CancelUpdates;
end;

procedure TDM.MUsuariosAfterDelete(DataSet: TDataSet);
begin
  MUsuarios.ApplyUpdates(-1);
end;

procedure TDM.MUsuariosAfterPost(DataSet: TDataSet);
begin
  MUsuarios.ApplyUpdates(-1);
end;

procedure TDM.MUsuariosAfterScroll(DataSet: TDataSet);
begin
  QUserTela.Close;
  MUserTela.Close;

  QUserTela.Open;
  MUserTela.Open;
end;

procedure TDM.QNotUserTelaBeforeOpen(DataSet: TDataSet);
begin
  QNotUserTela.Parameters[0].Value := MUsuariosid.AsInteger;
end;

procedure TDM.QPermissoesBeforeOpen(DataSet: TDataSet);
begin
  QPermissoes.Parameters[0].Value := MLoginid.AsInteger;
end;

procedure TDM.QUserTelaBeforeOpen(DataSet: TDataSet);
begin
  QUserTela.Parameters[0].Value := MUsuariosid.AsInteger;
end;
end.
