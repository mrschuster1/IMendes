inherited ServiceTributos: TServiceTributos
  Height = 439
  Width = 691
  PixelsPerInch = 120
  inherited DBWaitCursor: TFDGUIxWaitCursor
    Left = 360
    Top = 48
  end
  object ICMS: TFDQuery
    Connection = Connection
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select I.EMPRESA,'
      '       I.PRODUTO,'
      '       I.ESTADO,'
      '       I.COMPRACSF,'
      '       I.COMPRAICMS,'
      '       I.COMPRAREDUCAO,'
      '       I.COMPRAMARGEM,'
      '       I.COMPRAICMSSUBST,'
      '       I.MARGEMGARANTIDO,'
      '       I.VENDACSF1,'
      '       I.VENDACSF2,'
      '       I.VENDAICMS1,'
      '       I.VENDAICMS2,'
      '       I.VENDAREDUCAO1,'
      '       I.VENDAREDUCAO2,'
      '       I.VENDAMARGEM1,'
      '       I.VENDAMARGEM2,'
      '       I.VENDAICMSSUBST1,'
      '       I.VENDAICMSSUBST2,'
      '       I.DATAINCLUSAO,'
      '       I.DATAALTERACAO,'
      '       I.COMPRAREDUCAOSUBST,'
      '       I.VENDAREDUCAOSUBST1,'
      '       I.VENDAREDUCAOSUBST2,'
      '       I.CSOSNCONSUMIDOR,'
      '       I.CSOSNREVENDA,'
      '       I.CSOSNCOMPRA,'
      '       I.CLASSIFICACAOCOMPRA,'
      '       I.VENDAPROTEGE1,'
      '       I.VENDAPROTEGE2,'
      '       I.IDTABELAAJUSTEFISCENTRADA,'
      '       I.DATAHORAALTERACAO,'
      '       I.IDICMS,'
      '       I.IDTABELAAJUSTEFISCCONS,'
      '       I.IDTABELAAJUSTEFISCREVEN,'
      '       I.CFOP1,'
      '       I.CFOP2,'
      '       I.VENDAPDIF1,'
      '       I.VENDAPDIF2,'
      '       I.COMPRAPDIF,'
      '       I.ALIQINTERNA,'
      '       I.ALIQFCP,'
      '       I.PERCICMSDESONCONS,'
      '       I.MOTDESICMSCONS,'
      '       I.PERCICMSDESONCONTRIB,'
      '       I.MOTDESICMSCONTRIB,'
      '       I.REDUCAOICMSANTECIPADO,'
      '       I.GID_CODBENEFICIO_COMPRA,'
      '       I.GID_CODBENEFICIO_CONTRIB,'
      '       I.GID_CODBENEFICIO_NAOCONTRIB,'
      '       I.NAODESC_ICMSDESON_CONTRIB,'
      '       I.NAODESC_ICMSDESON_NAOCONTRIB,'
      '       I.ORIGEMALTERACAO,'
      '       I.DIFAL_ALIQICMSINTERNA,'
      '       I.DIFAL_ALIQFCP,'
      '       I.DIFAL_ALIQREDUCAO,'
      '       I.DIFAL_TIPOCALCULO,'
      '       I.DIFAL_ICMSSTCONTRIB,'
      '       I.DIFAL_CONVICMS5291'
      'from TESTICMS I  '
      ''
      'where I.EMPRESA = :EMPRESA and'
      '      I.PRODUTO = :PRODUTO and'
      '      I.ESTADO = :ESTADO')
    Left = 68
    Top = 139
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object Empresa: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object Produto: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object Estado: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CSTCompra: TStringField
      FieldName = 'COMPRACSF'
      Origin = 'COMPRACSF'
      Size = 3
    end
    object PercICMSCompra: TCurrencyField
      FieldName = 'COMPRAICMS'
      Origin = 'COMPRAICMS'
    end
    object ICMSCOMPRAREDUCAO: TCurrencyField
      FieldName = 'COMPRAREDUCAO'
      Origin = 'COMPRAREDUCAO'
    end
    object ICMSCOMPRAMARGEM: TCurrencyField
      FieldName = 'COMPRAMARGEM'
      Origin = 'COMPRAMARGEM'
    end
    object ICMSCOMPRAICMSSUBST: TCurrencyField
      FieldName = 'COMPRAICMSSUBST'
      Origin = 'COMPRAICMSSUBST'
    end
    object ICMSMARGEMGARANTIDO: TCurrencyField
      FieldName = 'MARGEMGARANTIDO'
      Origin = 'MARGEMGARANTIDO'
    end
    object CSTContribuinte: TStringField
      FieldName = 'VENDACSF1'
      Origin = 'VENDACSF1'
      Size = 3
    end
    object CSTConsumidor: TStringField
      FieldName = 'VENDACSF2'
      Origin = 'VENDACSF2'
      Size = 3
    end
    object PercICMSContribuinte: TCurrencyField
      FieldName = 'VENDAICMS1'
      Origin = 'VENDAICMS1'
    end
    object PercICMSConsumidor: TCurrencyField
      FieldName = 'VENDAICMS2'
      Origin = 'VENDAICMS2'
    end
    object ICMSVENDAREDUCAO1: TCurrencyField
      FieldName = 'VENDAREDUCAO1'
      Origin = 'VENDAREDUCAO1'
    end
    object ICMSVENDAREDUCAO2: TCurrencyField
      FieldName = 'VENDAREDUCAO2'
      Origin = 'VENDAREDUCAO2'
    end
    object ICMSVENDAMARGEM1: TCurrencyField
      FieldName = 'VENDAMARGEM1'
      Origin = 'VENDAMARGEM1'
    end
    object ICMSVENDAMARGEM2: TCurrencyField
      FieldName = 'VENDAMARGEM2'
      Origin = 'VENDAMARGEM2'
    end
    object PercICMSSTContribuinte: TCurrencyField
      FieldName = 'VENDAICMSSUBST1'
      Origin = 'VENDAICMSSUBST1'
    end
    object PercICMSSTConsumidor: TCurrencyField
      FieldName = 'VENDAICMSSUBST2'
      Origin = 'VENDAICMSSUBST2'
    end
    object ICMSDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Origin = 'DATAINCLUSAO'
    end
    object ICMSDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = 'DATAALTERACAO'
    end
    object ICMSCOMPRAREDUCAOSUBST: TCurrencyField
      FieldName = 'COMPRAREDUCAOSUBST'
      Origin = 'COMPRAREDUCAOSUBST'
    end
    object ICMSVENDAREDUCAOSUBST1: TCurrencyField
      FieldName = 'VENDAREDUCAOSUBST1'
      Origin = 'VENDAREDUCAOSUBST1'
    end
    object CSOSNConsumidor: TCurrencyField
      FieldName = 'VENDAREDUCAOSUBST2'
      Origin = 'VENDAREDUCAOSUBST2'
    end
    object ICMSCSOSNCONSUMIDOR: TIntegerField
      FieldName = 'CSOSNCONSUMIDOR'
      Origin = 'CSOSNCONSUMIDOR'
    end
    object CSOSNContribuinte: TIntegerField
      FieldName = 'CSOSNREVENDA'
      Origin = 'CSOSNREVENDA'
    end
    object ICMSCSOSNCOMPRA: TIntegerField
      FieldName = 'CSOSNCOMPRA'
      Origin = 'CSOSNCOMPRA'
    end
    object ICMSCLASSIFICACAOCOMPRA: TSmallintField
      FieldName = 'CLASSIFICACAOCOMPRA'
      Origin = 'CLASSIFICACAOCOMPRA'
    end
    object ICMSVENDAPROTEGE1: TCurrencyField
      FieldName = 'VENDAPROTEGE1'
      Origin = 'VENDAPROTEGE1'
    end
    object ICMSVENDAPROTEGE2: TCurrencyField
      FieldName = 'VENDAPROTEGE2'
      Origin = 'VENDAPROTEGE2'
    end
    object ICMSIDTABELAAJUSTEFISCENTRADA: TIntegerField
      FieldName = 'IDTABELAAJUSTEFISCENTRADA'
      Origin = 'IDTABELAAJUSTEFISCENTRADA'
    end
    object ICMSDATAHORAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAHORAALTERACAO'
      Origin = 'DATAHORAALTERACAO'
    end
    object ICMSIDICMS: TIntegerField
      FieldName = 'IDICMS'
      Origin = 'IDICMS'
      Required = True
    end
    object ICMSIDTABELAAJUSTEFISCCONS: TIntegerField
      FieldName = 'IDTABELAAJUSTEFISCCONS'
      Origin = 'IDTABELAAJUSTEFISCCONS'
    end
    object ICMSIDTABELAAJUSTEFISCREVEN: TIntegerField
      FieldName = 'IDTABELAAJUSTEFISCREVEN'
      Origin = 'IDTABELAAJUSTEFISCREVEN'
    end
    object CFOPVendaContribuinte: TStringField
      FieldName = 'CFOP1'
      Origin = 'CFOP1'
      Size = 4
    end
    object CFOPVendaConsumidor: TStringField
      FieldName = 'CFOP2'
      Origin = 'CFOP2'
      Size = 4
    end
    object ICMSVENDAPDIF1: TCurrencyField
      FieldName = 'VENDAPDIF1'
      Origin = 'VENDAPDIF1'
    end
    object ICMSVENDAPDIF2: TCurrencyField
      FieldName = 'VENDAPDIF2'
      Origin = 'VENDAPDIF2'
    end
    object ICMSCOMPRAPDIF: TCurrencyField
      FieldName = 'COMPRAPDIF'
      Origin = 'COMPRAPDIF'
    end
    object ICMSALIQINTERNA: TCurrencyField
      FieldName = 'ALIQINTERNA'
      Origin = 'ALIQINTERNA'
    end
    object PercFCP: TCurrencyField
      FieldName = 'ALIQFCP'
      Origin = 'ALIQFCP'
    end
    object ICMSPERCICMSDESONCONS: TCurrencyField
      FieldName = 'PERCICMSDESONCONS'
      Origin = 'PERCICMSDESONCONS'
    end
    object ICMSMOTDESICMSCONS: TSmallintField
      FieldName = 'MOTDESICMSCONS'
      Origin = 'MOTDESICMSCONS'
    end
    object ICMSPERCICMSDESONCONTRIB: TCurrencyField
      FieldName = 'PERCICMSDESONCONTRIB'
      Origin = 'PERCICMSDESONCONTRIB'
    end
    object ICMSMOTDESICMSCONTRIB: TSmallintField
      FieldName = 'MOTDESICMSCONTRIB'
      Origin = 'MOTDESICMSCONTRIB'
    end
    object ICMSREDUCAOICMSANTECIPADO: TCurrencyField
      FieldName = 'REDUCAOICMSANTECIPADO'
      Origin = 'REDUCAOICMSANTECIPADO'
    end
    object ICMSGID_CODBENEFICIO_COMPRA: TLargeintField
      FieldName = 'GID_CODBENEFICIO_COMPRA'
      Origin = 'GID_CODBENEFICIO_COMPRA'
    end
    object ICMSGID_CODBENEFICIO_CONTRIB: TLargeintField
      FieldName = 'GID_CODBENEFICIO_CONTRIB'
      Origin = 'GID_CODBENEFICIO_CONTRIB'
    end
    object ICMSGID_CODBENEFICIO_NAOCONTRIB: TLargeintField
      FieldName = 'GID_CODBENEFICIO_NAOCONTRIB'
      Origin = 'GID_CODBENEFICIO_NAOCONTRIB'
    end
    object ICMSNAODESC_ICMSDESON_CONTRIB: TSmallintField
      FieldName = 'NAODESC_ICMSDESON_CONTRIB'
      Origin = 'NAODESC_ICMSDESON_CONTRIB'
      Required = True
    end
    object ICMSNAODESC_ICMSDESON_NAOCONTRIB: TSmallintField
      FieldName = 'NAODESC_ICMSDESON_NAOCONTRIB'
      Origin = 'NAODESC_ICMSDESON_NAOCONTRIB'
      Required = True
    end
    object ICMSORIGEMALTERACAO: TStringField
      FieldName = 'ORIGEMALTERACAO'
      Origin = 'ORIGEMALTERACAO'
      Size = 100
    end
    object ICMSDIFAL_ALIQICMSINTERNA: TCurrencyField
      FieldName = 'DIFAL_ALIQICMSINTERNA'
      Origin = 'DIFAL_ALIQICMSINTERNA'
    end
    object ICMSDIFAL_ALIQFCP: TCurrencyField
      FieldName = 'DIFAL_ALIQFCP'
      Origin = 'DIFAL_ALIQFCP'
    end
    object ICMSDIFAL_ALIQREDUCAO: TCurrencyField
      FieldName = 'DIFAL_ALIQREDUCAO'
      Origin = 'DIFAL_ALIQREDUCAO'
    end
    object ICMSDIFAL_TIPOCALCULO: TIntegerField
      FieldName = 'DIFAL_TIPOCALCULO'
      Origin = 'DIFAL_TIPOCALCULO'
    end
    object ICMSDIFAL_ICMSSTCONTRIB: TIntegerField
      FieldName = 'DIFAL_ICMSSTCONTRIB'
      Origin = 'DIFAL_ICMSSTCONTRIB'
    end
    object ICMSDIFAL_CONVICMS5291: TIntegerField
      FieldName = 'DIFAL_CONVICMS5291'
      Origin = 'DIFAL_CONVICMS5291'
    end
  end
  object NCM: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'select codigo, classificacaofiscal from testprodutogeral where c' +
        'odigo = :produto')
    Left = 232
    Top = 296
    ParamData = <
      item
        Name = 'PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object NCMCodigoProduto: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object NCMClassificacaoFiscal: TStringField
      FieldName = 'CLASSIFICACAOFISCAL'
      Origin = 'CLASSIFICACAOFISCAL'
    end
  end
  object ComparaCEST: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select P.CODIGO PRODUTO,'
      '       C.CEST'
      'from TESTPRODUTOGERAL P'
      'inner join TESTCEST C on C.IDCEST = P.IDCEST'
      'where P.CODIGO = :PRODUTO   ')
    Left = 376
    Top = 312
    ParamData = <
      item
        Name = 'PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object ComparaCESTPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object ComparaCESTCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
  object SelectCEST: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select IDCEST from TESTCEST where CEST = :CEST')
    Left = 496
    Top = 312
    ParamData = <
      item
        Name = 'CEST'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object SelectCESTIDCEST: TIntegerField
      FieldName = 'IDCEST'
      Origin = 'IDCEST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object UpdateCEST: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'update TESTPRODUTOGERAL'
      'set IDCEST = :CEST'
      'where CODIGO = :PRODUTO   ')
    Left = 616
    Top = 320
    ParamData = <
      item
        Name = 'CEST'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object ComparaPercIPI: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select ipi from testprodutogeral '
      'where codigo = :produto')
    Left = 368
    Top = 176
    ParamData = <
      item
        Name = 'PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object UpdatePercIPI: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'update testprodutogeral set ipi = :ipi'
      'where codigo = :produto')
    Left = 480
    Top = 184
    ParamData = <
      item
        Name = 'IPI'
        DataType = ftCurrency
        Precision = 9
        NumericScale = 3
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
end
