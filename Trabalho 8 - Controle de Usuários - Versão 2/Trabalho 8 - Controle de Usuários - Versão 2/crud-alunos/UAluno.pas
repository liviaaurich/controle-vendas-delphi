unit UAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFAluno = class(TFTelaBase)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAluno: TFAluno;

implementation

{$R *.dfm}

procedure TFAluno.btnNovoClick(Sender: TObject);
begin
  inherited;
  DBEdit3.SetFocus;
end;

procedure TFAluno.DBCheckBox1Click(Sender: TObject);
begin
  inherited;
  DBEdit10.ReadOnly := not DBEdit10.ReadOnly;
  DBEdit10.Clear();
end;

Initialization

RegisterClass(TFAluno);

Finalization

UnRegisterClass(TFAluno);

end.
