object ProviderImendesData: TProviderImendesData
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 214
  Width = 269
  PixelsPerInch = 120
  object Connection: TFDConnection
    Params.Strings = (
      'Database=C:\GT++\data\dados.ksv'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 64
    Top = 40
  end
end
