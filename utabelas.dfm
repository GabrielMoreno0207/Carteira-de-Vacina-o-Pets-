object dm: Tdm
  OldCreateOrder = False
  Height = 107
  Width = 532
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Computador\Desktop\GabrielTi\Vacina Pets\CRUD.' +
        'FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 120
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 312
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 416
    Top = 16
  end
end
