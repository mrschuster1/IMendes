inherited formImportacao: TformImportacao
  Caption = 'Importa'#231#227'o'
  ClientHeight = 658
  ClientWidth = 1076
  TextHeight = 15
  inherited pnlMain: TdxPanel
    Width = 1076
    Height = 658
    ExplicitWidth = 1070
    ExplicitHeight = 649
    object Grid: TcxGrid
      AlignWithMargins = True
      Left = 20
      Top = 77
      Width = 1036
      Height = 504
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 0
      ExplicitWidth = 1030
      ExplicitHeight = 495
      object TableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = TableViewCustomDrawCell
        DataController.DataSource = DataSource
        DataController.KeyFieldNames = 'CodigoInterno'
        DataController.MultiThreadedOptions.Filtering = bTrue
        DataController.MultiThreadedOptions.Sorting = bTrue
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object TableViewMarcado: TcxGridDBColumn
          DataBinding.FieldName = 'Marcado'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Options.Sorting = False
          OnHeaderClick = TableViewMarcadoHeaderClick
        end
        object TableViewCodigoInterno: TcxGridDBColumn
          DataBinding.FieldName = 'CodigoInterno'
          Options.Editing = False
          Width = 133
        end
        object TableViewDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
          Options.Editing = False
          Width = 133
        end
        object TableViewEAN: TcxGridDBColumn
          DataBinding.FieldName = 'EAN'
          Options.Editing = False
          Width = 133
        end
        object TableViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Options.Editing = False
          Width = 133
        end
        object TableViewNCM: TcxGridDBColumn
          DataBinding.FieldName = 'NCM'
          Options.Editing = False
          Width = 133
        end
        object TableViewCodigoIMendes: TcxGridDBColumn
          DataBinding.FieldName = 'CodigoIMendes'
          Options.Editing = False
          Width = 133
        end
        object TableViewStatus: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          Options.Editing = False
          Width = 133
        end
      end
      object LayoutView: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = TableViewCustomDrawCell
        DataController.DataSource = DataSource
        DataController.DetailKeyFieldNames = 'CodigoInterno'
        DataController.KeyFieldNames = 'CodigoInterno'
        DataController.MasterKeyFieldNames = 'CodigoInterno'
        DataController.MultiThreadedOptions.Filtering = bTrue
        DataController.MultiThreadedOptions.Sorting = bTrue
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ItemFiltering = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ShowItemFilterButtons = sfbWhenSelected
        OptionsView.SingleRecordStretch = srsHorizontal
        object LayoutViewDBLayoutViewItem1: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CEST'
          Visible = False
          LayoutItem = LayoutViewLayoutItem1
        end
        object LayoutViewDBLayoutViewItem2: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercIPI'
          LayoutItem = LayoutViewLayoutItem2
        end
        object LayoutViewDBLayoutViewItem3: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CSTIPI'
          LayoutItem = LayoutViewLayoutItem3
        end
        object LayoutViewDBLayoutViewItem4: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CSTPisCofinsEnt'
          LayoutItem = LayoutViewLayoutItem4
        end
        object LayoutViewDBLayoutViewItem5: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CSTPisCofinsSai'
          LayoutItem = LayoutViewLayoutItem5
        end
        object LayoutViewDBLayoutViewItem6: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'NatRecIsentaPisCofins'
          LayoutItem = LayoutViewLayoutItem6
        end
        object LayoutViewDBLayoutViewItem7: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Lista'
          LayoutItem = LayoutViewLayoutItem7
        end
        object LayoutViewDBLayoutViewItem8: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Tipo'
          LayoutItem = LayoutViewLayoutItem8
        end
        object LayoutViewDBLayoutViewItem9: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercPIS'
          LayoutItem = LayoutViewLayoutItem9
        end
        object LayoutViewDBLayoutViewItem10: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercCOFINS'
          LayoutItem = LayoutViewLayoutItem10
        end
        object LayoutViewDBLayoutViewItem11: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CFOPCompra'
          LayoutItem = LayoutViewLayoutItem11
        end
        object LayoutViewDBLayoutViewItem12: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CFOPVenda'
          LayoutItem = LayoutViewLayoutItem12
        end
        object LayoutViewDBLayoutViewItem13: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CST'
          LayoutItem = LayoutViewLayoutItem13
        end
        object LayoutViewDBLayoutViewItem14: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CSOSN'
          LayoutItem = LayoutViewLayoutItem14
        end
        object LayoutViewDBLayoutViewItem15: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'ModBC'
          LayoutItem = LayoutViewLayoutItem15
        end
        object LayoutViewDBLayoutViewItem16: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercICMS'
          LayoutItem = LayoutViewLayoutItem16
        end
        object LayoutViewDBLayoutViewItem17: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercICMSPDV'
          LayoutItem = LayoutViewLayoutItem17
        end
        object LayoutViewDBLayoutViewItem18: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'SimbPDV'
          LayoutItem = LayoutViewLayoutItem18
        end
        object LayoutViewDBLayoutViewItem19: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercRedBCICMS'
          LayoutItem = LayoutViewLayoutItem19
        end
        object LayoutViewDBLayoutViewItem20: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercRedBCICMSST'
          LayoutItem = LayoutViewLayoutItem20
        end
        object LayoutViewDBLayoutViewItem21: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'ModBCST'
          LayoutItem = LayoutViewLayoutItem21
        end
        object LayoutViewDBLayoutViewItem22: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercICMSST'
          LayoutItem = LayoutViewLayoutItem22
        end
        object LayoutViewDBLayoutViewItem23: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'IVA'
          LayoutItem = LayoutViewLayoutItem23
        end
        object LayoutViewDBLayoutViewItem24: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PautaST'
          LayoutItem = LayoutViewLayoutItem24
        end
        object LayoutViewDBLayoutViewItem25: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercFCP'
          LayoutItem = LayoutViewLayoutItem25
        end
        object LayoutViewDBLayoutViewItem26: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Antecipado'
          LayoutItem = LayoutViewLayoutItem26
        end
        object LayoutViewDBLayoutViewItem27: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercDesoneracao'
          LayoutItem = LayoutViewLayoutItem27
        end
        object LayoutViewDBLayoutViewItem28: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercDiferimento'
          LayoutItem = LayoutViewLayoutItem28
        end
        object LayoutViewDBLayoutViewItem29: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PercIsencao'
          LayoutItem = LayoutViewLayoutItem29
        end
        object LayoutViewGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Template Layout'
          Hidden = True
          LayoutDirection = ldTabbed
          ScrollOptions.Horizontal = smAuto
          ShowBorder = False
          Index = -1
        end
        object LayoutViewLayoutItem1: TcxGridLayoutItem
          AlignVert = avClient
          Index = -1
        end
        object LayoutViewLayoutItem2: TcxGridLayoutItem
          Parent = LayoutViewGroup2
          Index = 1
        end
        object LayoutViewLayoutItem3: TcxGridLayoutItem
          Parent = LayoutViewGroup2
          Index = 0
        end
        object LayoutViewLayoutItem4: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          Index = 0
        end
        object LayoutViewLayoutItem5: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          Index = 1
        end
        object LayoutViewLayoutItem6: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          Index = 4
        end
        object LayoutViewLayoutItem7: TcxGridLayoutItem
          Parent = LayoutViewGroup_Root
          Index = 4
        end
        object LayoutViewLayoutItem8: TcxGridLayoutItem
          Parent = LayoutViewGroup_Root
          Index = 5
        end
        object LayoutViewLayoutItem9: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          Index = 2
        end
        object LayoutViewLayoutItem10: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          Index = 3
        end
        object LayoutViewLayoutItem11: TcxGridLayoutItem
          Parent = LayoutViewGroup4
          Index = 3
        end
        object LayoutViewLayoutItem12: TcxGridLayoutItem
          Parent = LayoutViewGroup4
          Index = 0
        end
        object LayoutViewLayoutItem13: TcxGridLayoutItem
          Parent = LayoutViewGroup4
          Index = 1
        end
        object LayoutViewLayoutItem14: TcxGridLayoutItem
          Parent = LayoutViewGroup4
          Index = 2
        end
        object LayoutViewLayoutItem15: TcxGridLayoutItem
          Parent = LayoutViewGroup1
          Index = 8
        end
        object LayoutViewLayoutItem16: TcxGridLayoutItem
          Parent = LayoutViewGroup1
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 1
        end
        object LayoutViewLayoutItem17: TcxGridLayoutItem
          Parent = LayoutViewGroup1
          Index = 2
        end
        object LayoutViewLayoutItem18: TcxGridLayoutItem
          Parent = LayoutViewGroup_Root
          Index = 6
        end
        object LayoutViewLayoutItem19: TcxGridLayoutItem
          Parent = LayoutViewGroup1
          Index = 6
        end
        object LayoutViewLayoutItem20: TcxGridLayoutItem
          Parent = LayoutViewGroup1
          Index = 4
        end
        object LayoutViewLayoutItem21: TcxGridLayoutItem
          Parent = LayoutViewGroup1
          Index = 5
        end
        object LayoutViewLayoutItem22: TcxGridLayoutItem
          Parent = LayoutViewGroup1
          Index = 3
        end
        object LayoutViewLayoutItem23: TcxGridLayoutItem
          Parent = LayoutViewGroup_Root
          Index = 7
        end
        object LayoutViewLayoutItem24: TcxGridLayoutItem
          Parent = LayoutViewAutoCreatedGroup1
          AlignHorz = ahLeft
          Index = 0
        end
        object LayoutViewLayoutItem25: TcxGridLayoutItem
          Parent = LayoutViewGroup_Root
          Index = 8
        end
        object LayoutViewLayoutItem26: TcxGridLayoutItem
          Parent = LayoutViewAutoCreatedGroup1
          AlignVert = avClient
          Index = 1
        end
        object LayoutViewLayoutItem27: TcxGridLayoutItem
          Parent = LayoutViewGroup1
          Index = 7
        end
        object LayoutViewLayoutItem28: TcxGridLayoutItem
          Parent = LayoutViewGroup1
          Index = 0
        end
        object LayoutViewLayoutItem29: TcxGridLayoutItem
          Parent = LayoutViewAutoCreatedGroup1
          Index = 2
        end
        object LayoutViewGroup1: TdxLayoutGroup
          Parent = LayoutViewGroup_Root
          CaptionOptions.Text = 'ICMS'
          ButtonOptions.DefaultHeight = 39
          ButtonOptions.DefaultWidth = 39
          ItemIndex = 9
          Index = 0
        end
        object LayoutViewGroup2: TdxLayoutGroup
          Parent = LayoutViewGroup_Root
          CaptionOptions.Text = 'IPI'
          ButtonOptions.DefaultHeight = 31
          ButtonOptions.DefaultWidth = 31
          ItemIndex = 1
          Index = 1
        end
        object LayoutViewGroup3: TdxLayoutGroup
          Parent = LayoutViewGroup_Root
          CaptionOptions.Text = 'PIS/COFINS'
          ButtonOptions.DefaultHeight = 31
          ButtonOptions.DefaultWidth = 31
          ItemIndex = 4
          Index = 2
        end
        object LayoutViewGroup4: TdxLayoutGroup
          Parent = LayoutViewGroup_Root
          CaptionOptions.Text = 'CST/CFOP/CSOSN'
          ButtonOptions.DefaultHeight = 25
          ButtonOptions.DefaultWidth = 25
          ItemIndex = 2
          Index = 3
        end
        object LayoutViewAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = LayoutViewGroup1
          LayoutDirection = ldHorizontal
          Index = 9
        end
      end
      object GridLevel1: TcxGridLevel
        Caption = 'cxGrid1Level1'
      end
      object GridLevel2: TcxGridLevel
        Caption = 'GridLevel2'
        GridView = TableView
        object GridLevel3: TcxGridLevel
          Caption = 'GridLevel3'
          GridView = LayoutView
        end
      end
    end
    object pnlTop: TdxPanel
      Left = 0
      Top = 0
      Width = 1076
      Height = 57
      Align = alTop
      Frame.Borders = [bBottom]
      Frame.Visible = False
      TabOrder = 1
      ExplicitWidth = 1070
      object lblRegistros: TcxLabel
        AlignWithMargins = True
        Left = 1047
        Top = 0
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alRight
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.Font.Quality = fqClearType
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        ExplicitLeft = 1041
        AnchorX = 1056
        AnchorY = 29
      end
      object edtPesquisa: TcxTextEdit
        AlignWithMargins = True
        Left = 273
        Top = 10
        Margins.Left = 15
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Properties.OnChange = edtPesquisaPropertiesChange
        Style.BorderStyle = ebsNone
        TabOrder = 1
        TextHint = ' Pesquisar'
        ExplicitWidth = 758
        Width = 764
      end
      object buttonImprimirGrade: TcxButton
        AlignWithMargins = True
        Left = 144
        Top = 10
        Width = 109
        Height = 37
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Imprimir'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000000097048597300000B1300000B1301009A9C180000009949444154789C
          ED92CD0DC2300C467D62003A0B9411CA64B46B51B1085559E3A1487068E5A6CE
          0F5214F14E89E27C2FB223522DC0033B638C200829513006E4DFA57E80033000
          2FE29981DE65690277908B9B2670F6144E40FB59CF9A20953370F96E7E215850
          94E0E8F9794D88603215AED8C87F6A85574D223B68E14027D68B92A9CEF7B2C6
          328318813A1373CF0D027526D13DFF231BBC0172D3ACB9E8E8CFD20000000049
          454E44AE426082}
        TabOrder = 2
        OnClick = buttonImprimirGradeClick
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
    object pnlBottom: TdxPanel
      Left = 0
      Top = 601
      Width = 1076
      Height = 57
      Align = alBottom
      Frame.Borders = [bBottom]
      Frame.Visible = False
      TabOrder = 2
      ExplicitTop = 592
      ExplicitWidth = 1070
      object cxLabel1: TcxLabel
        AlignWithMargins = True
        Left = 1047
        Top = 0
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alRight
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.Font.Quality = fqClearType
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        ExplicitLeft = 1041
        AnchorX = 1056
        AnchorY = 29
      end
      object btnProcessar: TcxButton
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
        Caption = 'Processar'
        Enabled = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000000097048597300000B1300000B1301009A9C180000007449444154789C
          EDD4BD09C2601485E190466C22B88653388E9B3887BB648A805921758A3C728B
          4006C869E47BE1B4F785FBD7758D066E9558273063C10B7D427064C423292856
          BC71490976263C938262C307F79460A716E19A147C53822DD9A22935E435B9A6
          63E2D0E6F4AB182AA7176EFC0F3F214363C716400BB10000000049454E44AE42
          6082}
        TabOrder = 1
        OnClick = btnProcessarClick
      end
      object btnCancelar: TcxButton
        AlignWithMargins = True
        Left = 144
        Top = 10
        Width = 109
        Height = 37
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Cancelar'
        Enabled = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000000097048597300000B1300000B1301009A9C180000009049444154789C
          ED94411240300C457B091DEE7F123646D58685E33CD361C32809B5C15F75A6C9
          7F6992A931BFBE29A0023C6005B116E880520370CC1A8E208B7988096A34800C
          E897C411280431B9187006E1AEF9118454E6913E0F9BF3E9125C79499ACA0580
          2295B97DAC457B0395ACF0657313BFD34124ABC81D08D04AFACC7A3E4E03A895
          9F9D0F3962C0AF776902E6C4A0AD55D6C2480000000049454E44AE426082}
        TabOrder = 2
        OnClick = btnCancelarClick
      end
    end
  end
  inherited Localizer: TcxLocalizer
    Left = 692
    Top = 144
  end
  inherited StyledForm: TscStyledForm
    Left = 600
    Top = 160
  end
  object ComponentPrinter: TdxComponentPrinter
    CurrentLink = GridPrinter
    Version = 0
    Left = 528
    Top = 184
    PixelsPerInch = 96
    object GridPrinter: TdxGridReportLink
      Active = True
      Component = Grid
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Imrpess'#227'o - IMendes'
      ReportDocument.CreationDate = 45273.755858483800000000
      ReportDocument.Creator = 'IMendes'
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
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
    Left = 600
    Top = 304
  end
  object dialogExcel: TdxOpenFileDialog
    Filter = 'Planilha Excel|*.csv;*.xlsx'
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 696
    Top = 304
  end
  object MemData: TdxMemData
    Indexes = <
      item
        FieldName = 'ID'
        SortOptions = []
      end>
    SortOptions = []
    SortedFields = 'ID'
    Left = 768
    Top = 296
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
    object IPI: TFloatField
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
    object PIS: TFloatField
      DisplayLabel = '% PIS'
      FieldName = 'PercPIS'
    end
    object Cofins: TFloatField
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
    object ICMS: TFloatField
      DisplayLabel = '% ICMS'
      FieldName = 'PercICMS'
    end
    object ICMSPDV: TFloatField
      DisplayLabel = '% ICMS PDV'
      FieldName = 'PercICMSPDV'
    end
    object SimbPDV: TStringField
      FieldName = 'SimbPDV'
    end
    object RedBCICMS: TFloatField
      DisplayLabel = '% Redu'#231#227'o BC ICMS'
      FieldName = 'PercRedBCICMS'
    end
    object RedBCICMSST: TFloatField
      DisplayLabel = '% Redu'#231#227'o BC ICMS ST'
      FieldName = 'PercRedBCICMSST'
    end
    object ModBCST: TFloatField
      DisplayLabel = 'Mod. BC ST'
      FieldName = 'ModBCST'
    end
    object ICMSST: TFloatField
      DisplayLabel = '% ICMS ST'
      FieldName = 'PercICMSST'
    end
    object IVA: TFloatField
      FieldName = 'IVA'
    end
    object PautaST: TFloatField
      FieldName = 'PautaST'
    end
    object FCP: TFloatField
      DisplayLabel = '% FCP'
      FieldName = 'PercFCP'
    end
    object Antecipado: TStringField
      FieldName = 'Antecipado'
    end
    object Desoneracao: TFloatField
      DisplayLabel = '% Desoneracao'
      FieldName = 'PercDesoneracao'
    end
    object Diferimento: TFloatField
      DisplayLabel = '% Diferimento'
      FieldName = 'PercDiferimento'
    end
    object aDRemICMS: TFloatField
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
    object Marcado: TBooleanField
      FieldName = 'Marcado'
    end
    object Isencao: TFloatField
      FieldName = 'PercIsencao'
    end
  end
  object DataSource: TDataSource
    DataSet = MemData
    OnStateChange = DataSourceStateChange
    Left = 832
    Top = 304
  end
end
