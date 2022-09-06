object fbuscaclialt: Tfbuscaclialt
  Left = 0
  Top = 0
  Caption = 'Buscar nome do Animal'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    Color = 8404992
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 157
      Height = 17
      Caption = 'Digite o nome do Animal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 192
      Top = 8
      Width = 177
      Height = 24
      TabOrder = 0
      OnChange = Edit1Change
    end
    object btlimpar: TBitBtn
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Limpar'
      TabOrder = 1
      OnClick = btlimparClick
    end
    object btfechar: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btfecharClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 635
    Height = 258
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ANIMAIS'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Visible = True
      end>
  end
  object q4: TFDQuery
    Active = True
    Connection = dm.FDConnection1
    SQL.Strings = (
      'select id_animais, nome from cadanimais')
    Left = 496
    Top = 64
    object q4ID_ANIMAIS: TIntegerField
      FieldName = 'ID_ANIMAIS'
      Origin = 'ID_ANIMAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q4NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = q4
    Left = 543
    Top = 64
  end
end
