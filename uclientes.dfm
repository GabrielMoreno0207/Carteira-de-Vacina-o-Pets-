object fclientes: Tfclientes
  Left = 460
  Top = 62
  BorderStyle = bsNone
  Caption = 'CADASTRO DE CLIENTES'
  ClientHeight = 477
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 477
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvNone
    BevelWidth = 3
    BorderStyle = bsSingle
    Color = 8404992
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 11
      Width = 48
      Height = 17
      Caption = 'C'#243'digo:'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 127
      Top = 11
      Width = 41
      Height = 17
      Caption = 'Nome:'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 67
      Width = 32
      Height = 17
      Caption = 'Ra'#231'a:'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 252
      Top = 67
      Width = 33
      Height = 17
      Caption = 'Sexo:'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 20
      Top = 123
      Width = 129
      Height = 17
      Caption = 'Data de Nascimento:'
      FocusControl = DBEdit5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 175
      Top = 123
      Width = 50
      Height = 17
      Caption = 'Vacinas:'
      FocusControl = DBEdit6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 20
      Top = 179
      Width = 117
      Height = 17
      Caption = 'Data de Vacina'#231#227'o:'
      FocusControl = DBEdit7
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 816
      Top = -29
      Width = 87
      Height = 645
      BevelOuter = bvNone
      BevelWidth = 3
      Color = 15365376
      ParentBackground = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 20
      Top = 234
      Width = 621
      Height = 209
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_ANIMAIS'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Color = clWhite
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RACA'
          Title.Alignment = taCenter
          Title.Caption = 'Ra'#231'a'
          Width = 197
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEXO'
          Title.Alignment = taCenter
          Title.Caption = 'Sexo'
          Width = 129
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 20
      Top = 27
      Width = 81
      Height = 24
      DataField = 'ID_ANIMAIS'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 127
      Top = 27
      Width = 236
      Height = 24
      DataField = 'NOME'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 20
      Top = 83
      Width = 205
      Height = 24
      DataField = 'RACA'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 251
      Top = 83
      Width = 112
      Height = 24
      DataField = 'SEXO'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 20
      Top = 138
      Width = 132
      Height = 24
      DataField = 'DATA_NASCIMENTO'
      DataSource = DataSource1
      MaxLength = 10
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 175
      Top = 139
      Width = 188
      Height = 24
      DataField = 'VACINAS'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 20
      Top = 195
      Width = 132
      Height = 24
      DataField = 'DATA_VACINACAO'
      DataSource = DataSource1
      MaxLength = 10
      TabOrder = 8
    end
    object btconsulta: TBitBtn
      Left = 369
      Top = 83
      Width = 87
      Height = 50
      Caption = '&Consultar'
      TabOrder = 9
      OnClick = btconsultaClick
    end
    object btincluir: TBitBtn
      Left = 369
      Top = 27
      Width = 87
      Height = 50
      Caption = '&Incluir'
      TabOrder = 10
      OnClick = btincluirClick
    end
    object btgravar: TBitBtn
      Left = 462
      Top = 27
      Width = 87
      Height = 50
      Caption = '&Gravar'
      TabOrder = 11
      OnClick = btgravarClick
    end
    object BitBtn5: TBitBtn
      Left = 462
      Top = 83
      Width = 87
      Height = 50
      Caption = '&Alterar'
      TabOrder = 12
      OnClick = BitBtn5Click
    end
    object btcancelar: TBitBtn
      Left = 554
      Top = 27
      Width = 87
      Height = 50
      Caption = '&Cancelar'
      TabOrder = 13
      OnClick = btcancelarClick
    end
    object BitBtn6: TBitBtn
      Left = 554
      Top = 83
      Width = 87
      Height = 50
      Caption = '&Excluir'
      TabOrder = 14
      OnClick = BitBtn6Click
    end
    object btfechar: TBitBtn
      Left = 462
      Top = 139
      Width = 87
      Height = 50
      Caption = 'Fechar'
      TabOrder = 15
      OnClick = btfecharClick
    end
  end
  object DataSource1: TDataSource
    DataSet = tbclientes
    Left = 320
    Top = 184
  end
  object tbclientes: TFDTable
    IndexFieldNames = 'ID_ANIMAIS'
    Connection = dm.FDConnection1
    UpdateOptions.UpdateTableName = 'CADANIMAIS'
    TableName = 'CADANIMAIS'
    Left = 248
    Top = 184
    object tbclientesID_ANIMAIS: TIntegerField
      FieldName = 'ID_ANIMAIS'
      Origin = 'ID_ANIMAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbclientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object tbclientesRACA: TStringField
      FieldName = 'RACA'
      Origin = 'RACA'
      Required = True
      Size = 50
    end
    object tbclientesSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Required = True
      Size = 10
    end
    object tbclientesDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object tbclientesVACINAS: TStringField
      FieldName = 'VACINAS'
      Origin = 'VACINAS'
      Required = True
      Size = 50
    end
    object tbclientesDATA_VACINACAO: TDateField
      FieldName = 'DATA_VACINACAO'
      Origin = 'DATA_VACINACAO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
  end
end
