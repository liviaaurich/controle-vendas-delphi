unit UTelaBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, UDM;

type
  TFTelaBase = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    Imagens: TImageList;
    DSDataSet: TDataSource;
    GCabecalho: TGroupBox;
    PageControl: TPageControl;
    tbInfo: TTabSheet;
    tbFiltros: TTabSheet;
    GInfo: TGroupBox;
    GFiltros: TGroupBox;
    GDataSet: TDBGrid;
    StatusBar1: TStatusBar;
    btnNovo: TToolButton;
    btnEditar: TToolButton;
    btnSalvar: TToolButton;
    btnExcluir: TToolButton;
    btnCancelar: TToolButton;
    btnImprimir: TToolButton;
    ToolButton9: TToolButton;
    btnPesquisar: TToolButton;
    ToolButton11: TToolButton;
    btnSair: TToolButton;
    procedure DSDataSetStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure GDataSetDblClick(Sender: TObject);

  private
    function VerificaPermissao(hint: String): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTelaBase: TFTelaBase;

implementation

{$R *.dfm}

procedure TFTelaBase.btnCancelarClick(Sender: TObject);
begin
  ActiveControl := Nil;
  if not (Sender is TFTelaBase) then
    if Application.MessageBox('Deseja realmente cancelar o registro atual?', 'Cancelar', MB_YESNO + MB_ICONQUESTION) = ID_YES then
    begin
      DSDataSet.DataSet.Cancel;
    end;
end;

procedure TFTelaBase.btnEditarClick(Sender: TObject);
begin
  if DSDataSet.DataSet.Active then
  begin
    if not DSDataSet.DataSet.IsEmpty then
    begin
      DSDataSet.DataSet.Edit;
      PageControl.ActivePageIndex := 0;
    end
    else
      ShowMessage('Não há registros a alterar!');
  end;
end;

procedure TFTelaBase.btnExcluirClick(Sender: TObject);
begin
  if DSDataSet.DataSet.Active then
  begin
    if not DSDataSet.DataSet.IsEmpty then
    begin
      if Application.MessageBox(PChar ('Deseja excluir o registro?'), 'Exclusão', MB_YESNO + MB_ICONWARNING) = ID_YES then
        DSDataSet.DataSet.Delete;
    end
    else
      ShowMessage('Não há registros a excluir!');
  end;
end;

procedure TFTelaBase.btnImprimirClick(Sender: TObject);
begin
  if (DSDataSet.DataSet.IsEmpty) or (not DSDataSet.DataSet.Active) then
  begin
    ShowMessage('Não há registros a imprimir!');
    Abort;
  end;
end;

procedure TFTelaBase.btnNovoClick(Sender: TObject);
begin
  if ActiveControl = GDataSet then
    ActiveControl := Nil;

  if not DSDataSet.DataSet.Active then
    DSDataSet.DataSet.Open;

  DSDataSet.DataSet.Append;
  PageControl.ActivePageIndex := 0;
end;

procedure TFTelaBase.btnPesquisarClick(Sender: TObject);
begin
  ActiveControl := Nil;

  try
    PageControl.SetFocus;
  Except
  end;

  DSDataSet.DataSet.Close;
  DSDataSet.DataSet.Open;

  StatusBar1.Panels[0].Text := IntToStr(DSDataSet.DataSet.RecordCount)
end;

procedure TFTelaBase.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFTelaBase.btnSalvarClick(Sender: TObject);
begin
  ActiveControl := Nil;
  DSDataSet.DataSet.Post;

  btnPesquisarClick(btnPesquisar);
end;

procedure TFTelaBase.DSDataSetStateChange(Sender: TObject);
begin
  // Libera Campos
  tbFiltros.TabVisible := DSDataSet.Dataset.State in [dsBrowse, dsInactive];
  GFiltros.Enabled     := DSDataSet.Dataset.State in dsEditModes;
  GInfo.Enabled        := DSDataSet.DataSet.State in dsEditModes;
  GCabecalho.Enabled   := DSDataSet.DataSet.State in dsEditModes;

  // Habilita/desabilita botões
  btnCancelar.Enabled  := (DSDataSet.DataSet.State in dsEditModes);
  btnPesquisar.Enabled := not(DSDataSet.DataSet.State in dsEditModes);
  btnSair.Enabled      := not(DSDataSet.DataSet.State in dsEditModes);

  btnNovo.Enabled      := not(DSDataSet.DataSet.State in dsEditModes) and VerificaPermissao(btnNovo.Hint);
  btnEditar.Enabled    := not(DSDataSet.DataSet.State in dsEditModes) and not(DSDataSet.DataSet.IsEmpty) and VerificaPermissao(btnEditar.Hint);
  btnSalvar.Enabled    :=    (DSDataSet.DataSet.State in dsEditModes) and (VerificaPermissao(btnEditar.Hint) or VerificaPermissao(btnNovo.Hint));
  btnExcluir.Enabled   := not(DSDataSet.DataSet.State in dsEditModes) and not(DSDataSet.DataSet.IsEmpty) and VerificaPermissao(btnExcluir.Hint);
  btnImprimir.Enabled  := not(DSDataSet.DataSet.State in dsEditModes) and VerificaPermissao(btnImprimir.Hint);

end;

function TFTelaBase.VerificaPermissao(hint: String): Boolean;
begin
  Result := DM.MPermissoes.Locate(hint + ';name', VarArrayOf([1, Self.Name]), []);
end;

procedure TFTelaBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DSDataSet.DataSet.Close;
//  Action := caFree;
//  TFTelaBase(Sender) := Nil;
end;

procedure TFTelaBase.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DSDataSet.State in dsEditModes then
    if Application.MessageBox('Deseja gravar as alterações?', pChar(Application.Title), MB_YESNO + MB_ICONQUESTION) = ID_YES then
      btnSalvarClick(btnSalvar)
    else
      btnCancelarClick(btnCancelar);

end;

procedure TFTelaBase.FormCreate(Sender: TObject);
begin
  TFTelaBase(Sender) := Self;
end;

procedure TFTelaBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_RETURN)
    and not (ActiveControl is TDBGrid)
    and not (ActiveControl is TMemo) then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFTelaBase.FormShow(Sender: TObject);
begin
  DSDataSetStateChange(DSDataSet);
  PageControl.ActivePage := tbFiltros;
  DSDataSet.DataSet.Open;
end;

procedure TFTelaBase.GDataSetDblClick(Sender: TObject);
begin
  PageControl.TabIndex := 0;
  PageControl.ActivePage := tbInfo;
end;

end.
