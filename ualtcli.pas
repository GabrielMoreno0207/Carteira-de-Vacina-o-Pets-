unit ualtcli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfaltcli = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btlimpar: TBitBtn;
    btfechar: TBitBtn;
    btiniciar: TBitBtn;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    q3: TFDQuery;
    DataSource1: TDataSource;
    q3ID_ANIMAIS: TIntegerField;
    q3NOME: TStringField;
    q3RACA: TStringField;
    q3SEXO: TStringField;
    q3DATA_NASCIMENTO: TDateField;
    q3VACINAS: TStringField;
    q3DATA_VACINACAO: TDateField;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btlimparClick(Sender: TObject);
    procedure btfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  faltcli: Tfaltcli;

implementation

{$R *.dfm}

Uses utabelas, uclientes, ubuscaaltcli;

procedure Tfaltcli.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Você confirma a alteração de dados desse cliente?',
     mtConfirmation,[mbyes,mbno],0) = mryes
  then begin
         q3.post;
         showmessage('Dados do cliente alterado com sucesso!');
         dm.FDTransaction1.StartTransaction;
         dm.FDTransaction1.CommitRetaining;
         btlimpar.SetFocus;
  end
  else begin
        ShowMessage('Dados do cliente mantidos sem alteração!');
        q3.cancel;
        q3.Close;
        btlimpar.SetFocus;
  end;

end;

procedure Tfaltcli.btfecharClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfaltcli.btiniciarClick(Sender: TObject);
begin
  q3.Open();
  if q3.Locate('id_animais', edit1.Text,[]) then
  begin
     if MessageDlg('Você deseja alterar dados desse cliente?',
     mtConfirmation,[mbyes,mbno],0) = mryes
     then begin
         q3.Edit;
         dbedit2.SetFocus;
     end;

end;
end;

procedure Tfaltcli.btlimparClick(Sender: TObject);
begin
  edit1.Clear;
  edit1.SetFocus;
  q3.Close;
end;

procedure Tfaltcli.Edit1Change(Sender: TObject);
begin
  if edit1.Text = '' then btiniciar.Enabled := false
  else
  btiniciar.Enabled := true;

end;

procedure Tfaltcli.SpeedButton1Click(Sender: TObject);
begin
  fbuscaclialt.showmodal;
end;

end.
