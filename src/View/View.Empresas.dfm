object formEmpresas: TformEmpresas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Empresas'
  ClientHeight = 269
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 15
  object pnlMain: TdxPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 269
    Align = alClient
    Frame.Visible = False
    TabOrder = 0
    object pnlBottom: TdxPanel
      Left = 0
      Top = 212
      Width = 591
      Height = 57
      Align = alBottom
      Frame.Borders = [bBottom]
      Frame.Visible = False
      TabOrder = 0
      object btnConfirmar: TcxButton
        AlignWithMargins = True
        Left = 351
        Top = 10
        Width = 100
        Height = 37
        Margins.Left = 20
        Margins.Top = 10
        Margins.Right = 15
        Margins.Bottom = 10
        Align = alRight
        Caption = 'Confirmar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672066696C6C3D22234646464646462220786D6C6E
          733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076
          696577426F783D22302030203234203234222077696474683D22323470782220
          6865696768743D2232347078223E0D0A093C7061746820643D224D2031392E39
          383034363920352E39393032333434204120312E3030303120312E3030303120
          30203020302031392E32393239363920362E32393239363838204C2039203136
          2E353835393338204C20352E373037303331322031332E323932393639204120
          312E3030303120312E3030303120302031203020342E32393239363838203134
          2E373037303331204C20382E323932393638382031382E373037303331204120
          312E3030303120312E3030303120302030203020392E37303730333132203138
          2E373037303331204C2032302E37303730333120372E37303730333132204120
          312E3030303120312E303030312030203020302031392E39383034363920352E
          39393032333434207A222F3E0D0A3C2F7376673E0D0A}
        TabOrder = 0
        OnClick = btnConfirmarClick
        ExplicitLeft = 345
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
        Left = 471
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
        ExplicitLeft = 465
      end
    end
    object Layout: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 591
      Height = 212
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
      object lblEmpresas: TcxLabel
        Left = 19
        Top = 19
        Caption = 'Seleciona uma empresa:'
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
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 35
      end
      object cbEmpresas: TcxComboBox
        Left = 19
        Top = 111
        Properties.DropDownListStyle = lsFixedList
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Width = 553
      end
      object LayoutGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = LayoutGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = lblEmpresas
        ControlOptions.OriginalHeight = 31
        ControlOptions.OriginalWidth = 251
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = LayoutGroup_Root
        Offsets.Top = 50
        Control = cbEmpresas
        ControlOptions.AlignVert = avCenter
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 488
    Top = 112
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
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
    Left = 612
    Top = 88
  end
end
