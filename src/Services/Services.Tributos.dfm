inherited ServiceTributos: TServiceTributos
  Height = 307
  PixelsPerInch = 120
  inherited DBWaitCursor: TFDGUIxWaitCursor
    Left = 360
    Top = 48
  end
  object Tributos: TFDQuery
    Connection = Connection
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select I.EMPRESA,'
      '       I.PRODUTO,'
      '       I.ESTADO,'
      '       I.MENSAGEMLIMINAR,'
      '       I.COMPRACSF,'
      '       I.COMPRAICMS,'
      '       I.COMPRAREDUCAO,'
      '       I.COMPRAMARGEM,'
      '       I.COMPRAICMSSUBST,'
      '       I.CLASSIFICACAO,'
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
      'from TESTICMS I  ')
    Left = 68
    Top = 139
  end
end
