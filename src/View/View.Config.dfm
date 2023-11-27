object formConfig: TformConfig
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es'
  ClientHeight = 179
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI Semibold'
  Font.Style = []
  Font.Quality = fqClearType
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnlMain: TdxPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 179
    Align = alClient
    Frame.Visible = False
    TabOrder = 0
    ExplicitWidth = 860
    ExplicitHeight = 170
    object pnlBottom: TdxPanel
      Left = 0
      Top = 122
      Width = 866
      Height = 57
      Align = alBottom
      Frame.Borders = [bBottom]
      Frame.Visible = False
      TabOrder = 0
      ExplicitTop = 113
      ExplicitWidth = 860
      object btnSalvar: TcxButton
        AlignWithMargins = True
        Left = 626
        Top = 10
        Width = 100
        Height = 37
        Margins.Left = 20
        Margins.Top = 10
        Margins.Right = 15
        Margins.Bottom = 10
        Align = alRight
        Caption = 'Salvar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000000097048597300000B1300000B1301009A9C180000013E49444154789C
          ED94BD4A03511085378A4921A48ED1C63A3E41880F107C025FC1F89742106C7C
          8BA4F65D6222A808826D0A6DB5888A3FCD27176661BCAEBB33AB761EB8EC327B
          F67CF7CE0E9B24FFF208D800EEF0E901E85B01B794D7B10590AA6DF076DC90D4
          653A6EF269435AFDBF06DC5B5EE818C2D7BFFB18DE1DB9F55B80EBD06F600DA8
          038B400BD8FF29E0258400F3456D2C037805BAE2AD013BC00478923506B681AA
          17F0061C020DF12D035739FE4BA0E9011C284FAD203CD5C59793E4981BCAB35B
          107C024CE5BE6705AC28CF99AA3F47BE21500156E5D9D80A38529E47A94D2568
          188557546D6605BC873917CF4CB5220DDCCC08CF04E4FDAE5BE299C42D917A1C
          1E741A03BA39903DF18439D71A0073728DB59578055465CEB56E32C2CF810537
          4020CD0C481CBE542A3C3A492FF459262BAC51688BDEF9076855B1961784DB5D
          0000000049454E44AE426082}
        TabOrder = 0
        OnClick = btnSalvarClick
        ExplicitLeft = 620
      end
      object lblRegistros: TcxLabel
        Left = 0
        Top = 0
        Align = alLeft
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.Font.Quality = fqClearType
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 29
      end
      object btnCancelar: TcxButton
        AlignWithMargins = True
        Left = 746
        Top = 10
        Width = 100
        Height = 37
        Margins.Left = 5
        Margins.Top = 10
        Margins.Right = 20
        Margins.Bottom = 10
        Align = alRight
        Caption = 'Cancelar'
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
        ExplicitLeft = 740
      end
    end
    object Layout: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 866
      Height = 122
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      TabOrder = 1
      LayoutLookAndFeel = dxLayoutCxLookAndFeel1
      ExplicitWidth = 860
      ExplicitHeight = 113
      object edtBanco: TcxButtonEdit
        Left = 186
        Top = 19
        Properties.Buttons = <
          item
            Action = LocalizarBancoEco
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 0
        Width = 661
      end
      object edtFBClient: TcxButtonEdit
        Left = 186
        Top = 59
        Properties.Buttons = <
          item
            Action = LocalizarFBClient
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Width = 661
      end
      object LayoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = LayoutGroup_Root
        AlignHorz = ahClient
        AllowRemove = False
        CaptionOptions.Text = 'Banco de dados Eco:'
        Control = edtBanco
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 279
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = LayoutGroup_Root
        CaptionOptions.Text = 'FBClient'
        Control = edtFBClient
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 200
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object ActionList1: TActionList
    Left = 760
    Top = 304
    object LocalizarBancoEco: TAction
      Caption = 'LocalizarBancoEco'
      OnExecute = LocalizarBancoEcoExecute
    end
    object LocalizarFBClient: TAction
      Caption = 'LocalizarFBClient'
      OnExecute = LocalizarFBClientExecute
    end
  end
  object dlgBancoEco: TdxOpenFileDialog
    FileName = 'c:\ecosis\dados\ecodados.eco'
    Filter = 'Banco de dados|*.eco;*.fdb|Todos os arquivos|*'
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 424
    Top = 328
  end
  object dlgFBClient: TdxOpenFileDialog
    FileName = 'c:\ecosis\windows\fbclient.dll'
    Filter = 'DLL|*.dll'
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 536
    Top = 328
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
    Left = 624
    Top = 376
  end
end
