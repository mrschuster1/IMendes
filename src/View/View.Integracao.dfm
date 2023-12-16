inherited formIntegracao: TformIntegracao
  Caption = 'Integra'#231#227'o'
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
        Navigator.Buttons.Filter.Visible = True
        Navigator.Visible = True
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = TableViewCustomDrawCell
        DataController.DataSource = DataSource
        DataController.MultiThreadedOptions.Filtering = bTrue
        DataController.MultiThreadedOptions.Sorting = bTrue
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object TableViewMarcado: TcxGridDBColumn
          DataBinding.FieldName = 'marcado'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'T'
          Properties.ValueUnchecked = 'F'
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 45
          OnHeaderClick = TableViewMarcadoHeaderClick
        end
        object TableViewprod_codInterno: TcxGridDBColumn
          DataBinding.FieldName = 'prod_codInterno'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Width = 195
        end
        object TableViewprod_descricao: TcxGridDBColumn
          DataBinding.FieldName = 'prod_descricao'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Width = 195
        end
        object TableViewprod_EAN: TcxGridDBColumn
          DataBinding.FieldName = 'prod_EAN'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Width = 195
        end
        object TableViewprod_NCM: TcxGridDBColumn
          DataBinding.FieldName = 'prod_NCM'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Width = 195
        end
        object TableViewprod_CEST: TcxGridDBColumn
          DataBinding.FieldName = 'prod_CEST'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Width = 195
        end
      end
      object GridDBLayoutView1: TcxGridDBLayoutView
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
        DataController.DataSource = DataSource
        DataController.DetailKeyFieldNames = 'prod_codInterno'
        DataController.KeyFieldNames = 'prod_codInterno'
        DataController.MasterKeyFieldNames = 'prod_codInterno'
        DataController.MultiThreadedOptions.Filtering = bTrue
        DataController.MultiThreadedOptions.Sorting = bTrue
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ItemFiltering = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.RecordCaption.Visible = False
        OptionsView.ShowItemFilterButtons = sfbWhenSelected
        OptionsView.SingleRecordStretch = srsHorizontal
        object GridDBLayoutView1DBLayoutViewItem1: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_CFOPCompra'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem1
        end
        object GridDBLayoutView1DBLayoutViewItem2: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_CFOPVenda'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem2
        end
        object GridDBLayoutView1DBLayoutViewItem3: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_CST'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem3
        end
        object GridDBLayoutView1DBLayoutViewItem4: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_CSOSN'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem4
        end
        object GridDBLayoutView1DBLayoutViewItem5: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_modBC'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem5
        end
        object GridDBLayoutView1DBLayoutViewItem6: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pICMS'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem6
        end
        object GridDBLayoutView1DBLayoutViewItem7: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pICMSPDV'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem7
        end
        object GridDBLayoutView1DBLayoutViewItem8: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_simbPDV'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem8
        end
        object GridDBLayoutView1DBLayoutViewItem9: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pRedBCICMS'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem9
        end
        object GridDBLayoutView1DBLayoutViewItem10: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pRedBCICMSST'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem10
        end
        object GridDBLayoutView1DBLayoutViewItem11: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_modBCST'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem11
        end
        object GridDBLayoutView1DBLayoutViewItem12: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pICMSST'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem12
        end
        object GridDBLayoutView1DBLayoutViewItem13: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pMVAST'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem13
        end
        object GridDBLayoutView1DBLayoutViewItem14: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_vPautaST'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem14
        end
        object GridDBLayoutView1DBLayoutViewItem15: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_NCM'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem15
        end
        object GridDBLayoutView1DBLayoutViewItem16: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_CEST'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem16
        end
        object GridDBLayoutView1DBLayoutViewItem17: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pIPI'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem17
        end
        object GridDBLayoutView1DBLayoutViewItem18: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_CSTIPI'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem18
        end
        object GridDBLayoutView1DBLayoutViewItem19: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_CSTPISCOFINSEntrada'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem19
        end
        object GridDBLayoutView1DBLayoutViewItem20: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_CSTPISCOFINSSaida'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem20
        end
        object GridDBLayoutView1DBLayoutViewItem21: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_naturezaReceitaIsentaPISCOFINS'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem21
        end
        object GridDBLayoutView1DBLayoutViewItem22: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pFCP'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem22
        end
        object GridDBLayoutView1DBLayoutViewItem23: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_antecipado'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem23
        end
        object GridDBLayoutView1DBLayoutViewItem24: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pDesoneracao'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem24
        end
        object GridDBLayoutView1DBLayoutViewItem25: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pDifer'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem25
        end
        object GridDBLayoutView1DBLayoutViewItem26: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_lista'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem26
        end
        object GridDBLayoutView1DBLayoutViewItem27: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_tipo'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem27
        end
        object GridDBLayoutView1DBLayoutViewItem28: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_aliqPIS'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem28
        end
        object GridDBLayoutView1DBLayoutViewItem29: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_aliqCOFINS'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem29
        end
        object GridDBLayoutView1DBLayoutViewItem30: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_adrem'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem30
        end
        object GridDBLayoutView1DBLayoutViewItem31: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_codANP'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem31
        end
        object GridDBLayoutView1DBLayoutViewItem32: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_codbenef'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem32
        end
        object GridDBLayoutView1DBLayoutViewItem33: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_dthrcad'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem33
        end
        object GridDBLayoutView1DBLayoutViewItem34: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_dtalt'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem34
        end
        object GridDBLayoutView1DBLayoutViewItem35: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_dtrev'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem35
        end
        object GridDBLayoutView1DBLayoutViewItem36: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_status'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem36
        end
        object GridDBLayoutView1DBLayoutViewItem37: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_dtconsumo'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem37
        end
        object GridDBLayoutView1DBLayoutViewItem38: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'prod_pIsencao'
          DataBinding.IsNullValueType = True
          LayoutItem = GridDBLayoutView1LayoutItem38
        end
        object GridDBLayoutView1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Template Layout'
          Hidden = True
          ItemIndex = 5
          LayoutDirection = ldTabbed
          ScrollOptions.Horizontal = smAuto
          ShowBorder = False
          Index = -1
        end
        object GridDBLayoutView1LayoutItem1: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup12
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1LayoutItem2: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup12
          AlignVert = avClient
          Index = 1
        end
        object GridDBLayoutView1LayoutItem3: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup13
          AlignHorz = ahClient
          AlignVert = avClient
          Index = 1
        end
        object GridDBLayoutView1LayoutItem4: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup13
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1LayoutItem5: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup2
          Index = 2
        end
        object GridDBLayoutView1LayoutItem6: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup2
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 0
        end
        object GridDBLayoutView1LayoutItem7: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 0
        end
        object GridDBLayoutView1LayoutItem8: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup3
          AlignHorz = ahLeft
          Index = 1
        end
        object GridDBLayoutView1LayoutItem9: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup2
          AlignHorz = ahLeft
          Index = 1
        end
        object GridDBLayoutView1LayoutItem10: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup2
          Index = 4
        end
        object GridDBLayoutView1LayoutItem11: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup2
          AlignHorz = ahLeft
          Index = 5
        end
        object GridDBLayoutView1LayoutItem12: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup2
          AlignHorz = ahLeft
          Index = 3
        end
        object GridDBLayoutView1LayoutItem13: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup4
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1LayoutItem14: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup4
          Index = 1
        end
        object GridDBLayoutView1LayoutItem15: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup14
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1LayoutItem16: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup14
          AlignVert = avClient
          Index = 1
        end
        object GridDBLayoutView1LayoutItem17: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup5
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1LayoutItem18: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup5
          AlignVert = avClient
          Index = 1
        end
        object GridDBLayoutView1LayoutItem19: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup6
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1LayoutItem20: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup6
          AlignVert = avClient
          Index = 1
        end
        object GridDBLayoutView1LayoutItem21: TcxGridLayoutItem
          Parent = GridDBLayoutView1Group4
          Index = 2
        end
        object GridDBLayoutView1LayoutItem22: TcxGridLayoutItem
          Parent = GridDBLayoutView1Group8
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1LayoutItem23: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup3
          Index = 2
        end
        object GridDBLayoutView1LayoutItem24: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup3
          Index = 3
        end
        object GridDBLayoutView1LayoutItem25: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup3
          Index = 4
        end
        object GridDBLayoutView1LayoutItem26: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup11
          AlignVert = avClient
          Index = 1
        end
        object GridDBLayoutView1LayoutItem27: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup11
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1LayoutItem28: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup7
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1LayoutItem29: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup7
          AlignVert = avClient
          Index = 1
        end
        object GridDBLayoutView1LayoutItem30: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup3
          Index = 6
        end
        object GridDBLayoutView1LayoutItem31: TcxGridLayoutItem
          Parent = GridDBLayoutView1Group_Root
          Index = 5
        end
        object GridDBLayoutView1LayoutItem32: TcxGridLayoutItem
          Parent = GridDBLayoutView1Group_Root
          Index = 6
        end
        object GridDBLayoutView1LayoutItem33: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup9
          Index = 0
        end
        object GridDBLayoutView1LayoutItem34: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup10
          AlignVert = avClient
          Index = 0
        end
        object GridDBLayoutView1LayoutItem35: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup9
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 1
        end
        object GridDBLayoutView1LayoutItem36: TcxGridLayoutItem
          Parent = GridDBLayoutView1Group5
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 1
        end
        object GridDBLayoutView1LayoutItem37: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup10
          AlignHorz = ahClient
          AlignVert = avClient
          Index = 1
        end
        object GridDBLayoutView1LayoutItem38: TcxGridLayoutItem
          Parent = GridDBLayoutView1AutoCreatedGroup3
          Index = 5
        end
        object GridDBLayoutView1Group1: TdxLayoutGroup
          Parent = GridDBLayoutView1Group_Root
          CaptionOptions.Text = 'CFOP/CST/CSOSN'
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object GridDBLayoutView1AutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1Group1
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1Group2: TdxLayoutGroup
          Parent = GridDBLayoutView1Group_Root
          CaptionOptions.Text = 'ICMS'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object GridDBLayoutView1AutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1Group2
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1AutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1Group2
          AlignHorz = ahLeft
          Index = 1
        end
        object GridDBLayoutView1AutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1AutoCreatedGroup2
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 6
        end
        object GridDBLayoutView1Group3: TdxLayoutGroup
          Parent = GridDBLayoutView1Group_Root
          CaptionOptions.Text = 'IPI'
          Index = 3
        end
        object GridDBLayoutView1AutoCreatedGroup5: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1Group3
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object GridDBLayoutView1Group4: TdxLayoutGroup
          Parent = GridDBLayoutView1Group_Root
          CaptionOptions.Text = 'PIS/COFINS'
          ItemIndex = 2
          Index = 4
        end
        object GridDBLayoutView1AutoCreatedGroup6: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1Group4
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object GridDBLayoutView1AutoCreatedGroup7: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1Group4
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object GridDBLayoutView1Group5: TdxLayoutGroup
          Parent = GridDBLayoutView1Group_Root
          CaptionOptions.Text = 'Cadastro'
          ItemIndex = 1
          Index = 7
        end
        object GridDBLayoutView1AutoCreatedGroup8: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1Group5
          AlignHorz = ahLeft
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object GridDBLayoutView1AutoCreatedGroup9: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1AutoCreatedGroup8
          AlignHorz = ahLeft
          Index = 0
        end
        object GridDBLayoutView1AutoCreatedGroup10: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1AutoCreatedGroup8
          AlignHorz = ahClient
          Index = 1
        end
        object GridDBLayoutView1Group6: TdxLayoutGroup
          Parent = GridDBLayoutView1Group_Root
          CaptionOptions.Text = 'Medicamento'
          Index = 8
        end
        object GridDBLayoutView1AutoCreatedGroup11: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1Group6
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object GridDBLayoutView1AutoCreatedGroup12: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1AutoCreatedGroup1
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object GridDBLayoutView1AutoCreatedGroup13: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1AutoCreatedGroup1
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object GridDBLayoutView1Group7: TdxLayoutGroup
          Parent = GridDBLayoutView1Group_Root
          CaptionOptions.Text = 'NCM/CEST'
          Index = 1
        end
        object GridDBLayoutView1AutoCreatedGroup14: TdxLayoutAutoCreatedGroup
          Parent = GridDBLayoutView1Group7
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object GridDBLayoutView1Group8: TdxLayoutGroup
          Parent = GridDBLayoutView1Group_Root
          CaptionOptions.Text = 'Outras al'#237'quotas'
          Index = 9
        end
      end
      object GridLevel1: TcxGridLevel
        Caption = 'GridLevel1'
        GridView = TableView
        object GridLevel2: TcxGridLevel
          Caption = 'GridLevel2'
          GridView = GridDBLayoutView1
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
        ExplicitWidth = 882
        Width = 888
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
      ReportDocument.CreationDate = 45276.341147974530000000
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
  object MemData: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedFields = 'ID'
    Left = 768
    Top = 296
    object Marcado: TBooleanField
      FieldName = 'Marcado'
    end
  end
  object DataSource: TDataSource
    DataSet = MemData
    OnStateChange = DataSourceStateChange
    Left = 832
    Top = 304
  end
end
