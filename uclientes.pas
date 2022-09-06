unit uclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfclientes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    tbclientes: TFDTable;
    tbclientesID_ANIMAIS: TIntegerField;
    tbclientesNOME: TStringField;
    tbclientesRACA: TStringField;
    tbclientesSEXO: TStringField;
    tbclientesDATA_NASCIMENTO: TDateField;
    tbclientesVACINAS: TStringField;
    tbclientesDATA_VACINACAO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    btconsulta: TBitBtn;
    btincluir: TBitBtn;
    btgravar: TBitBtn;
    BitBtn5: TBitBtn;
    btcancelar: TBitBtn;
    BitBtn6: TBitBtn;
    btfechar: TBitBtn;
    procedure btgravarClick(Sender: TObject);
    procedure btincluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btfecharClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btconsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fclientes: Tfclientes;

implementation

{$R *.dfm}

Uses utabelas, uconcli, ualtcli, uexccli;

procedure Tfclientes.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(Tfaltcli, faltcli);
  faltcli.showmodal;
end;

procedure Tfclientes.BitBtn6Click(Sender: TObject);
begin
  Application.CreateForm(Tfexccli, fexccli);
  fexccli.showmodal;
end;

procedure Tfclientes.btcancelarClick(Sender: TObject);
begin
  tbclientes.Cancel;
  tbclientes.Close;
  btincluir.Enabled := true;
  btincluir.SetFocus;
end;

procedure Tfclientes.btconsultaClick(Sender: TObject);
begin
  Application.CreateForm(Tfconsultacli, fconsultacli);
  fconsultacli.showmodal;
end;

procedure Tfclientes.btfecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfclientes.btgravarClick(Sender: TObject);
begin
  try
    if tbclientes.State in [dsinsert] then
    begin
      tbclientes.Post;
      btincluir.Enabled := true;
      btincluir.SetFocus;
    end;
    dm.FDTransaction1.StartTransaction;
    dm.FDTransaction1.CommitRetaining;
    btgravar.Enabled := false;
    tbclientes.Close;
  except
    ShowMessage
      ('N�o foi poss�vel a grava��o desses dados, verifique se ficou algum dado vazio');
  end;
end;

procedure Tfclientes.btincluirClick(Sender: TObject);
begin
  tbclientes.Open();
  tbclientes.Append;
  DBEdit2.SetFocus;
  btincluir.Enabled := false;
end;

procedure Tfclientes.DBEdit3Change(Sender: TObject);
begin
  if DBEdit3.Text = '' then
    btgravar.Enabled := false
  else
  begin
    btgravar.Enabled := true;
    btcancelar.Enabled := true;
  end;
end;

procedure Tfclientes.FormActivate(Sender: TObject);
begin
  // btgravar.Enabled := false;
  btcancelar.Enabled := false;
  btincluir.Enabled := true;
  btincluir.SetFocus;
end;

procedure Tfclientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;

end;

end.
