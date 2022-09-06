object faltcli: Tfaltcli
  Left = 0
  Top = 0
  Caption = 'Altera'#231#227'o de dados de Animais'
  ClientHeight = 513
  ClientWidth = 897
  Color = 8404992
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 232
    Top = 104
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
  object Label3: TLabel
    Left = 232
    Top = 144
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
  object Label4: TLabel
    Left = 232
    Top = 184
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
  object Label5: TLabel
    Left = 232
    Top = 224
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
  object Label6: TLabel
    Left = 232
    Top = 264
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
  object Label7: TLabel
    Left = 232
    Top = 304
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
  object Label8: TLabel
    Left = 232
    Top = 344
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 8
      Width = 168
      Height = 17
      Caption = 'Digite o c'#243'digo do Animal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 376
      Top = 8
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Edit1: TEdit
      Left = 192
      Top = 8
      Width = 161
      Height = 24
      TabOrder = 0
      OnChange = Edit1Change
    end
    object btlimpar: TBitBtn
      Left = 656
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Limpar'
      TabOrder = 2
      OnClick = btlimparClick
    end
    object btfechar: TBitBtn
      Left = 800
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btfecharClick
    end
    object btiniciar: TBitBtn
      Left = 488
      Top = 5
      Width = 137
      Height = 25
      Caption = '&Iniciar altera'#231#227'o'
      Enabled = False
      TabOrder = 1
      OnClick = btiniciarClick
    end
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 480
    Width = 201
    Height = 25
    Caption = '&Confirmar altera'#231#227'o'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBEdit1: TDBEdit
    Left = 232
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ID_ANIMAIS'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 232
    Top = 160
    Width = 393
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 232
    Top = 202
    Width = 393
    Height = 21
    DataField = 'RACA'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 232
    Top = 240
    Width = 134
    Height = 21
    DataField = 'SEXO'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 232
    Top = 280
    Width = 134
    Height = 21
    DataField = 'DATA_NASCIMENTO'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 232
    Top = 320
    Width = 393
    Height = 21
    DataField = 'VACINAS'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 232
    Top = 360
    Width = 134
    Height = 21
    DataField = 'DATA_VACINACAO'
    DataSource = DataSource1
    TabOrder = 8
  end
  object q3: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'select * from cadanimais')
    Left = 568
    Top = 72
    object q3ID_ANIMAIS: TIntegerField
      FieldName = 'ID_ANIMAIS'
      Origin = 'ID_ANIMAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q3NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object q3RACA: TStringField
      FieldName = 'RACA'
      Origin = 'RACA'
      Required = True
      Size = 50
    end
    object q3SEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Required = True
      Size = 10
    end
    object q3DATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
      Required = True
    end
    object q3VACINAS: TStringField
      FieldName = 'VACINAS'
      Origin = 'VACINAS'
      Required = True
      Size = 50
    end
    object q3DATA_VACINACAO: TDateField
      FieldName = 'DATA_VACINACAO'
      Origin = 'DATA_VACINACAO'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = q3
    Left = 640
    Top = 72
  end
end
