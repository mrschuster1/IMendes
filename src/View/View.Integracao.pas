unit View.Integracao;

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
  System.Generics.Collections,
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
  cxCheckBox,
  AdvAlertWindow,
  System.ImageList,
  Vcl.ImgList,
  cxImageList;

type
  TformIntegracao = class(TformChild)
    Grid: TcxGrid;
    pnlTop: TdxPanel;
    lblRegistros: TcxLabel;
    edtPesquisa: TcxTextEdit;
    buttonImprimirGrade: TcxButton;
    ComponentPrinter: TdxComponentPrinter;
    GridPrinter: TdxGridReportLink;
    MemData: TdxMemData;
    DataSource: TDataSource;
    pnlBottom: TdxPanel;
    cxLabel1: TcxLabel;
    btnProcessar: TcxButton;
    btnCancelar: TcxButton;
    TableView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    GridDBLayoutView1Group_Root: TdxLayoutGroup;
    GridDBLayoutView1: TcxGridDBLayoutView;
    GridDBLayoutView1LayoutItem1: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem2: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem3: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem4: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem5: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem6: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem7: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem8: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem9: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem10: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem11: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem12: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem13: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem14: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem15: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem16: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem17: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem18: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem19: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem20: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem21: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem22: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem23: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem24: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem25: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem26: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem27: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem28: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem29: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem30: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem31: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem32: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem33: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem34: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem35: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem36: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem37: TcxGridLayoutItem;
    GridDBLayoutView1LayoutItem38: TcxGridLayoutItem;
    GridDBLayoutView1Group1: TdxLayoutGroup;
    GridDBLayoutView1AutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1Group2: TdxLayoutGroup;
    GridDBLayoutView1AutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1AutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1AutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1Group3: TdxLayoutGroup;
    GridDBLayoutView1AutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1Group4: TdxLayoutGroup;
    GridDBLayoutView1AutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1AutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1Group5: TdxLayoutGroup;
    GridDBLayoutView1AutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1AutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1AutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1Group6: TdxLayoutGroup;
    GridDBLayoutView1AutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1AutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1AutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1Group7: TdxLayoutGroup;
    GridDBLayoutView1AutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    GridDBLayoutView1Group8: TdxLayoutGroup;
    GridLevel2: TcxGridLevel;
    GridDBLayoutView1DBLayoutViewItem1: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem2: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem3: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem4: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem5: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem6: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem7: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem8: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem9: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem10: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem11: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem12: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem13: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem14: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem15: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem16: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem17: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem18: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem19: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem20: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem21: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem22: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem23: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem24: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem25: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem26: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem27: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem28: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem29: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem30: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem31: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem32: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem33: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem34: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem35: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem36: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem37: TcxGridDBLayoutViewItem;
    GridDBLayoutView1DBLayoutViewItem38: TcxGridDBLayoutViewItem;
    TableViewprod_EAN: TcxGridDBColumn;
    TableViewprod_codInterno: TcxGridDBColumn;
    TableViewprod_descricao: TcxGridDBColumn;
    TableViewprod_NCM: TcxGridDBColumn;
    TableViewprod_CEST: TcxGridDBColumn;
    TableViewMarcado: TcxGridDBColumn;
    Marcado: TBooleanField;
    procedure buttonImprimirGradeClick(Sender: TObject);
    procedure edtPesquisaPropertiesChange(Sender: TObject);
    procedure TableViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TableViewMarcadoHeaderClick(Sender: TObject);
  private
    { Private declarations }
    FLockFilter: Boolean;
    FMarcarTodos: Boolean;
    procedure Imprimir;
    procedure Pesquisar;
    procedure ClearLikeFilter;
    procedure AddLikeFilter;
    procedure AddLikeCondition(AItemList: TcxFilterCriteriaItemList;
      AColumn: TcxCustomGridTableItem; const ALike: string);
    procedure Cancelar;
    procedure AbrirQuery;
  public
    { Public declarations }
  end;

var
  formIntegracao: TformIntegracao;

implementation

{$R *.dfm}


uses
  Helpers.Ini,
  Model.Produto,
  Services.Tributos,
  Services.Empresas,
  Utils.Dialogs,
  Services.Produtos.IMendes;

{ TformChild1 }

procedure TformIntegracao.AbrirQuery;
begin
  var
  lProdutos := TServiceProdutosIMendes.Create;
  try
    MemData.CopyFromDataSet(lProdutos.Get);
    lblRegistros.Caption := format('Total de registros: %s',
      [MemData.RecordCount.ToString]);
    MemData.First;
    TableView.ViewData.Collapse(True)
  finally
    lProdutos.Free
  end;
end;

procedure TformIntegracao.AddLikeCondition(AItemList: TcxFilterCriteriaItemList;
  AColumn: TcxCustomGridTableItem; const ALike: string);
begin
  if AColumn.Visible then
    AItemList.AddItem(AColumn, foLike, '%' + uppercase(ALike) + '%',
      '"' + ALike + '"');
end;

procedure TformIntegracao.AddLikeFilter;
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

procedure TformIntegracao.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Cancelar
end;

procedure TformIntegracao.buttonImprimirGradeClick(Sender: TObject);
begin
  inherited;
  Imprimir
end;

procedure TformIntegracao.Cancelar;
begin
  MemData.Close
end;

procedure TformIntegracao.ClearLikeFilter;
var
  i: Integer;
  ARoot: TcxFilterCriteriaItemList;
begin
  ARoot := TableView.DataController.Filter.Root;
  for i := ARoot.Count - 1 downto 0 do
    if ARoot.Items[i] is TcxFilterCriteriaItemList then
      ARoot.Items[i].Free;
end;

procedure TformIntegracao.DataSourceStateChange(Sender: TObject);
begin
  inherited;
  btnCancelar.Enabled := MemData.Active;
  btnProcessar.Enabled := MemData.Active
end;

procedure TformIntegracao.edtPesquisaPropertiesChange(Sender: TObject);
begin
  inherited;
  Pesquisar
end;

procedure TformIntegracao.FormCreate(Sender: TObject);
begin
  inherited;
  FMarcarTodos := False;
  AbrirQuery;
  TableViewMarcadoHeaderClick(nil);
end;

procedure TformIntegracao.Imprimir;
begin
  GridPrinter.Preview(True)
end;

procedure TformIntegracao.Pesquisar;
var
  AFilter: TcxDataFilterCriteria;
begin
  if FLockFilter then
    Exit;

  ShowHourglassCursor;
  try
    FLockFilter := True;
    AFilter := TableView.DataController.Filter;
    AFilter.BeginUpdate;
    try
      ClearLikeFilter;
      AddLikeFilter;
      AFilter.Active := True;
    finally
      AFilter.EndUpdate;
      FLockFilter := False;
    end;
  finally
    HideHourglassCursor;
  end;
  if Grid.ActiveView = TableView then
    TableView.DataController.Groups.FullExpand;
end;

procedure TformIntegracao.TableViewCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  ADone := False;
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

procedure TformIntegracao.TableViewMarcadoHeaderClick(Sender: TObject);
begin
  inherited;
  MemData.DisableControls;
  MemData.First;
  FMarcarTodos := not FMarcarTodos;

  while not MemData.Eof do
  begin
    MemData.Edit;

    MemData.FieldByName('Marcado').AsBoolean := FMarcarTodos;

    MemData.Post;
    MemData.Next;
  end;

  MemData.First;
  MemData.EnableControls;
  TableView.ViewData.Collapse(True);
end;

end.
