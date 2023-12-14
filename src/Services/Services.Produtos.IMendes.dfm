inherited ServiceProdutosIMendes: TServiceProdutosIMendes
  Height = 317
  Width = 414
  PixelsPerInch = 120
  inherited Connection: TFDConnection
    Connected = True
  end
  object Produtos: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select p.*, cast(:marcado as boolean) marcado from produtos p')
    Left = 240
    Top = 40
    ParamData = <
      item
        Name = 'MARCADO'
        DataType = ftBoolean
        ParamType = ptInput
        Value = Null
      end>
    object Produtosprod_id: TFDAutoIncField
      FieldName = 'prod_id'
      Origin = 'prod_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object Produtosprod_EAN: TStringField
      DisplayLabel = 'EAN'
      FieldName = 'prod_EAN'
      Origin = 'prod_EAN'
      Size = 14
    end
    object Produtosprod_codInterno: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'prod_codInterno'
      Origin = 'prod_codInterno'
      Size = 50
    end
    object Produtosprod_codIMendes: TStringField
      FieldName = 'prod_codIMendes'
      Origin = 'prod_codIMendes'
      Visible = False
      Size = 50
    end
    object Produtosprod_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'prod_descricao'
      Origin = 'prod_descricao'
      Size = 250
    end
    object Produtosprod_CFOPCompra: TStringField
      DisplayLabel = 'CFOP Compra'
      FieldName = 'prod_CFOPCompra'
      Origin = 'prod_CFOPCompra'
      Size = 4
    end
    object Produtosprod_CFOPVenda: TStringField
      DisplayLabel = 'CFOP Venda'
      FieldName = 'prod_CFOPVenda'
      Origin = 'prod_CFOPVenda'
      Size = 4
    end
    object Produtosprod_CST: TStringField
      DisplayLabel = 'CST'
      FieldName = 'prod_CST'
      Origin = 'prod_CST'
      Size = 3
    end
    object Produtosprod_CSOSN: TStringField
      DisplayLabel = 'CSOSN'
      FieldName = 'prod_CSOSN'
      Origin = 'prod_CSOSN'
      Size = 3
    end
    object Produtosprod_modBC: TStringField
      DisplayLabel = 'Modalidade Base de c'#225'lculo'
      FieldName = 'prod_modBC'
      Origin = 'prod_modBC'
      Size = 1
    end
    object Produtosprod_pICMS: TBCDField
      DisplayLabel = 'Al'#237'quota ICMS'
      FieldName = 'prod_pICMS'
      Origin = 'prod_pICMS'
      Precision = 10
      Size = 2
    end
    object Produtosprod_pICMSPDV: TBCDField
      DisplayLabel = 'Al'#237'quota ICMS PDV'
      FieldName = 'prod_pICMSPDV'
      Origin = 'prod_pICMSPDV'
      Precision = 10
      Size = 2
    end
    object Produtosprod_simbPDV: TStringField
      DisplayLabel = 'Simbologia ICMS PDV'
      FieldName = 'prod_simbPDV'
      Origin = 'prod_simbPDV'
      Size = 1
    end
    object Produtosprod_pRedBCICMS: TBCDField
      DisplayLabel = '% Redu'#231#227'o base de c'#225'lculo ICMS'
      FieldName = 'prod_pRedBCICMS'
      Origin = 'prod_pRedBCICMS'
      Precision = 10
      Size = 2
    end
    object Produtosprod_pRedBCICMSST: TBCDField
      DisplayLabel = '% Redu'#231#227'o base de c'#225'lculo ICMS ST'
      FieldName = 'prod_pRedBCICMSST'
      Origin = 'prod_pRedBCICMSST'
      Precision = 10
      Size = 2
    end
    object Produtosprod_modBCST: TStringField
      DisplayLabel = 'Modalidade Base de c'#225'lculo ST'
      FieldName = 'prod_modBCST'
      Origin = 'prod_modBCST'
      Size = 1
    end
    object Produtosprod_pICMSST: TBCDField
      DisplayLabel = 'Al'#237'quota ICMS ST'
      FieldName = 'prod_pICMSST'
      Origin = 'prod_pICMSST'
      Precision = 10
      Size = 2
    end
    object Produtosprod_pMVAST: TBCDField
      DisplayLabel = 'MVA ST'
      FieldName = 'prod_pMVAST'
      Origin = 'prod_pMVAST'
      Precision = 10
      Size = 2
    end
    object Produtosprod_vPautaST: TFloatField
      DisplayLabel = 'Pauta ST'
      FieldName = 'prod_vPautaST'
      Origin = 'prod_vPautaST'
    end
    object Produtosprod_NCM: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'prod_NCM'
      Origin = 'prod_NCM'
      Size = 8
    end
    object Produtosprod_CEST: TStringField
      DisplayLabel = 'CEST'
      FieldName = 'prod_CEST'
      Origin = 'prod_CEST'
      Size = 10
    end
    object Produtosprod_pIPI: TBCDField
      DisplayLabel = 'Al'#237'quota IPI'
      FieldName = 'prod_pIPI'
      Origin = 'prod_pIPI'
      Precision = 10
      Size = 2
    end
    object Produtosprod_CSTIPI: TStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'prod_CSTIPI'
      Origin = 'prod_CSTIPI'
      Size = 3
    end
    object Produtosprod_CSTPISCOFINSEntrada: TStringField
      DisplayLabel = 'CST PIS/COFINS Entrada'
      FieldName = 'prod_CSTPISCOFINSEntrada'
      Origin = 'prod_CSTPISCOFINSEntrada'
      Size = 2
    end
    object Produtosprod_CSTPISCOFINSSaida: TStringField
      DisplayLabel = 'CST PIS/COFINS Sa'#237'da'
      FieldName = 'prod_CSTPISCOFINSSaida'
      Origin = 'prod_CSTPISCOFINSSaida'
      Size = 2
    end
    object Produtosprod_naturezaReceitaIsentaPISCOFINS: TStringField
      DisplayLabel = 'Natureza Receita Isenta PIS/COFINS'
      FieldName = 'prod_naturezaReceitaIsentaPISCOFINS'
      Origin = 'prod_naturezaReceitaIsentaPISCOFINS'
      Size = 3
    end
    object Produtosprod_pFCP: TBCDField
      DisplayLabel = 'Al'#237'quota FCP'
      FieldName = 'prod_pFCP'
      Origin = 'prod_pFCP'
      Precision = 10
      Size = 2
    end
    object Produtosprod_antecipado: TStringField
      DisplayLabel = 'Antecipado'
      FieldName = 'prod_antecipado'
      Origin = 'prod_antecipado'
      Size = 1
    end
    object Produtosprod_pDesoneracao: TBCDField
      DisplayLabel = 'Al'#237'quota Desonera'#231#227'o'
      FieldName = 'prod_pDesoneracao'
      Origin = 'prod_pDesoneracao'
      Precision = 9
      Size = 2
    end
    object Produtosprod_pDifer: TBCDField
      DisplayLabel = 'Al'#237'quota Diferimento'
      FieldName = 'prod_pDifer'
      Origin = 'prod_pDifer'
      Precision = 9
      Size = 2
    end
    object Produtosprod_lista: TStringField
      DisplayLabel = 'Lista medicamento'
      FieldName = 'prod_lista'
      Origin = 'prod_lista'
      Size = 1
    end
    object Produtosprod_tipo: TStringField
      DisplayLabel = 'Tipo medicamento'
      FieldName = 'prod_tipo'
      Origin = 'prod_tipo'
      Size = 1
    end
    object Produtosprod_aliqPIS: TBCDField
      DisplayLabel = 'Al'#237'quota PIS'
      FieldName = 'prod_aliqPIS'
      Origin = 'prod_aliqPIS'
      Precision = 10
      Size = 2
    end
    object Produtosprod_aliqCOFINS: TBCDField
      DisplayLabel = 'Al'#237'quota COFINS'
      FieldName = 'prod_aliqCOFINS'
      Origin = 'prod_aliqCOFINS'
      Precision = 10
      Size = 2
    end
    object Produtosprod_adrem: TBCDField
      DisplayLabel = 'Ad Rem ICMS'
      FieldName = 'prod_adrem'
      Origin = 'prod_adrem'
      Precision = 10
    end
    object Produtosprod_codANP: TStringField
      DisplayLabel = 'ANP'
      FieldName = 'prod_codANP'
      Origin = 'prod_codANP'
      Size = 9
    end
    object Produtosprod_codbenef: TStringField
      DisplayLabel = 'C'#243'digo benef'#237'cio'
      FieldName = 'prod_codbenef'
      Origin = 'prod_codbenef'
      Size = 8
    end
    object Produtosprod_dthrcad: TStringField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'prod_dthrcad'
      Origin = 'prod_dthrcad'
      Size = 50
    end
    object Produtosprod_dtalt: TStringField
      DisplayLabel = 'Data de altera'#231#227'o'
      FieldName = 'prod_dtalt'
      Origin = 'prod_dtalt'
      Size = 50
    end
    object Produtosprod_dtrev: TStringField
      DisplayLabel = 'Data de revis'#227'o'
      FieldName = 'prod_dtrev'
      Origin = 'prod_dtrev'
      Size = 50
    end
    object Produtosprod_status: TStringField
      DisplayLabel = 'Status'
      FieldName = 'prod_status'
      Origin = 'prod_status'
      Size = 1
    end
    object Produtosprod_dtconsumo: TStringField
      DisplayLabel = 'Data de consumo'
      FieldName = 'prod_dtconsumo'
      Origin = 'prod_dtconsumo'
      Size = 50
    end
    object Produtosprod_vVenda: TBCDField
      FieldName = 'prod_vVenda'
      Origin = 'prod_vVenda'
      Visible = False
      Precision = 10
      Size = 2
    end
    object ProdutosvDAS_IMDS: TBCDField
      FieldName = 'vDAS_IMDS'
      Origin = 'vDAS_IMDS'
      Visible = False
      Precision = 9
    end
    object ProdutostpImposto: TStringField
      FieldName = 'tpImposto'
      Origin = 'tpImposto'
      Visible = False
      Size = 3
    end
    object Produtosprod_pIsencao: TBCDField
      DisplayLabel = 'Al'#237'quota de Isen'#231#227'o'
      FieldName = 'prod_pIsencao'
      Origin = 'prod_pIsencao'
      Precision = 9
      Size = 2
    end
    object Produtosprod_descriCosmos: TStringField
      FieldName = 'prod_descriCosmos'
      Origin = 'prod_descriCosmos'
      Visible = False
      Size = 250
    end
    object Produtosprod_marca: TStringField
      FieldName = 'prod_marca'
      Origin = 'prod_marca'
      Visible = False
      Size = 150
    end
    object Produtosprod_gpcCodigo: TStringField
      FieldName = 'prod_gpcCodigo'
      Origin = 'prod_gpcCodigo'
      Visible = False
      Size = 50
    end
    object Produtosprod_gpcCosmos: TStringField
      FieldName = 'prod_gpcCosmos'
      Origin = 'prod_gpcCosmos'
      Visible = False
      Size = 150
    end
    object Produtosmarcado: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Marcado'
      FieldName = 'marcado'
      Origin = 'marcado'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
end
