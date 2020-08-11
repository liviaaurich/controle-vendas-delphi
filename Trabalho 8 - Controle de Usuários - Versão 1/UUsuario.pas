unit UUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, UDM, Vcl.Buttons, UPesquisarTela;

type
  TFUsuario = class(TFTelaBase)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    btnAddTela: TSpeedButton;
    btnRemoveTela: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnAddTelaClick(Sender: TObject);
    procedure btnRemoveTelaClick(Sender: TObject);
  private
    procedure atualizarTabelaTelas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuario: TFUsuario;

implementation
{$R *.dfm}

procedure TFUsuario.btnAddTelaClick(Sender: TObject);
begin
  inherited;
  if(DSDataSet.DataSet.FieldByName('id').Value > 0) then
  begin
    FPesquisaTela.ShowModal;

    atualizarTabelaTelas;
  end;
end;

procedure TFUsuario.btnRemoveTelaClick(Sender: TObject);
var
  queryAnterior: string;
begin
  inherited;
  queryAnterior := DM.QRelUserTela.SQL.Text;
  if Application.MessageBox(PChar ('Deseja excluir o registro?'), 'Exclusão', MB_YESNO + MB_ICONWARNING) = ID_YES then
  begin
    DM.QRelUserTela.Close;
    DM.QRelUserTela.SQL.Clear;
    DM.QRelUserTela.SQL.Text := 'delete from rel_usuario_tela where idTela = :idTela and idUsuario = :idUsuario';
    DM.QRelUserTela.Parameters.ParamByName('idTela').Value := DM.DSUserTela.DataSet.FieldByName('idTela').Value;
    DM.QRelUserTela.Parameters.ParamByName('idUsuario').Value := DSDataSet.DataSet.FieldByName('id').Value;
    DM.QRelUserTela.ExecSQL;
  end;
  DM.QRelUserTela.SQL.Text := queryAnterior;
  atualizarTabelaTelas;
end;

procedure TFUsuario.atualizarTabelaTelas();
begin
  DSDataSet.DataSet.Close;
  DBGrid1.DataSource.DataSet.Close;
  DSDataSet.DataSet.Open;
  DBGrid1.DataSource.DataSet.Open;
end;

procedure TFUsuario.FormShow(Sender: TObject);
begin
  inherited;
  DSDataSet.DataSet.Open;

  DM.MUsuarios.Close;
  DM.MUsuarios.Open;

  DM.MUserTela.Close;
  DM.MUserTela.Open;
end;

Initialization

RegisterClass(TFUsuario);

Finalization

UnRegisterClass(TFUsuario);

end.

