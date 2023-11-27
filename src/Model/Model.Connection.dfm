object DM: TDM
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 430
  Width = 642
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
  object dxEMFSession1: TdxEMFSession
    DataProvider = dxEMFFireDACDataProvider1
    Left = 80
    Top = 120
  end
  object dxEMFFireDACDataProvider1: TdxEMFFireDACDataProvider
    Connection = Connection
    Left = 208
    Top = 152
  end
  object dxEMFDataSet1: TdxEMFDataSet
    Session = dxEMFSession1
    Params = <>
    Left = 368
    Top = 176
  end
  object dxEMFDataSource1: TdxEMFDataSource
    Session = dxEMFSession1
    Left = 264
    Top = 256
  end
end
