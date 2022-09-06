unit ubuscaexccli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfbuscaexccli = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btlimpar: TBitBtn;
    btfechar: TBitBtn;
    DBGrid1: TDBGrid;
    q5: TFDQuery;
    DataSource1: TDataSource;
    q5ID_ANIMAIS: TIntegerField;
    q5NOME: TStringField;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btlimparClick(Sender: TObject);
    procedure btfecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbuscaexccli: Tfbuscaexccli;

implementation

{$R *.dfm}

Uses utabelas, uexccli;

procedure Tfbuscaexccli.btfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfbuscaexccli.btlimparClick(Sender: TObject);
begin
  edit1.Clear;
  edit1.SetFocus;
  q5.Close;
end;

procedure Tfbuscaexccli.DBGrid1CellClick(Column: TColumn);
begin
  fexccli.edit1.Text := DBGrid1.Fields[0].Value;
  fexccli.edit1.SetFocus;
  fbuscaexccli.Close;
end;

procedure Tfbuscaexccli.Edit1Change(Sender: TObject);
begin
  with q5 do
  begin
    close;
    sql.Clear;
    sql.Add('select id_animais, nome from cadanimais where nome like ''%'+edit1.Text+'%''');
    open;
  end;
end;

procedure Tfbuscaexccli.FormActivate(Sender: TObject);
begin
  q5.Close;
  q5.Open();
end;

end.
