inherited formImportacao: TformImportacao
  Caption = 'Importa'#231#227'o'
  ClientHeight = 667
  ClientWidth = 1082
  TextHeight = 15
  inherited pnlMain: TdxPanel
    Width = 1082
    Height = 667
    inherited Grid: TcxGrid
      Width = 1042
      Height = 570
      inherited TableView: TcxGridDBTableView
        DataController.DataSource = DataSource
        DataController.KeyFieldNames = 'ID'
        OptionsView.ColumnAutoWidth = False
        object TableViewRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
          Width = 74
        end
        object TableViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Width = 144
        end
        object TableViewEAN: TcxGridDBColumn
          DataBinding.FieldName = 'EAN'
          Width = 144
        end
        object TableViewCodigoInterno: TcxGridDBColumn
          DataBinding.FieldName = 'CodigoInterno'
          Width = 144
        end
        object TableViewCodigoIMendes: TcxGridDBColumn
          DataBinding.FieldName = 'CodigoIMendes'
          Width = 144
        end
        object TableViewStatus: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          Width = 144
        end
        object TableViewDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
          Width = 144
        end
        object TableViewNCM: TcxGridDBColumn
          DataBinding.FieldName = 'NCM'
          Width = 144
        end
        object TableViewCEST: TcxGridDBColumn
          DataBinding.FieldName = 'CEST'
          Width = 144
        end
        object TableViewPercIPI: TcxGridDBColumn
          DataBinding.FieldName = 'PercIPI'
          Width = 144
        end
        object TableViewCSTIPI: TcxGridDBColumn
          DataBinding.FieldName = 'CSTIPI'
          Width = 144
        end
        object TableViewCSTPisCofinsEnt: TcxGridDBColumn
          DataBinding.FieldName = 'CSTPisCofinsEnt'
          Width = 144
        end
        object TableViewCSTPisCofinsSai: TcxGridDBColumn
          DataBinding.FieldName = 'CSTPisCofinsSai'
          Width = 144
        end
        object TableViewNatRecIsentaPisCofins: TcxGridDBColumn
          DataBinding.FieldName = 'NatRecIsentaPisCofins'
          Width = 144
        end
        object TableViewLista: TcxGridDBColumn
          DataBinding.FieldName = 'Lista'
          Width = 144
        end
        object TableViewTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 144
        end
        object TableViewPercPIS: TcxGridDBColumn
          DataBinding.FieldName = 'PercPIS'
          Width = 144
        end
        object TableViewPercCOFINS: TcxGridDBColumn
          DataBinding.FieldName = 'PercCOFINS'
          Width = 144
        end
        object TableViewCFOPCompra: TcxGridDBColumn
          DataBinding.FieldName = 'CFOPCompra'
          Width = 144
        end
        object TableViewCFOPVenda: TcxGridDBColumn
          DataBinding.FieldName = 'CFOPVenda'
          Width = 144
        end
        object TableViewCST: TcxGridDBColumn
          DataBinding.FieldName = 'CST'
          Width = 144
        end
        object TableViewCSOSN: TcxGridDBColumn
          DataBinding.FieldName = 'CSOSN'
          Width = 144
        end
        object TableViewModBC: TcxGridDBColumn
          DataBinding.FieldName = 'ModBC'
          Width = 144
        end
        object TableViewPercICMS: TcxGridDBColumn
          DataBinding.FieldName = 'PercICMS'
          Width = 144
        end
        object TableViewPercICMSPDV: TcxGridDBColumn
          DataBinding.FieldName = 'PercICMSPDV'
          Width = 144
        end
        object TableViewSimbPDV: TcxGridDBColumn
          DataBinding.FieldName = 'SimbPDV'
          Width = 144
        end
        object TableViewPercRedBCICMS: TcxGridDBColumn
          DataBinding.FieldName = 'PercRedBCICMS'
          Width = 144
        end
        object TableViewPercRedBCICMSST: TcxGridDBColumn
          DataBinding.FieldName = 'PercRedBCICMSST'
          Width = 144
        end
        object TableViewModBCST: TcxGridDBColumn
          DataBinding.FieldName = 'ModBCST'
          Width = 144
        end
        object TableViewPercICMSST: TcxGridDBColumn
          DataBinding.FieldName = 'PercICMSST'
          Width = 144
        end
        object TableViewIVA: TcxGridDBColumn
          DataBinding.FieldName = 'IVA'
          Width = 144
        end
        object TableViewPautaST: TcxGridDBColumn
          DataBinding.FieldName = 'PautaST'
          Width = 144
        end
        object TableViewPercFCP: TcxGridDBColumn
          DataBinding.FieldName = 'PercFCP'
          Width = 144
        end
        object TableViewAntecipado: TcxGridDBColumn
          DataBinding.FieldName = 'Antecipado'
          Width = 144
        end
        object TableViewPercDesoneracao: TcxGridDBColumn
          DataBinding.FieldName = 'PercDesoneracao'
          Width = 144
        end
        object TableViewPercDiferimento: TcxGridDBColumn
          DataBinding.FieldName = 'PercDiferimento'
          Width = 144
        end
        object TableViewPercIsencao: TcxGridDBColumn
          DataBinding.FieldName = 'PercIsencao'
          Width = 144
        end
        object TableViewaDRemICMS: TcxGridDBColumn
          DataBinding.FieldName = 'aDRemICMS'
          Width = 144
        end
        object TableViewCodANP: TcxGridDBColumn
          DataBinding.FieldName = 'CodANP'
          Width = 144
        end
        object TableViewCodBeneficio: TcxGridDBColumn
          DataBinding.FieldName = 'CodBeneficio'
          Width = 144
        end
        object TableViewDataAlteracao: TcxGridDBColumn
          DataBinding.FieldName = 'DataAlteracao'
          Width = 144
        end
        object TableViewDataRevisao: TcxGridDBColumn
          DataBinding.FieldName = 'DataRevisao'
          Width = 144
        end
        object TableViewDataUltimoConsumo: TcxGridDBColumn
          DataBinding.FieldName = 'DataUltimoConsumo'
          Width = 144
        end
        object TableViewCodigoGPC: TcxGridDBColumn
          DataBinding.FieldName = 'CodigoGPC'
          Width = 144
        end
      end
    end
    inherited pnlTop: TdxPanel
      Width = 1082
      inherited lblRegistros: TcxLabel
        Left = 1053
        AnchorX = 1062
        AnchorY = 29
      end
      inherited edtPesquisa: TcxTextEdit
        Left = 273
        ExplicitLeft = 273
        ExplicitWidth = 764
        ExplicitHeight = 37
        Width = 770
      end
      inherited buttonImprimirGrade: TcxButton
        Left = 144
        Margins.Left = 10
        ExplicitLeft = 144
      end
      object btnImportar: TcxButton
        AlignWithMargins = True
        Left = 20
        Top = 10
        Width = 109
        Height = 37
        Margins.Left = 20
        Margins.Top = 10
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Importar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000000097048597300000B1300000B1301009A9C180000011849444154789C
          DDD4314A034114C6F134E91441B0896263237A8B3412BC808D07B0B431368220
          88E748E12144041382A2A7906819B1B5909FAC4C44C70DBBB35941FCE0153BF3
          E6FBEF7BF39846E3DF09DB7854AC67EC57018CA4E93815F0A1B2794167BF0D28
          0F9901A0D49D2400067E6A5C1B20E95CC26816AAAED14C064CB48593109DC981
          C86307EBE85601DC6125C47D0EE00D7378C2511540A6CD109F077C570F6B38CF
          F1EF170186580D31CC0164EFCF211EB018D65E718056AE7964D0C66988765C72
          C8D9C506F6C27777AA714D53D40A1E59C58369804E45483FEE42996ACA2546FA
          53805189D65C87DC65BCE4EC8FB134CB7D5C86DC266E73F6B397B699DA85693F
          B4809B2FE6D934CDD7621E41AE70119BBF03867408533C21DEEE000000004945
          4E44AE426082}
        TabOrder = 3
        OnClick = btnImportarClick
      end
    end
  end
  inherited StyledForm: TscStyledForm
    Top = 128
  end
  inherited ComponentPrinter: TdxComponentPrinter
    Left = 512
    Top = 176
    PixelsPerInch = 96
    inherited GridPrinter: TdxGridReportLink
      ReportDocument.CreationDate = 45259.496029537040000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object dialogExcel: TdxOpenFileDialog
    Filter = 'Planilha Excel|*.csv;*.xlsx'
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 664
    Top = 208
  end
  object DataSource: TDataSource
    DataSet = MemData
    Left = 832
    Top = 208
  end
  object ImportCSV: TQImport3ASCII
    DataSet = MemData
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = '.'
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'dd/mm/yyyy'
    Formats.LongDateFormat = 'dddd, d'#39' de '#39'mmmm'#39' de '#39'yyyy'
    Formats.ShortTimeFormat = 'hh:nn'
    Formats.LongTimeFormat = 'hh:nn:ss'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    OnAfterImport = ImportCSVAfterImport
    Comma = ';'
    Quote = '"'
    Left = 576
    Top = 208
  end
  object MemData: TdxMemData
    Indexes = <
      item
        FieldName = 'ID'
        SortOptions = []
      end>
    SortOptions = []
    SortedFields = 'ID'
    Left = 752
    Top = 208
    object ID: TStringField
      DisplayLabel = 'Id'
      FieldName = 'ID'
    end
    object EAN: TStringField
      FieldName = 'EAN'
    end
    object CodigoInterno: TStringField
      DisplayLabel = 'C'#243'digo interno'
      FieldName = 'CodigoInterno'
    end
    object CodigoIMendes: TStringField
      DisplayLabel = 'C'#243'digo IMendes'
      FieldName = 'CodigoIMendes'
    end
    object Status: TStringField
      FieldName = 'Status'
    end
    object Descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
    end
    object NCM: TStringField
      FieldName = 'NCM'
    end
    object CEST: TStringField
      FieldName = 'CEST'
    end
    object IPI: TStringField
      DisplayLabel = '% IPI'
      FieldName = 'PercIPI'
    end
    object CSTIPI: TStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'CSTIPI'
    end
    object CSTPisCofinsEntrada: TStringField
      DisplayLabel = 'CST Pis Cofins Entrada'
      FieldName = 'CSTPisCofinsEnt'
    end
    object CSTPisCofinsSaida: TStringField
      DisplayLabel = 'CST Pis Cofins Sa'#237'da'
      FieldName = 'CSTPisCofinsSai'
    end
    object NatRecIsentaPisCofins: TStringField
      DisplayLabel = 'Natureza de receita isenta Pis Cofins'
      FieldName = 'NatRecIsentaPisCofins'
    end
    object LIsta: TStringField
      FieldName = 'Lista'
    end
    object Tipo: TStringField
      FieldName = 'Tipo'
    end
    object PIS: TStringField
      DisplayLabel = '% PIS'
      FieldName = 'PercPIS'
    end
    object Cofins: TStringField
      DisplayLabel = '% COFINS'
      FieldName = 'PercCOFINS'
    end
    object CFOPCompra: TStringField
      DisplayLabel = 'CFOP Compra'
      FieldName = 'CFOPCompra'
    end
    object CFOPVenda: TStringField
      DisplayLabel = 'CFOP Venda'
      FieldName = 'CFOPVenda'
    end
    object CST: TStringField
      FieldName = 'CST'
    end
    object CSOSN: TStringField
      FieldName = 'CSOSN'
    end
    object ModBC: TStringField
      DisplayLabel = 'Mod. BC'
      FieldName = 'ModBC'
    end
    object ICMS: TStringField
      DisplayLabel = '% ICMS'
      FieldName = 'PercICMS'
    end
    object ICMSPDV: TStringField
      DisplayLabel = '% ICMS PDV'
      FieldName = 'PercICMSPDV'
    end
    object SimbPDV: TStringField
      FieldName = 'SimbPDV'
    end
    object RedBCICMS: TStringField
      DisplayLabel = '% Redu'#231#227'o BC ICMS'
      FieldName = 'PercRedBCICMS'
    end
    object RedBCICMSST: TStringField
      DisplayLabel = '% Redu'#231#227'o BC ICMS ST'
      FieldName = 'PercRedBCICMSST'
    end
    object ModBCST: TStringField
      DisplayLabel = 'Mod. BC ST'
      FieldName = 'ModBCST'
    end
    object ICMSST: TStringField
      DisplayLabel = '% ICMS ST'
      FieldName = 'PercICMSST'
    end
    object IVA: TStringField
      FieldName = 'IVA'
    end
    object PautaST: TStringField
      FieldName = 'PautaST'
    end
    object FCP: TStringField
      DisplayLabel = '% FCP'
      FieldName = 'PercFCP'
    end
    object Antecipado: TStringField
      FieldName = 'Antecipado'
    end
    object Desoneracao: TStringField
      DisplayLabel = '% Desoneracao'
      FieldName = 'PercDesoneracao'
    end
    object Diferimento: TStringField
      DisplayLabel = '% Diferimento'
      FieldName = 'PercDiferimento'
    end
    object Isencao: TStringField
      DisplayLabel = '% Isencao'
      FieldName = 'PercIsencao'
    end
    object aDRemICMS: TStringField
      FieldName = 'aDRemICMS'
    end
    object ANP: TStringField
      DisplayLabel = 'C'#243'd. ANP'
      FieldName = 'CodANP'
    end
    object CodigoBeneficio: TStringField
      DisplayLabel = 'C'#243'd. Benef'#205'cio'
      FieldName = 'CodBeneficio'
    end
    object DataAlteracao: TStringField
      DisplayLabel = 'Data de altera'#231#227'o'
      FieldName = 'DataAlteracao'
    end
    object DataRevisao: TStringField
      DisplayLabel = 'Data de revis'#227'o'
      FieldName = 'DataRevisao'
    end
    object DataUltimoConsumo: TStringField
      DisplayLabel = 'Data do '#250'ltimo consumo'
      FieldName = 'DataUltimoConsumo'
    end
    object CodigoGPC: TStringField
      DisplayLabel = 'C'#243'digo GPC'
      FieldName = 'CodigoGPC'
    end
  end
end
