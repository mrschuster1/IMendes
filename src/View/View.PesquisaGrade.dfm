inherited formPesquisaGrade: TformPesquisaGrade
  Caption = 'Pesquisa'
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 1094
  ExplicitHeight = 705
  TextHeight = 15
  inherited pnlMain: TdxPanel
    ExplicitWidth = 1076
    ExplicitHeight = 658
    object Grid: TcxGrid
      AlignWithMargins = True
      Left = 20
      Top = 77
      Width = 1042
      Height = 570
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 0
      ExplicitWidth = 1036
      ExplicitHeight = 561
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
        Navigator.Buttons.Filter.Visible = True
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.Active = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = TableViewCustomDrawCell
        DataController.KeyFieldNames = 'CODIGO'
        DataController.MultiThreadedOptions.Filtering = bTrue
        DataController.MultiThreadedOptions.Sorting = bTrue
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.FixedColumnSeparatorWidth = 0
        OptionsView.GridLineColor = clNone
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.HeaderHeight = 35
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
      end
      object GridLevel1: TcxGridLevel
        Caption = 'cxGrid1Level1'
        GridView = TableView
      end
    end
    object pnlTop: TdxPanel
      Left = 0
      Top = 0
      Width = 1082
      Height = 57
      Align = alTop
      Frame.Borders = [bBottom]
      Frame.Visible = False
      TabOrder = 1
      ExplicitWidth = 1076
      object lblRegistros: TcxLabel
        AlignWithMargins = True
        Left = 1053
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
        ExplicitLeft = 1047
        AnchorX = 1062
        AnchorY = 29
      end
      object edtPesquisa: TcxTextEdit
        AlignWithMargins = True
        Left = 149
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
        ExplicitWidth = 878
        Width = 894
      end
      object buttonImprimirGrade: TcxButton
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
    end
  end
  object ComponentPrinter: TdxComponentPrinter
    CurrentLink = GridPrinter
    Version = 0
    Left = 496
    Top = 72
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
      ReportDocument.CreationDate = 45259.492557858790000000
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
end
