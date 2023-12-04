inherited ServiceEmpresas: TServiceEmpresas
  Height = 284
  PixelsPerInch = 120
  object Empresas: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select'
      ' codigo,'
      ' nomefantasia'
      'from tgerempresa')
    Left = 72
    Top = 144
    object NomeFantasia: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Required = True
      Size = 40
    end
    object Codigo: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
  end
end
