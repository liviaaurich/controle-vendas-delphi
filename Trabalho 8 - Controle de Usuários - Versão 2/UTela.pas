unit UTela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaBase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, UDM, Vcl.Mask, Vcl.DBCtrls;

type
  TFTela = class(TFTelaBase)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTela: TFTela;

implementation

{$R *.dfm}

procedure TFTela.FormShow(Sender: TObject);
begin
  inherited;
  DM.QPTela.Close;
  DM.QPTela.SQL.Clear;
  DM.QPTela.SQL.Text := 'select * from tela';
  DM.QPTela.Open;
  DM.MPTela.Close;
  DM.MPTela.Open;
end;

end.
