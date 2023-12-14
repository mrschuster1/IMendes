object formMain: TformMain
  Left = 0
  Top = 0
  Caption = 'IMendes'
  ClientHeight = 700
  ClientWidth = 1047
  Color = 2434341
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI Semibold'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  FormStyle = fsMDIForm
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 15
  object Ribbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 1047
    Height = 157
    ApplicationButton.Menu = ribbonMenu
    BarManager = BarManager
    CapitalizeTabCaptions = bDefault
    Style = rs2019
    ColorSchemeName = 'Office2019Black'
    Fonts.ApplicationButton.Charset = DEFAULT_CHARSET
    Fonts.ApplicationButton.Color = clWindowText
    Fonts.ApplicationButton.Height = -12
    Fonts.ApplicationButton.Name = 'Segoe UI Semibold'
    Fonts.ApplicationButton.Style = []
    Fonts.ApplicationButton.Quality = fqClearTypeNatural
    Fonts.AssignedFonts = [afTabHeader, afGroup, afGroupHeader, afApplicationButton]
    Fonts.Group.Charset = DEFAULT_CHARSET
    Fonts.Group.Color = 15856113
    Fonts.Group.Height = -12
    Fonts.Group.Name = 'Segoe UI Semibold'
    Fonts.Group.Style = []
    Fonts.Group.Quality = fqClearTypeNatural
    Fonts.GroupHeader.Charset = DEFAULT_CHARSET
    Fonts.GroupHeader.Color = 15856113
    Fonts.GroupHeader.Height = -12
    Fonts.GroupHeader.Name = 'Segoe UI Semibold'
    Fonts.GroupHeader.Style = []
    Fonts.GroupHeader.Quality = fqClearTypeNatural
    Fonts.TabHeader.Charset = DEFAULT_CHARSET
    Fonts.TabHeader.Color = clWindowText
    Fonts.TabHeader.Height = -12
    Fonts.TabHeader.Name = 'Segoe UI Semibold'
    Fonts.TabHeader.Style = []
    Fonts.TabHeader.Quality = fqClearTypeNatural
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    ExplicitWidth = 1041
    object tabGeral: TdxRibbonTab
      Active = True
      Caption = 'Geral'
      Groups = <
        item
          ToolbarName = 'gpIntegracao'
        end
        item
          ToolbarName = 'groupExportaImporta'
        end>
      Index = 0
    end
    object tabConfig: TdxRibbonTab
      Caption = 'Configura'#231#245'es'
      Groups = <
        item
          ToolbarName = 'groupGeral'
        end>
      Index = 1
    end
  end
  object ribbonMenu: TdxRibbonBackstageView
    Left = 8
    Top = 166
    Width = 577
    Height = 266
    Buttons = <>
    Ribbon = Ribbon
  end
  object StatusBar: TTMSFNCStatusBar
    Left = 0
    Top = 680
    Width = 1047
    Height = 20
    ParentDoubleBuffered = False
    Color = 68106
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    ParentFont = False
    TabOrder = 2
    Panels = <
      item
        Text = '13/12/2023'
        Style = spsDate
        Width = 80
        Progress.Level0Fill.Color = clLime
        Progress.Level1Fill.Color = clYellow
        Progress.Level2Fill.Color = 42495
        Progress.Level3Fill.Color = clRed
        Progress.Position = 0
      end
      item
        Text = '23:41:00'
        Style = spsTime
        Width = 70
        Progress.Level0Fill.Color = clLime
        Progress.Level1Fill.Color = clYellow
        Progress.Level2Fill.Color = 42495
        Progress.Level3Fill.Color = clRed
        Progress.Position = 0
      end
      item
        AutoSize = True
        Style = spsText
        Width = 25
        Progress.Level0Fill.Color = clLime
        Progress.Level1Fill.Color = clYellow
        Progress.Level2Fill.Color = 42495
        Progress.Level3Fill.Color = clRed
        Progress.Position = 0
      end
      item
        AutoSize = True
        Style = spsText
        Width = 25
        Progress.Level0Fill.Color = clLime
        Progress.Level1Fill.Color = clYellow
        Progress.Level2Fill.Color = 42495
        Progress.Level3Fill.Color = clRed
        Progress.Position = 0
      end>
    PanelAppearance.Font.Charset = DEFAULT_CHARSET
    PanelAppearance.Font.Color = clWhite
    PanelAppearance.Font.Height = -11
    PanelAppearance.Font.Name = 'Segoe UI Semibold'
    PanelAppearance.Font.Style = []
    PanelAppearance.Font.Quality = fqClearTypeNatural
    PanelAppearance.Fill.Color = 68106
    PanelAppearance.Stroke.Color = 68106
    ExplicitTop = 671
    ExplicitWidth = 1041
  end
  object BarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 992
    Top = 184
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object groupGeral: TdxBar
      Caption = 'Geral'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1078
      FloatTop = 3
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'buttonConfig'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object groupExportaImporta: TdxBar
      Caption = 'Exporta'#231#227'o/importa'#231#227'o manual'
      CaptionButtons = <>
      DockedLeft = 144
      DockedTop = 0
      FloatLeft = 1078
      FloatTop = 3
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'buttonExportacao'
        end
        item
          Visible = True
          ItemName = 'buttonImportar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object gpIntegracao: TdxBar
      Caption = 'Integra'#231#227'o'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1072
      FloatTop = 3
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnIntegracao'
        end
        item
          Visible = True
          ItemName = 'btnProdutos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object buttonConfig: TdxBarLargeButton
      Caption = 'Configura'#231#245'es'
      Category = 0
      Hint = 'Configura'#231#245'es'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672066696C6C3D22234646464646462220786D6C6E
        733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076
        696577426F783D22302030203234203234222077696474683D22323470782220
        6865696768743D2232347078223E0D0A093C7061746820643D224D2031302E34
        3930323334203220432031302E303131323334203220392E3630313736353620
        322E3333383539333820392E3530393736353620322E38303835393338204C20
        392E3137353738313220342E35323334333735204320382E3335353032323420
        342E3833333830313220372E3539363130343220352E3236373430343120362E
        3932393638373520352E38313434353331204C20352E3238353135363220352E
        32343830343639204320342E3833323135363320352E3039323034363920342E
        333333373520352E3237393335393420342E303933373520352E363933333539
        34204C20322E3538353933373520382E33303636343036204320322E33343639
        33373520382E3732313634303620322E3433333932313920392E323438352032
        2E3739343932313920392E35363235204C20342E313133323831322031302E37
        3038393834204320342E303434373138312031312E3133303333372034203131
        2E3535393238342034203132204320342031322E34343037313620342E303434
        373138312031322E38363936363320342E313133323831322031332E32393130
        3136204C20322E373934393231392031342E34333735204320322E3433333932
        31392031342E3735313520322E333436393337352031352E3237383335392032
        2E353835393337352031352E363933333539204C20342E30393337352031382E
        333036363431204320342E33333237352031382E37323136343120342E383332
        313536322031382E39303839303620352E323835313536322031382E37353339
        3036204C20362E393239363837352031382E31383735204320372E3539353838
        34322031382E37333432303620382E333535333933342031392E313636333339
        20392E313735373831322031392E343736353632204C20392E35303937363536
        2032312E313931343036204320392E363031373635362032312E363631343036
        2031302E3031313233342032322031302E343930323334203232204C2031332E
        35303937363620323220432031332E3938383736362032322031342E33393832
        33342032312E3636313430362031342E3439303233342032312E313931343036
        204C2031342E3832343231392031392E34373635363220432031352E36343439
        37382031392E3136363139392031362E3430333839362031382E373332353936
        2031372E3037303331322031382E313835353437204C2031382E373134383434
        2031382E37353139353320432031392E3136373834342031382E393037393533
        2031392E36363632352031382E3732313634312031392E39303632352031382E
        333036363431204C2032312E3431343036322031352E36393134303620432032
        312E3635333036332031352E3237363430362032312E3536363037382031342E
        373531352032312E3230353037382031342E34333735204C2031392E38383637
        31392031332E32393130313620432031392E3935353238322031322E38363936
        36332032302031322E34343037313620323020313220432032302031312E3535
        393238342031392E3935353238322031312E3133303333372031392E38383637
        31392031302E373038393834204C2032312E32303530373820392E3536323520
        432032312E35363630373820392E323438352032312E36353330363320382E37
        3231363430362032312E34313430363220382E33303636343036204C2031392E
        393036323520352E3639333335393420432031392E363637323520352E323738
        333539342031392E31363738343420352E303931303933372031382E37313438
        343420352E32343630393338204C2031372E30373033313220352E3831323520
        432031362E34303431313620352E323635373933372031352E36343436303720
        342E383333363630392031342E38323432313920342E35323334333735204C20
        31342E34393032333420322E3830383539333820432031342E33393832333420
        322E333338353933372031332E39383837363620322031332E35303937363620
        32204C2031302E3439303233342032207A204D203132203820432031342E3230
        39203820313620392E37393120313620313220432031362031342E3230392031
        342E323039203136203132203136204320392E37393120313620382031342E32
        303920382031322043203820392E37393120392E37393120382031322038207A
        222F3E0D0A3C2F7376673E0D0A}
      OnClick = buttonConfigClick
    end
    object buttonExportacao: TdxBarLargeButton
      Caption = 'Exporta'#231#227'o'
      Category = 0
      Hint = 'Exporta'#231#227'o'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
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
      OnClick = buttonExportacaoClick
    end
    object buttonImportar: TdxBarLargeButton
      Caption = 'Importa'#231#227'o'
      Category = 0
      Hint = 'Importa'#231#227'o'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
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
      OnClick = buttonImportarClick
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btnIntegracao: TdxBarLargeButton
      Caption = 'Integra'#231#227'o'
      Category = 0
      Hint = 'Integra'#231#227'o'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.SourceHeight = 24
      LargeGlyph.SourceWidth = 24
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
        38000000097048597300000B1300000B1301009A9C180000046049444154789C
        ED9C4D8B5C4514860B749919E30746638282486034887FC011A204C16491E84A
        0271E3C7685414716996AE746524C485C19D0463CC0751C43FA13071E5177195
        98F438032633F191A2AB310C33B72ADD754E55DD390F340C4D57DFF79CB7BAEE
        AD5335E59C611886611886611886611886618C01F00030079C03E681C5F09A0F
        EFBD066CAD5CFF7BC019E0776029E8BF009C07DE00B6BBDA00EE033E059689E3
        3F7304D8E22AC1770AE08B44FD2BC067DE2C5703C0B3C0556E9D2BC0EE0AF4EF
        0716C6D0EFDBEC2D2DFE95D023C6650578B9A0FE37817F27D07FC37F47C99E3F
        49F247AC94F825002F84044ECA0DF55F4218F3C71976BA86A32D8AFAEF0FD7CC
        C582EAC345B8E1E6E61345FDC705F41FD37C544B795AB855AEFB9EA9F4C4734D
        40BF1F4AB7398500FC737E8C1F813DC0A6F0F27FFF94D0EED5440D8F02DF0003
        EAE2750D03CE26247F6A8D765309269C4EB8FE4EE06FEAE4AC58E26F4AC0CF11
        11CF75B4DD1B693B9F70FDEFA8970BD913BE46026293964D1D6DA7236D1722D7
        BE2DDC2B6AA5537F16427DA48BA9090C588C5CDB0C007E8B24715F47029F8FB4
        FD25A1036CF821E8742489BF0277AF91B87B12CC3B9560C086BF09BF439C3F80
        83C083C043C04BC0C584766FC70C0826CC005F679ECDE660CE299521242632FF
        00F72A4D2425F42FAB4CC44210C7040238AA227EA8FFF396F58FC6F34B19C55F
        F2DFA95C8CFB2BA3FE814619657510BB33D58496816754C5FFFF4496AB1CBD47
        5BFF288803134E8CAE032F16113FD47F28C382CCA152FA47413C0DFC3986F88B
        C0AEA2E287FAF78D59D41B74955D540136031F2716C9FC673E02EE7095104AD4
        C7137FCD7EC83CAA3EE6A700DC9510C09DAE5218DE9CDFF555D930A15C0A1D66
        3E5481E7D41E35C72596FDD2FA7A8F19501833A030664061CC80C29801853103
        0AD3270380DBFD32A86B893E18003C01FC106A3D7EC3D5F7C0E3AE055A370078
        789D928A7FEF31573B3D30E0D4241BC78AD30303168BEEFB9994C8B6F52BAE72
        68BC03C57EC2275DE5D0030366D6B989F92D8D33AE7268DD809B364F7D1BB67F
        5C0B7FEF740D401F0C58B597B3A9890C7D32A0453003CA620614C60C288C1950
        1833A0306640619A30C09F99039C18F39491D52C005F013B2A88EB7082DEC335
        24FF32F9B95C72D75962F2CB9B107ABE145F3690FCB226641A76D663D048F2CB
        998030AE9DE48FF85053736F0C204FF2F54D4018D75EF2754D4018D766F2F54C
        4018D76EF2754C9056EFE474BF851E7227294A2B77329AA7134E79C989DFDA32
        2D114BAB063C853EB312B1B46AC02CFA3C29114BAB064C4576BCE566B1EBE0AA
        498311C5C91E53AC85DC7FCF4B2B778200EF4BEB073E908CA16903144C904D7E
        084014A7809009F2C90FE245714A64364127F941B8284E914C26E8255F6141E6
        AA6A308D2EC8F80574294EA807D4E092E40EC145F9478A04D5D2A27C10BBCD2F
        A0673A3E7E1016FA8B25BFA96D297D87EE1BB3EE0D77A3C2B06CB1B4AAB653F6
        70BE8D06C33584D9F09229AC198661188661188661184E9DFF009730F293120F
        82B10000000049454E44AE426082}
      OnClick = btnIntegracaoClick
    end
    object btnProdutos: TdxBarLargeButton
      Caption = 'Produtos'
      Category = 0
      Hint = 'Produtos'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000B1300000B1301009A9C180000005049444154789C
        ED94410AC0300804FDFFB3227DD7140C295262CE12764E8B73104435136D001E
        C0535EF8C157CE770D829C77B5BFAF9C1A7C684481B62898C3D0A1D9E5AFC281
        91F2621C7CE5228B1EBC43F4B6D40EA9A1EF0000000049454E44AE426082}
    end
  end
  object dxSkinController: TdxSkinController
    NativeStyle = False
    ScrollbarMode = sbmHybrid
    ScrollMode = scmSmooth
    SkinName = 'Office2019Black'
    FormCorners = fcRounded
    SkinPaletteName = 'Forest'
    ShowFormShadow = bTrue
    Left = 896
    Top = 116
  end
  object Localizer: TcxLocalizer
    Left = 800
    Top = 160
  end
  object StyledForm: TscStyledForm
    FluentUIBackground = scfuibNone
    FluentUIAcrylicColor = clBtnFace
    FluentUIAcrylicColorAlpha = 100
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = False
    DWMClientRoundedCornersType = scDWMRoundedCornersDefault
    DWMClientShadow = False
    DWMClientShadowHitTest = False
    DropDownForm = False
    DropDownAnimation = False
    DropDownBorderColor = clBtnShadow
    StylesMenuSorted = False
    ShowStylesMenu = False
    StylesMenuCaption = 'Styles'
    ClientWidth = 0
    ClientHeight = 0
    ShowHints = True
    Buttons = <>
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -15
    ButtonFont.Name = 'Segoe UI'
    ButtonFont.Style = []
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -15
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = [fsBold]
    CaptionAlignment = taLeftJustify
    InActiveClientColor = 3421236
    InActiveClientColorAlpha = 100
    InActiveClientBlurAmount = 5
    Tabs = <>
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clWindowText
    TabFont.Height = -15
    TabFont.Name = 'Segoe UI'
    TabFont.Style = []
    ShowButtons = True
    ShowTabs = True
    TabIndex = 0
    TabsPosition = sctpLeft
    ShowInactiveTab = True
    CaptionWallpaperIndex = -1
    CaptionWallpaperInActiveIndex = -1
    CaptionWallpaperLeftMargin = 1
    CaptionWallpaperTopMargin = 1
    CaptionWallpaperRightMargin = 1
    CaptionWallpaperBottomMargin = 1
    Left = 808
    Top = 232
  end
  object MDITabs: TdxTabbedMDIManager
    Active = True
    TabProperties.AllowTabDragDrop = True
    TabProperties.CloseButtonMode = cbmEveryTab
    TabProperties.CloseTabWithMiddleClick = True
    TabProperties.CustomButtons.Buttons = <>
    TabProperties.HotTrack = True
    TabProperties.MultiLine = True
    TabProperties.Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoRedrawOnResize]
    Left = 656
    Top = 184
    PixelsPerInch = 96
  end
end
