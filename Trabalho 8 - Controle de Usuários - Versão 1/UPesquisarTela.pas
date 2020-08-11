unit UPesquisarTela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFPesquisaTela = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DSDataSet: TDataSource;
    btnSelect: TButton;
    cbIncluir: TCheckBox;
    cbAlterar: TCheckBox;
    cbExcluir: TCheckBox;
    cbImprimir: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    idTela: Integer;
    isIncluir: Boolean;
    isAlterar: Boolean;
    isExcluir: Boolean;
    isImprimir: Boolean;
    { Public declarations }
  end;

var
  FPesquisaTela: TFPesquisaTela;

implementation

{$R *.dfm}

procedure TFPesquisaTela.btnSelectClick(Sender: TObject);
begin
  if(not DSDataSet.DataSet.IsEmpty) then begin
    DM.MRelUserTela.Close;
    DM.MRelUserTela.Open;

    DM.MRelUserTela.Append;
    DM.MRelUserTelaidUsuario.AsInteger := DM.MUsuarios.FieldByName('id').Value;
    DM.MRelUserTelaidTela.AsInteger := DSDataSet.DataSet.FieldByName('id').Value;
    DM.MRelUserTelainserir.AsBoolean := cbIncluir.Checked;
    DM.MRelUserTelaalterar.AsBoolean := cbAlterar.Checked;
    DM.MRelUserTelaexcluir.AsBoolean := cbExcluir.Checked;
    DM.MRelUserTelaimprimir.AsBoolean := cbImprimir.Checked;

    DM.MRelUserTela.Post;

    FPesquisaTela.Close;
  end
  else
    ShowMessage('Selecione um registro para executar a ação!');
end;

procedure TFPesquisaTela.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DSDataSet.DataSet.Close;

end;

procedure TFPesquisaTela.FormShow(Sender: TObject);
begin
  DSDataSet.DataSet.Close;
  DSDataSet.DataSet.Open;
end;

end.
