object formMain: TformMain
  Left = 0
  Top = 0
  Caption = 'IMendes'
  ClientHeight = 709
  ClientWidth = 1053
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
    Width = 1053
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
    ExplicitWidth = 1047
    object tabGeral: TdxRibbonTab
      Active = True
      Caption = 'Geral'
      Groups = <
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
    Top = 689
    Width = 1053
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
        Text = '29/11/2023'
        Style = spsDate
        Width = 80
        Progress.Level0Fill.Color = clLime
        Progress.Level1Fill.Color = clYellow
        Progress.Level2Fill.Color = 42495
        Progress.Level3Fill.Color = clRed
        Progress.Position = 0
      end
      item
        Text = '11:50:55'
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
    ExplicitTop = 680
    ExplicitWidth = 1047
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
      Caption = 'Exporta'#231#227'o/importa'#231#227'o'
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
          ItemName = 'buttonExportacao'
        end
        item
          Visible = True
          ItemName = 'buttonImportar'
        end>
      OneOnRow = True
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
