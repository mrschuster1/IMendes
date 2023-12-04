unit View.Importacao;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  View.PesquisaGrade,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinOffice2019Black,
  cxGeometry,
  dxFramedControl,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxDateRanges,
  dxScrollbarAnnotations,
  Data.DB,
  cxDBData,
  cxContainer,
  Vcl.Menus,
  dxPSGlbl,
  dxPSUtl,
  dxPSEngn,
  dxPrnPg,
  dxBkgnd,
  dxWrap,
  dxPrnDev,
  dxPSCompsProvider,
  dxPSFillPatterns,
  dxPSEdgePatterns,
  dxPSPDFExportCore,
  dxPSPDFExport,
  cxDrawTextUtils,
  dxPSPrVwStd,
  dxPSPrVwAdv,
  dxPSPrVwRibbon,
  dxPScxPageControlProducer,
  dxPScxGridLnk,
  dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers,
  dxPScxExtEditorProducers,
  dxPSCore,
  dxPScxCommon,
  cxClasses,
  scStyledForm,
  cxLocalization,
  Vcl.StdCtrls,
  cxButtons,
  cxTextEdit,
  cxLabel,
  cxGridLevel,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  dxPanel,
  dxmdaset,
  QImport3,
  QImport3ASCII,
  dxShellDialogs;

type
  TformImportacao = class(TformPesquisaGrade)
    dialogExcel: TdxOpenFileDialog;
    DataSource: TDataSource;
    ImportCSV: TQImport3ASCII;
    MemData: TdxMemData;
    ID: TStringField;
    EAN: TStringField;
    CodigoInterno: TStringField;
    CodigoIMendes: TStringField;
    Status: TStringField;
    Descricao: TStringField;
    NCM: TStringField;
    CEST: TStringField;
    IPI: TStringField;
    CSTIPI: TStringField;
    CSTPisCofinsEntrada: TStringField;
    CSTPisCofinsSaida: TStringField;
    NatRecIsentaPisCofins: TStringField;
    LIsta: TStringField;
    Tipo: TStringField;
    PIS: TStringField;
    Cofins: TStringField;
    CFOPCompra: TStringField;
    CFOPVenda: TStringField;
    CST: TStringField;
    CSOSN: TStringField;
    ModBC: TStringField;
    ICMS: TStringField;
    ICMSPDV: TStringField;
    SimbPDV: TStringField;
    RedBCICMS: TStringField;
    RedBCICMSST: TStringField;
    ModBCST: TStringField;
    ICMSST: TStringField;
    IVA: TStringField;
    PautaST: TStringField;
    FCP: TStringField;
    Antecipado: TStringField;
    Desoneracao: TStringField;
    Diferimento: TStringField;
    Isencao: TStringField;
    aDRemICMS: TStringField;
    ANP: TStringField;
    CodigoBeneficio: TStringField;
    DataAlteracao: TStringField;
    DataRevisao: TStringField;
    DataUltimoConsumo: TStringField;
    CodigoGPC: TStringField;
    TableViewRecId: TcxGridDBColumn;
    TableViewID: TcxGridDBColumn;
    TableViewEAN: TcxGridDBColumn;
    TableViewCodigoInterno: TcxGridDBColumn;
    TableViewCodigoIMendes: TcxGridDBColumn;
    TableViewStatus: TcxGridDBColumn;
    TableViewDescricao: TcxGridDBColumn;
    TableViewNCM: TcxGridDBColumn;
    TableViewCEST: TcxGridDBColumn;
    TableViewPercIPI: TcxGridDBColumn;
    TableViewCSTIPI: TcxGridDBColumn;
    TableViewCSTPisCofinsEnt: TcxGridDBColumn;
    TableViewCSTPisCofinsSai: TcxGridDBColumn;
    TableViewNatRecIsentaPisCofins: TcxGridDBColumn;
    TableViewLista: TcxGridDBColumn;
    TableViewTipo: TcxGridDBColumn;
    TableViewPercPIS: TcxGridDBColumn;
    TableViewPercCOFINS: TcxGridDBColumn;
    TableViewCFOPCompra: TcxGridDBColumn;
    TableViewCFOPVenda: TcxGridDBColumn;
    TableViewCST: TcxGridDBColumn;
    TableViewCSOSN: TcxGridDBColumn;
    TableViewModBC: TcxGridDBColumn;
    TableViewPercICMS: TcxGridDBColumn;
    TableViewPercICMSPDV: TcxGridDBColumn;
    TableViewSimbPDV: TcxGridDBColumn;
    TableViewPercRedBCICMS: TcxGridDBColumn;
    TableViewPercRedBCICMSST: TcxGridDBColumn;
    TableViewModBCST: TcxGridDBColumn;
    TableViewPercICMSST: TcxGridDBColumn;
    TableViewIVA: TcxGridDBColumn;
    TableViewPautaST: TcxGridDBColumn;
    TableViewPercFCP: TcxGridDBColumn;
    TableViewAntecipado: TcxGridDBColumn;
    TableViewPercDesoneracao: TcxGridDBColumn;
    TableViewPercDiferimento: TcxGridDBColumn;
    TableViewPercIsencao: TcxGridDBColumn;
    TableViewaDRemICMS: TcxGridDBColumn;
    TableViewCodANP: TcxGridDBColumn;
    TableViewCodBeneficio: TcxGridDBColumn;
    TableViewDataAlteracao: TcxGridDBColumn;
    TableViewDataRevisao: TcxGridDBColumn;
    TableViewDataUltimoConsumo: TcxGridDBColumn;
    TableViewCodigoGPC: TcxGridDBColumn;
    btnImportar: TcxButton;
    procedure btnImportarClick(Sender: TObject);
    procedure ImportCSVAfterImport(Sender: TObject);
  private
    procedure Importar;
    procedure SalvarGridExcel(Caminho: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formImportacao: TformImportacao;

implementation

{$R *.dfm}


uses
  Helpers.Ini,
  Utils.Dialogs;

procedure TformImportacao.btnImportarClick(Sender: TObject);
begin
  inherited;
  Importar;
end;

procedure TformImportacao.Importar;
begin
  StyledForm.ShowClientInActiveEffect;

  if (TIniHelper.GetValue('importacao', 'buscar-automatico', false) = true) and
    (TIniHelper.GetValue('importacao', 'diretorio', '') <> '') then
    SalvarGridExcel(TIniHelper.GetValue('importacao', 'diretorio', ''))
  else
  begin
    if TIniHelper.GetValue('importacao', 'diretorio', '') = '' then
      dialogExcel.FileName := 'produtos.csv'
    else
      dialogExcel.FileName := TIniHelper.GetValue('importacao',
        'diretorio', '');

    if dialogExcel.Execute then
      SalvarGridExcel(dialogExcel.FileName)
  end;
  StyledForm.HideClientInActiveEffect;
end;

procedure TformImportacao.ImportCSVAfterImport(Sender: TObject);
begin
  inherited;
  lblRegistros.Caption := format('Total de registros: %s',
    [MemData.RecordCount.ToString]);
end;

procedure TformImportacao.SalvarGridExcel(Caminho: string);
begin
  ImportCSV.Map.LoadFromFile(TIniHelper.GetValue('importacao', 'mapeamento',
    'resource/posicoes.map'));
  ImportCSV.FileName := Caminho;
  MemData.Open;
  ImportCSV.Execute;
end;

end.
