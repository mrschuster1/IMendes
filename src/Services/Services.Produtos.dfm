inherited ServiceProdutos: TServiceProdutos
  Height = 266
  Width = 539
  PixelsPerInch = 120
  object Produtos: TFDQuery
    BeforeOpen = ProdutosBeforeOpen
    Connection = Connection
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select PR.EMPRESA,'
      '       P.CODIGO,'
      '       P.CODIGOBARRA,'
      '       P.DESCRICAO'
      '       '
      'from TESTPRODUTOGERAL P'
      ''
      'inner join TESTPRODUTO PR on PR.EMPRESA= :EMPRESA '
      '                          and PR.PRODUTO = P.CODIGO'
      ''
      'where PR.ATIVO = '#39'S'#39
      ''
      'order by 2 asc  ')
    Left = 116
    Top = 131
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object CodigoBarra: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Required = True
    end
    object Codigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object Descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object Empresa: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
      Visible = False
      Size = 2
    end
  end
end
