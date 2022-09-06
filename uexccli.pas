unit uexccli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfexccli = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btlimpar: TBitBtn;
    btfechar: TBitBtn;
    btiniciar: TBitBtn;
    SpeedButton1: TSpeedButton;
    q2: TFDQuery;
    DataSource1: TDataSource;
    q2ID_ANIMAIS: TIntegerField;
    q2NOME: TStringField;
    q2RACA: TStringField;
    q2SEXO: TStringField;
    q2DATA_NASCIMENTO: TDateField;
    q2VACINAS: TStringField;
    q2DATA_VACINACAO: TDateField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
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
    procedure btiniciarClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btlimparClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fexccli: Tfexccli;

implementation

{$R *.dfm}

Uses utabelas, uclientes, ubuscaexccli;

procedure Tfexccli.btfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfexccli.btiniciarClick(Sender: TObject);
begin
  q2.Open();
  if q2.Locate('id_animais', Edit1.Text, []) then
  begin
    if MessageDlg('Voc� confirma a exclus�o de dados desse cliente?',
      mtConfirmation, [mbyes, mbno], 0) = mryes then
    begin
      q2.delete;
      showmessage('Dados do cliente deletado com sucesso!');
      dm.FDTransaction1.StartTransaction;
      dm.FDTransaction1.CommitRetaining;
      btlimpar.SetFocus;
    end
    else
    begin
      showmessage('Dados do cliente mantidos sem exclus�o');
      q2.close;
      btlimpar.SetFocus;
    end;
  end;

end;

procedure Tfexccli.btlimparClick(Sender: TObject);
begin
  Edit1.Clear;
  Edit1.SetFocus;
  q2.close;
end;

procedure Tfexccli.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    btiniciar.Enabled := false
  else
    btiniciar.Enabled := true;

end;

procedure Tfexccli.SpeedButton1Click(Sender: TObject);
begin
  fbuscaexccli.ShowModal;
end;

end.
