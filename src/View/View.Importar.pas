unit View.Importar;

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
  View.Child,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinOffice2019Black,
  dxSkinOffice2019Colorful,
  cxGeometry,
  dxFramedControl,
  scStyledForm,
  cxClasses,
  cxLocalization,
  dxPanel,
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
  Vcl.StdCtrls,
  cxButtons,
  cxTextEdit,
  cxLabel,
  dxCore,
  cxGridLevel,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
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
  dxmdaset,
  dxShellDialogs,
  QImport3,
  QImport3ASCII,
  cxGridLayoutView,
  cxGridDBLayoutView,
  dxLayoutContainer,
  cxGridViewLayoutContainer,
  cxGridCustomLayoutView,
  cxCheckBox;

type
  TformImportar = class(TformChild)
    Grid: TcxGrid;
    GridLevel1: TcxGridLevel;
    pnlTop: TdxPanel;
    lblRegistros: TcxLabel;
    edtPesquisa: TcxTextEdit;
    buttonImprimirGrade: TcxButton;
    ComponentPrinter: TdxComponentPrinter;
    GridPrinter: TdxGridReportLink;
    ImportCSV: TQImport3ASCII;
    dialogExcel: TdxOpenFileDialog;
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
    DataSource: TDataSource;
    btnImportar: TcxButton;
    TableView: TcxGridDBTableView;
    GridLevel2: TcxGridLevel;
    TableViewID: TcxGridDBColumn;
    TableViewEAN: TcxGridDBColumn;
    TableViewCodigoInterno: TcxGridDBColumn;
    TableViewCodigoIMendes: TcxGridDBColumn;
    TableViewStatus: TcxGridDBColumn;
    TableViewDescricao: TcxGridDBColumn;
    TableViewNCM: TcxGridDBColumn;
    LayoutViewGroup_Root: TdxLayoutGroup;
    LayoutView: TcxGridDBLayoutView;
    LayoutViewLayoutItem1: TcxGridLayoutItem;
    LayoutViewLayoutItem2: TcxGridLayoutItem;
    LayoutViewLayoutItem3: TcxGridLayoutItem;
    LayoutViewLayoutItem4: TcxGridLayoutItem;
    LayoutViewLayoutItem5: TcxGridLayoutItem;
    LayoutViewLayoutItem6: TcxGridLayoutItem;
    LayoutViewLayoutItem7: TcxGridLayoutItem;
    LayoutViewLayoutItem8: TcxGridLayoutItem;
    LayoutViewLayoutItem9: TcxGridLayoutItem;
    LayoutViewLayoutItem10: TcxGridLayoutItem;
    LayoutViewLayoutItem11: TcxGridLayoutItem;
    LayoutViewLayoutItem12: TcxGridLayoutItem;
    LayoutViewLayoutItem13: TcxGridLayoutItem;
    LayoutViewLayoutItem14: TcxGridLayoutItem;
    LayoutViewLayoutItem15: TcxGridLayoutItem;
    LayoutViewLayoutItem16: TcxGridLayoutItem;
    LayoutViewLayoutItem17: TcxGridLayoutItem;
    LayoutViewLayoutItem18: TcxGridLayoutItem;
    LayoutViewLayoutItem19: TcxGridLayoutItem;
    LayoutViewLayoutItem20: TcxGridLayoutItem;
    LayoutViewLayoutItem21: TcxGridLayoutItem;
    LayoutViewLayoutItem22: TcxGridLayoutItem;
    LayoutViewLayoutItem23: TcxGridLayoutItem;
    LayoutViewLayoutItem24: TcxGridLayoutItem;
    LayoutViewLayoutItem25: TcxGridLayoutItem;
    LayoutViewLayoutItem26: TcxGridLayoutItem;
    LayoutViewLayoutItem27: TcxGridLayoutItem;
    LayoutViewLayoutItem28: TcxGridLayoutItem;
    LayoutViewLayoutItem29: TcxGridLayoutItem;
    GridLevel3: TcxGridLevel;
    LayoutViewDBLayoutViewItem1: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem2: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem3: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem4: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem5: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem6: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem7: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem8: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem9: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem10: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem11: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem12: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem13: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem14: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem15: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem16: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem17: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem18: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem19: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem20: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem21: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem22: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem23: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem24: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem25: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem26: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem27: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem28: TcxGridDBLayoutViewItem;
    LayoutViewDBLayoutViewItem29: TcxGridDBLayoutViewItem;
    LayoutViewGroup1: TdxLayoutGroup;
    LayoutViewGroup2: TdxLayoutGroup;
    LayoutViewGroup3: TdxLayoutGroup;
    Marcado: TBooleanField;
    TableViewMarcado: TcxGridDBColumn;
    LayoutViewGroup4: TdxLayoutGroup;
    LayoutViewAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure buttonImprimirGradeClick(Sender: TObject);
    procedure edtPesquisaPropertiesChange(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure TableViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TableViewMarcadoHeaderClick(Sender: TObject);
    procedure ImportCSVAfterImport(Sender: TObject);
  private
    { Private declarations }
    FLockFilter: Boolean;
    procedure Imprimir;
    procedure Pesquisar;
    procedure ClearLikeFilter;
    procedure AddLikeFilter;
    procedure AddLikeCondition(AItemList: TcxFilterCriteriaItemList;
      AColumn: TcxCustomGridTableItem; const ALike: string);
    procedure ImportarCSV(Caminho: string);
    procedure Importar;
  public
    { Public declarations }
  end;

var
  formImportar: TformImportar;

implementation

{$R *.dfm}


uses
  Helpers.Ini;

{ TformChild1 }

procedure TformImportar.AddLikeCondition(AItemList: TcxFilterCriteriaItemList;
  AColumn: TcxCustomGridTableItem; const ALike: string);
begin
  if AColumn.Visible then
    AItemList.AddItem(AColumn, foLike, '%' + uppercase(ALike) + '%',
      '"' + ALike + '"');
end;

procedure TformImportar.AddLikeFilter;
var
  ALike: string;
  AItemList: TcxFilterCriteriaItemList;
begin
  ALike := StringReplace(edtPesquisa.Text, ' ', '%',
    [rfReplaceAll, rfIgnoreCase]);
  if Trim(ALike) = '' then
    Exit;
  AItemList := TableView.DataController.Filter.Root.AddItemList(fboOr);
  for var i := 0 to TableView.ColumnCount - 1 do
    AddLikeCondition(AItemList, TableView.Columns[i], ALike);
end;

procedure TformImportar.btnImportarClick(Sender: TObject);
begin
  inherited;
  Importar
end;

procedure TformImportar.buttonImprimirGradeClick(Sender: TObject);
begin
  inherited;
  Imprimir
end;

procedure TformImportar.ClearLikeFilter;
var
  i: Integer;
  ARoot: TcxFilterCriteriaItemList;
begin
  ARoot := TableView.DataController.Filter.Root;
  for i := ARoot.Count - 1 downto 0 do
    if ARoot.Items[i] is TcxFilterCriteriaItemList then
      ARoot.Items[i].Free;
end;

procedure TformImportar.edtPesquisaPropertiesChange(Sender: TObject);
begin
  inherited;
  Pesquisar
end;

procedure TformImportar.Imprimir;
begin
  GridPrinter.Preview(true)
end;

procedure TformImportar.Pesquisar;
var
  AFilter: TcxDataFilterCriteria;
begin
  if FLockFilter then
    Exit;

  ShowHourglassCursor;
  try
    FLockFilter := true;
    AFilter := TableView.DataController.Filter;
    AFilter.BeginUpdate;
    try
      ClearLikeFilter;
      AddLikeFilter;
      AFilter.Active := true;
    finally
      AFilter.EndUpdate;
      FLockFilter := false;
    end;
  finally
    HideHourglassCursor;
  end;
  if Grid.ActiveView = TableView then
    TableView.DataController.Groups.FullExpand;
end;

procedure TformImportar.TableViewMarcadoHeaderClick(Sender: TObject);
begin
  inherited;
  MemData.DisableControls;
  MemData.First;

  while not MemData.Eof do
  begin
    MemData.Edit;

    Marcado.Value := TableViewMarcado.SortOrder = soascending;

    MemData.Post;
    MemData.Next;
  end;

  MemData.First;
  MemData.EnableControls;
  TableView.ViewData.Collapse(true);
end;

procedure TformImportar.TableViewCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  ADone := false;
  if (Trim(edtPesquisa.Text) = '') or
    not(AViewInfo.EditViewInfo is TcxCustomTextEditViewInfo) then
    Exit;
  var
  AFoundText := AnsiUpperCase(edtPesquisa.Text);
  var
  ACellText := AViewInfo.Text;
  var
  P := Pos(AFoundText, AnsiUpperCase(ACellText));
  if P > 0 then
    with TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo) do
    begin
      SelStart := P - 1;
      SelLength := Length(AFoundText);
      SelBackgroundColor := RGB(43, 87, 154);
      SelTextColor := clwhite;
    end;
end;

procedure TformImportar.Importar;
begin
  StyledForm.ShowClientInActiveEffect;

  if (TIniHelper.GetValue('importacao', 'buscar-automatico', false) = true) and
    (TIniHelper.GetValue('importacao', 'diretorio', '') <> '') then
    ImportarCSV(TIniHelper.GetValue('importacao', 'diretorio', ''))
  else
  begin
    if TIniHelper.GetValue('importacao', 'diretorio', '') = '' then
      dialogExcel.FileName := 'produtos.csv'
    else
      dialogExcel.FileName := TIniHelper.GetValue('importacao',
        'diretorio', '');

    if dialogExcel.Execute then
      ImportarCSV(dialogExcel.FileName)
  end;
  StyledForm.HideClientInActiveEffect;
end;

procedure TformImportar.ImportarCSV(Caminho: string);
begin
  ImportCSV.Map.LoadFromFile(TIniHelper.GetValue('importacao', 'mapeamento',
    'resource/posicoes.map'));
  ImportCSV.FileName := Caminho;
  MemData.DisableControls;
  MemData.Close;
  MemData.Open;
  ImportCSV.Execute;
  MemData.First;
  MemData.EnableControls;
  TableView.ViewData.Collapse(true);
end;

procedure TformImportar.ImportCSVAfterImport(Sender: TObject);
begin
  inherited;
  lblRegistros.Caption := format('Total de registros: %s',
    [MemData.RecordCount.ToString]);
end;

end.
