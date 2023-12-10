object ProviderConnection: TProviderConnection
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 181
  Width = 534
  PixelsPerInch = 120
  object Connection: TFDConnection
    Params.Strings = (
      'Database=C:\ecosis\bds\PingoDeGente\PingoDeGente.ECO'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    BeforeConnect = ConnectionBeforeConnect
    Left = 64
    Top = 40
  end
  object FBClient: TFDPhysFBDriverLink
    Left = 208
    Top = 40
  end
  object DBWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 368
    Top = 56
  end
end
