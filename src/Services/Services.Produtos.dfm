inherited ServiceProdutos: TServiceProdutos
  Height = 266
  Width = 539
  PixelsPerInch = 120
  inherited FBClient: TFDPhysFBDriverLink
    Left = 152
  end
  inherited DBWaitCursor: TFDGUIxWaitCursor
    Left = 256
    Top = 40
  end
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
  object ExportaProdutos: TFDQuery
    BeforeOpen = ProdutosBeforeOpen
    Connection = Connection
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select PG.CODIGO,'
      '       PG.DESCRICAO,'
      '       PG.CODIGOBARRA,'
      '       case'
      '         when I.CFOP1 is not null then I.CFOP1'
      '         when CI.CFOP1 is not null then CI.CFOP1'
      
        '         when I.CFOP1 is null and CI.CFOP1 is null and CI.VENDAC' +
        'SF1 in ('#39'000'#39', '#39'020'#39', '#39'040'#39', '#39'041'#39', '#39'050'#39', '#39'051'#39', '#39'090'#39') then '#39'5' +
        '102'#39
      
        '         when I.CFOP1 is null and CI.CFOP1 is null and CI.VENDAC' +
        'SF1 in ('#39'030'#39') then '#39'5101'#39
      
        '         when I.CFOP1 is null and CI.CFOP1 is null and CI.VENDAC' +
        'SF1 in ('#39'070'#39') then '#39'5103'#39
      
        '         when I.CFOP1 is null and CI.CFOP1 is null and CI.VENDAC' +
        'SF1 in ('#39'010'#39', '#39'060'#39') then '#39'5405'#39
      
        '         when I.CFOP1 is null and CI.CFOP1 is null and CI.VENDAC' +
        'SF1 is null then '#39'5102'#39
      '       end CFOPVENDA,'
      '       case'
      '         when I.VENDACSF1 is not null then I.VENDACSF1'
      
        '         when CI.VENDACSF1 is not null and I.VENDACSF1 is null t' +
        'hen CI.VENDACSF1'
      '       end CST,'
      '       case'
      
        '         when I.CSOSNCONSUMIDOR is not null then I.CSOSNCONSUMID' +
        'OR'
      
        '         when CI.CSOSNCONSUMIDOR is not null and I.CSOSNCONSUMID' +
        'OR is null then CI.CSOSNCONSUMIDOR'
      '         when I.CSOSNREVENDA is not null then I.CSOSNREVENDA'
      
        '         when CI.CSOSNREVENDA is not null and I.CSOSNREVENDA is ' +
        'null then CI.CSOSNREVENDA'
      '       end CSOSN,'
      '       case'
      '         when I.VENDAICMS1 is not null then I.VENDAICMS1'
      
        '         when CI.VENDAICMS1 is not null and I.VENDAICMS1 is null' +
        ' then CI.VENDAICMS1'
      '       end ICMS,'
      '       case'
      '         when I.VENDAICMS2 is not null then I.VENDAICMS2'
      
        '         when CI.VENDAICMS2 is not null and I.VENDAICMS2 is null' +
        ' then CI.VENDAICMS2'
      '       end ICMSPDV,'
      '       case IC.CSF'
      '         when '#39'000'#39' then '#39'T'#39
      '         when '#39'041'#39' then '#39'N'#39
      '         when '#39'040'#39' then '#39'I'#39
      '         when '#39'060'#39' then '#39'F'#39
      '       end SIMBPDV,'
      '       case'
      '         when I.VENDAREDUCAO1 is not null then I.VENDAREDUCAO1'
      
        '         when CI.VENDAREDUCAO1 is not null and I.VENDAREDUCAO1 i' +
        's null then CI.VENDAREDUCAO1'
      '         when I.VENDAREDUCAO2 is not null then I.VENDAREDUCAO2'
      
        '         when CI.VENDAREDUCAO2 is not null and I.VENDAREDUCAO2 i' +
        's null then CI.VENDAREDUCAO2'
      '         else 0'
      '       end REDUCAO,'
      '       case'
      
        '         when I.VENDAREDUCAOSUBST1 is not null then I.VENDAREDUC' +
        'AOSUBST1'
      
        '         when CI.VENDAREDUCAOSUBST1 is not null and I.VENDAREDUC' +
        'AOSUBST1 is null then CI.VENDAREDUCAOSUBST1'
      
        '         when I.VENDAREDUCAOSUBST2 is not null then I.VENDAREDUC' +
        'AOSUBST2'
      
        '         when CI.VENDAREDUCAOSUBST2 is not null and I.VENDAREDUC' +
        'AOSUBST2 is null then CI.VENDAREDUCAOSUBST2'
      '         else 0'
      '       end REDUCAOST,'
      '       case'
      
        '         when I.VENDAICMSSUBST1 is not null then I.VENDAICMSSUBS' +
        'T1'
      
        '         when CI.VENDAICMSSUBST1 is not null and I.VENDAICMSSUBS' +
        'T1 is null then CI.VENDAICMSSUBST1'
      
        '         when I.VENDAICMSSUBST2 is not null then I.VENDAICMSSUBS' +
        'T2'
      
        '         when CI.VENDAICMSSUBST2 is not null and I.VENDAICMSSUBS' +
        'T2 is null then CI.VENDAICMSSUBST2'
      '       end ICMSST,'
      '       case'
      '         when I.VENDAMARGEM1 is not null then I.VENDAMARGEM1'
      
        '         when CI.VENDAMARGEM1 is not null and I.VENDAMARGEM1 is ' +
        'null then CI.VENDAMARGEM1'
      '         when I.VENDAMARGEM2 is not null then I.VENDAMARGEM2'
      
        '         when CI.VENDAMARGEM2 is not null and I.VENDAMARGEM2 is ' +
        'null then CI.VENDAMARGEM2'
      '       end MARGEMST,'
      '       case'
      '         when I.VENDAPDIF1 is not null then I.VENDAPDIF1'
      
        '         when CI.VENDAPDIF1 is not null and I.VENDAPDIF1 is null' +
        ' then CI.VENDAPDIF1'
      '         when I.VENDAPDIF2 is not null then I.VENDAPDIF2'
      
        '         when CI.VENDAPDIF2 is not null and I.VENDAPDIF2 is null' +
        ' then CI.VENDAPDIF2'
      '         else 0'
      '       end DIFERIMENTO,'
      '       case'
      
        '         when I.PERCICMSDESONCONS is not null then I.PERCICMSDES' +
        'ONCONS'
      
        '         when CI.PERCICMSDESONCONS is not null and I.PERCICMSDES' +
        'ONCONS is null then CI.PERCICMSDESONCONS'
      
        '         when I.PERCICMSDESONCONTRIB is not null then I.PERCICMS' +
        'DESONCONTRIB'
      
        '         when CI.PERCICMSDESONCONTRIB is not null and I.PERCICMS' +
        'DESONCONTRIB is null then CI.PERCICMSDESONCONTRIB'
      '         else 0'
      '       end DESONERADO,'
      '       PG.CODIGOCOMBUSTIVEL ANP,'
      '       PG.CLASSIFICACAOFISCAL NCM,'
      '       case'
      '         when I.ALIQFCP is not null then I.ALIQFCP'
      
        '         when CI.ALIQFCP is not null and I.ALIQFCP is null then ' +
        'CI.ALIQFCP'
      '         else 0'
      '       end FCP,'
      '       coalesce(PG.IPI, 0) IPI,'
      '       PG.TIPOIPIENTRADA CSTIPIENTRADA,'
      '       PG.TIPOIPISAIDA CSTIPISAIDA'
      'from TESTPRODUTOGERAL PG'
      'inner join TESTPRODUTO P on P.PRODUTO = PG.CODIGO and'
      '      P.EMPRESA = :EMPRESA and'
      '      P.ATIVO = '#39'S'#39
      'inner join TGEREMPRESA E on E.CODIGO = :EMPRESA'
      'inner join TGERCIDADE C on C.CODIGO = E.CIDADE'
      'inner join TESTGRUPOICMS IC on IC.CODIGOID = PG.GRUPOICMS'
      'left outer join TESTGRUPOICMSCOMP CI on CI.ESTADO = C.ESTADO and'
      '      CI.GRUPOID = IC.CODIGOID and'
      '      CI.EMPRESA = :EMPRESA'
      'left outer join TESTICMS I on I.EMPRESA = :EMPRESA and'
      '      I.PRODUTO = P.PRODUTO and'
      '      I.ESTADO = C.ESTADO   ')
    Left = 252
    Top = 131
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
  end
end
