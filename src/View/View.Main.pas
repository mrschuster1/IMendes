unit View.Main;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  dxBar,
  dxRibbon,
  dxRibbonForm,
  dxRibbonSkins,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxClasses,
  dxRibbonBackstageView,
  cxBarEditItem,
  dxSkinsCore,
  dxSkinOffice2019Black,
  dxCore,
  dxRibbonCustomizationForm,
  cxTextEdit,
  cxContainer,
  cxEdit,
  dxSkinsForm,
  dxStatusBar,
  dxRibbonStatusBar,
  cxLabel,
  dxGallery,
  dxGalleryControl,
  dxRibbonBackstageViewGalleryControl,
  cxLocalization,
  scStyledForm,
  Helper.Forms,
  cxPC,
  dxBarBuiltInMenu,
  dxTabbedMDI,
  VCL.TMSFNCTypes,
  VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl,
  VCL.TMSFNCStatusBar,
  dxSkinOffice2019Colorful;

type
  TformMain = class(TdxRibbonForm)
    BarManager: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    Ribbon: TdxRibbon;
    tabGeral: TdxRibbonTab;
    ribbonMenu: TdxRibbonBackstageView;
    dxSkinController: TdxSkinController;
    Localizer: TcxLocalizer;
    tabConfig: TdxRibbonTab;
    groupGeral: TdxBar;
    buttonConfig: TdxBarLargeButton;
    StyledForm: TscStyledForm;
    groupExportaImporta: TdxBar;
    buttonExportacao: TdxBarLargeButton;
    buttonImportar: TdxBarLargeButton;
    MDITabs: TdxTabbedMDIManager;
    StatusBar: TTMSFNCStatusBar;
    dxBarLargeButton1: TdxBarLargeButton;
    gpIntegracao: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure buttonConfigClick(Sender: TObject);
    procedure buttonExportacaoClick(Sender: TObject);
    procedure buttonImportarClick(Sender: TObject);
  private
    procedure CarregarIdioma;
    procedure AtualizarStatusBar;
    procedure Configurar;
    function FecharTodasAbas: boolean;

  public
    Empresa: integer;
  end;

var
  formMain: TformMain;

implementation

{$R *.dfm}


uses
  Provider.Connection,
  View.Config,
  View.Exportacao,
  utils.Dialogs,
  View.Empresas,
  Services.Empresas,
  View.Importacao;

{ TFormMain }

procedure TformMain.AtualizarStatusBar;
begin
  StatusBar.Panels.Items[2].Text := format(' Banco de dados: %s',
    [TProviderConnection.CaminhoDB]);
  StatusBar.Panels.Items[3].Text := TServiceEmpresas.NomeEmpresa
end;

procedure TformMain.buttonConfigClick(Sender: TObject);
begin
  Configurar
end;

procedure TformMain.buttonExportacaoClick(Sender: TObject);
begin
  TFormHelper.CreateTabForm<TformExportacao>(self, true)
end;

procedure TformMain.buttonImportarClick(Sender: TObject);
begin
  TFormHelper.CreateTabForm<TformImportacao>(self, true)
end;

procedure TformMain.CarregarIdioma;
begin
  Localizer.loadfromfile(GetCurrentDir + '\resource\pt-br.ini');
  Localizer.Active := true;
  Localizer.Locale := 1046;
end;

procedure TformMain.Configurar;
begin
  if FecharTodasAbas then
  begin
    StyledForm.ShowClientInActiveEffect;

    if TFormHelper.CreateModalForm<TformConfig> = mrOk then
    begin
      TformEmpresas.SelecionarEmpresa;
      AtualizarStatusBar;
    end;

    StyledForm.HideClientInActiveEffect;
  end;
end;

function TformMain.FecharTodasAbas: boolean;
begin
  if MDIChildCount > 0 then
  begin
    if MostrarMsg('Fechar todas as abas?',
      ' Lembre-se de salvar seu trabalho antes de prosseguir. Confirme se deseja fechar todas as abas abertas ou continue trabalhando normalmente.',
      'Sim', 'Não', '', '', cor_erro, 10) = 1 then
    begin
      for var i := 0 to MDIChildCount - 1 do
        mdichildren[i].Close;
      result := true
    end
    else
      result := false
  end
  else
    result := true
end;

procedure TformMain.FormCreate(Sender: TObject);
begin
  DisableAero := true;
  Ribbon.ActiveTab := tabGeral;
  CarregarIdioma;
  AtualizarStatusBar;
end;

end.
