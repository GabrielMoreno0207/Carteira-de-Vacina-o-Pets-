unit ubuscaaltcli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfbuscaclialt = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btlimpar: TBitBtn;
    btfechar: TBitBtn;
    DBGrid1: TDBGrid;
    q4: TFDQuery;
    DataSource1: TDataSource;
    q4ID_ANIMAIS: TIntegerField;
    q4NOME: TStringField;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btlimparClick(Sender: TObject);
    procedure btfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbuscaclialt: Tfbuscaclialt;

implementation

{$R *.dfm}

Uses utabelas, ualtcli;

procedure Tfbuscaclialt.btfecharClick(Sender: TObject);
begin
    close;
end;

procedure Tfbuscaclialt.btlimparClick(Sender: TObject);
begin
  Edit1.Clear;
  Edit1.SetFocus;
  q4.close;
end;

procedure Tfbuscaclialt.DBGrid1CellClick(Column: TColumn);
begin
  faltcli.Edit1.Text := DBGrid1.Fields[0].Value;
  faltcli.Edit1.SetFocus;
  fbuscaclialt.close;
end;

procedure Tfbuscaclialt.Edit1Change(Sender: TObject);
begin
  with q4 do
  begin
    close;
    sql.Clear;
    sql.Add('select id_animais, nome from cadanimais where nome like ''%' +
      Edit1.Text + '%''');
    open;
  end;
end;

end.
