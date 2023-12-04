inherited formExportacao: TformExportacao
  Caption = 'Exporta'#231#227'o'
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
        DataController.DataSource = ds
        object TableViewCODIGOBARRA: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGOBARRA'
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
            F8000000097048597300000B1300000B1301009A9C180000005049444154789C
            ED94410AC0300804FDFFB3227DD7140C295262CE12764E8B73104435136D001E
            C0535EF8C157CE770D829C77B5BFAF9C1A7C684481B62898C3D0A1D9E5AFC281
            91F2621C7CE5228B1EBC43F4B6D40EA9A1EF0000000049454E44AE426082}
        end
        object TableViewCODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
            F8000000097048597300000B1300000B1301009A9C18000000DC49444154789C
            ED94CD0A824014857D852022EC85B29D8B827A902CDAD8267A38237A85DC4649
            B611A42FA4594CC3F833236DCA0FDC78E6DE73E78C8EE374FC17C01008810390
            021720023685D6B6F90CB851CE05F06D9B4F819C7A726062134BD5E42A09D033
            31D82A0D326009B8E209C43B99B589C151290E346B02CC8901AF287E2882AB31
            70B1E3EC884CBF6A706A10D1CAA639302E8AF78A9089CCAB0E39D40CF1812C8C
            80BBC1645760A03188E5E95571013C1BFE687EC9D7E8099377349A05F39A9D24
            D65785645264BE13079F0AC3485C80FD56CD3B7E97172D781B2197944C460000
            000049454E44AE426082}
        end
        object TableViewDESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.SourceHeight = 24
          HeaderGlyph.SourceWidth = 24
          HeaderGlyph.Data = {
            89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
            87000000097048597300000B1300000B1301009A9C180000014B49444154789C
            ED99414EC330104507D67001BAE62E2D77A0E256D01BB40B76C0018073148964
            5755225CE05523B96A0526769A481DD3799237B1E5CC8F47F9635BC4711CE75F
            03DC001FC037F0064C81F3D0EE80F7D0A76326620DA0E637CFC04BE47925D600
            3EC9A7166B685A00CB8CE097C058AC025C000F91C0EFB54F4A001845045C4949
            FC8C5E4AC3059CC40A00D7C06370C843893A6B4A003BE7DEA2312CF407D025F8
            35C3501D20A0FE63AE559688F0E539A280AA65BE798E803E699374D60C019316
            E7FECA11D0FA82BE749D9FAEF1B88004BE02293C8512780A9D420A350CC350B5
            506723D3C20983B5507629310A8593B55A6895BDFDD481AAB6673A0D550B3521
            161B7BE79400F3B8806353F40A50F2C1167009CC220266DA27564938EB3E66EF
            078A3F5EAF22813E854B8E222E38B6CEAA8EFA0ADC0267A14DC3B3C6FCFD80E3
            388EC4D8009C99AD2E56FD39F70000000049454E44AE426082}
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
      object btnExportar: TcxButton
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
        Caption = 'Exportar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000000097048597300000B1300000B1301009A9C180000011849444154789C
          DDD4314A03411487F158A45304C14AB1B111BD451A095EC0C603585A69230882
          7800AB94161EC2C2C218103D85A865C40B849FACCC4ADC8CD99DEC6AE107AFD9
          9DF97FFBE60DDB6AFD3BB08317E5BCE16016C1B3344E52059F545D1738FF6D41
          75490D814A334910F44D326C4C90B42FE16A96D2D4D54C16E46CE3345437DF50
          C8D8C5060E23F9A332C10356433D460423CCE315C711C1459920632BD457CBBE
          7389755C159EF730572618602DD42022C8FE3F4778C252A5F042400767A13AC5
          A185357BD8C47EA5F09AB7A89785631137B8C6424CD04D948CB2818E85DF8FBD
          BB8B4A8AC735B5E500DA85F09CEC37D26E352058C17B4430C4F24F9BCA8EAA5F
          EBC32ACCE3B66EE733F117826CB013DD7D00D2DB005390B3834F000000004945
          4E44AE426082}
        TabOrder = 3
        OnClick = btnExportarClick
      end
    end
  end
  inherited Localizer: TcxLocalizer
    Left = 716
    Top = 168
  end
  inherited StyledForm: TscStyledForm
    Left = 632
    Top = 136
  end
  inherited ComponentPrinter: TdxComponentPrinter
    Left = 552
    Top = 144
    PixelsPerInch = 96
    inherited GridPrinter: TdxGridReportLink
      ReportDocument.CreationDate = 45259.482222314810000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object ds: TDataSource
    DataSet = MemData
    Left = 896
    Top = 176
  end
  object dlgExportGridExcel: TdxSaveFileDialog
    Filter = '*.xlsx|Planilha Excel'
    FilterIndex = 0
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 900
    Top = 341
  end
  object MemData: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    AfterOpen = MemDataAfterOpen
    Left = 536
    Top = 336
    object MemDataCODIGOBARRA: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'CODIGOBARRA'
    end
    object MemDataCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 6
    end
    object MemDataDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
end
