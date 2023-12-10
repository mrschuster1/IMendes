object formConfig: TformConfig
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es'
  ClientHeight = 554
  ClientWidth = 892
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
    Width = 892
    Height = 554
    Align = alClient
    Frame.Visible = False
    TabOrder = 0
    ExplicitWidth = 886
    ExplicitHeight = 545
    object pnlBottom: TdxPanel
      Left = 0
      Top = 497
      Width = 892
      Height = 57
      Align = alBottom
      Frame.Borders = [bBottom]
      Frame.Visible = False
      TabOrder = 0
      ExplicitTop = 488
      ExplicitWidth = 886
      object btnSalvar: TcxButton
        AlignWithMargins = True
        Left = 652
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
        ExplicitLeft = 646
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
        Left = 772
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
        ExplicitLeft = 766
      end
    end
    object Layout: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 892
      Height = 497
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
      ExplicitWidth = 886
      ExplicitHeight = 488
      object edtBanco: TcxButtonEdit
        Left = 186
        Top = 61
        Properties.Buttons = <
          item
            Action = LocalizarBancoEco
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Width = 687
      end
      object edtFBClient: TcxButtonEdit
        Left = 186
        Top = 101
        Properties.Buttons = <
          item
            Action = LocalizarFBClient
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 2
        Width = 687
      end
      object lblConexao: TcxLabel
        Left = 19
        Top = 19
        Caption = 'Conex'#227'o'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -23
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.Font.Quality = fqClearType
        Style.HotTrack = False
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lblCaminhos: TcxLabel
        Left = 19
        Top = 161
        Caption = 'Diret'#243'rios padr'#227'o'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -23
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.Font.Quality = fqClearType
        Style.HotTrack = False
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object edtExportacao: TcxButtonEdit
        Left = 186
        Top = 243
        Properties.Buttons = <
          item
            Action = LocalizarPastaExportacao
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 5
        Width = 463
      end
      object edtImportacao: TcxButtonEdit
        Left = 186
        Top = 283
        Properties.Buttons = <
          item
            Action = LocalizarPastaImportacao
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 7
        Width = 463
      end
      object checkSalvarAutomatico: TcxCheckBox
        Left = 664
        Top = 243
        Caption = 'Salvar automaticamente'
        Properties.Alignment = taLeftJustify
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 6
        Transparent = True
      end
      object checkBuscarAutomatico: TcxCheckBox
        Left = 660
        Top = 283
        Caption = 'Buscar automaticamente'
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 8
        Transparent = True
      end
      object edtMapeamento: TcxButtonEdit
        Left = 186
        Top = 203
        Properties.Buttons = <
          item
            Action = LocalizarMapeamento
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 4
        Width = 687
      end
      object comboEstado: TcxComboBox
        Left = 186
        Top = 365
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        Properties.Sorted = True
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 10
        Width = 687
      end
      object lblEmpresa: TcxLabel
        Left = 19
        Top = 323
        Caption = 'Empresa'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -23
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.Font.Quality = fqClearType
        Style.HotTrack = False
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        Transparent = True
      end
      object LayoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        Hidden = True
        ItemIndex = 7
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
        Index = 1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = LayoutGroup_Root
        CaptionOptions.Text = 'FBClient'
        Control = edtFBClient
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = LayoutGroup_Root
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = lblConexao
        ControlOptions.OriginalHeight = 31
        ControlOptions.OriginalWidth = 64
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = LayoutGroup_Root
        Offsets.Top = 20
        CaptionOptions.Visible = False
        Control = lblCaminhos
        ControlOptions.OriginalHeight = 31
        ControlOptions.OriginalWidth = 91
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Exporta'#231#227'o'
        Control = edtExportacao
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Importa'#231#227'o'
        Control = edtImportacao
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avClient
        Offsets.Left = 4
        CaptionOptions.Visible = False
        Control = checkSalvarAutomatico
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 209
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = LayoutGroup_Root
        LayoutDirection = ldHorizontal
        Index = 5
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = checkBuscarAutomatico
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 213
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = LayoutGroup_Root
        LayoutDirection = ldHorizontal
        Index = 6
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = LayoutGroup_Root
        CaptionOptions.Text = 'Mapeamento'
        Control = edtMapeamento
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = LayoutGroup_Root
        CaptionOptions.Text = 'UF'
        Control = comboEstado
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 8
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = LayoutGroup_Root
        CaptionOptions.Visible = False
        Control = lblEmpresa
        ControlOptions.OriginalHeight = 31
        ControlOptions.OriginalWidth = 91
        ControlOptions.ShowBorder = False
        Index = 7
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 592
    Top = 136
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object ActionList1: TActionList
    Left = 696
    Top = 136
    object LocalizarBancoEco: TAction
      Caption = 'LocalizarBancoEco'
      OnExecute = LocalizarBancoEcoExecute
    end
    object LocalizarFBClient: TAction
      Caption = 'LocalizarFBClient'
      OnExecute = LocalizarFBClientExecute
    end
    object LocalizarPastaExportacao: TAction
      Caption = 'Action1'
      OnExecute = LocalizarPastaExportacaoExecute
    end
    object LocalizarPastaImportacao: TAction
      Caption = 'LocalizarPastaImportacao'
      OnExecute = LocalizarPastaImportacaoExecute
    end
    object LocalizarMapeamento: TAction
      Caption = 'LocalizarMapeamento'
      OnExecute = LocalizarMapeamentoExecute
    end
  end
  object dlgBancoEco: TdxOpenFileDialog
    FileName = 'c:\ecosis\dados\ecodados.eco'
    Filter = 'Banco de dados|*.eco;*.fdb|Todos os arquivos|*'
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 232
    Top = 464
  end
  object dlgFBClient: TdxOpenFileDialog
    FileName = 'c:\ecosis\windows\fbclient.dll'
    Filter = 'DLL|*.dll'
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 312
    Top = 464
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
    Left = 784
    Top = 136
  end
  object dialogExportacao: TdxOpenFileDialog
    Filter = 'Planilha excel|*.xlsx'
    Options = [ofPathMustExist, ofEnableSizing]
    Left = 24
    Top = 464
  end
  object dialogImportacao: TdxOpenFileDialog
    Filter = 'Planilha excel|*.xlsx;*.csv'
    Options = [ofPathMustExist, ofEnableSizing]
    Left = 128
    Top = 464
  end
  object dialogMapeamento: TdxOpenFileDialog
    Filter = 'Arquivo de mapeamento de posi'#231#245'es|*.map'
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 408
    Top = 472
  end
end
