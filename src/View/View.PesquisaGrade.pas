unit View.PesquisaGrade;

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
  cxGeometry,
  dxFramedControl,
  scStyledForm,
  cxClasses,
  cxLocalization,
  dxPanel,
  Vcl.Menus,
  cxContainer,
  cxEdit,
  cxTextEdit,
  cxLabel,
  Vcl.StdCtrls,
  cxButtons,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  dxDateRanges,
  dxScrollbarAnnotations,
  Data.DB,
  cxDBData,
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
  dxPScxCommon;

type
  TformPesquisaGrade = class(TformChild)
    pnlTop: TdxPanel;
    lblRegistros: TcxLabel;
    edtPesquisa: TcxTextEdit;
    buttonImprimirGrade: TcxButton;
    Grid: TcxGrid;
    TableView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    ComponentPrinter: TdxComponentPrinter;
    GridPrinter: TdxGridReportLink;
    procedure edtPesquisaPropertiesChange(Sender: TObject);
    procedure TableViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure buttonImprimirGradeClick(Sender: TObject);
  private
    { Private declarations }
    FLockFilter: Boolean;
    procedure Imprimir;
    procedure Pesquisar;
    procedure ClearLikeFilter;
    procedure AddLikeFilter;
    procedure AddLikeCondition(AItemList: TcxFilterCriteriaItemList;
      AColumn: TcxCustomGridTableItem; const ALike: string);
  public
    { Public declarations }
  end;

var
  formPesquisaGrade: TformPesquisaGrade;

implementation

{$R *.dfm}


procedure TformPesquisaGrade.AddLikeCondition(
  AItemList: TcxFilterCriteriaItemList; AColumn: TcxCustomGridTableItem;
  const ALike: string);
begin
  if AColumn.Visible then
    AItemList.AddItem(AColumn, foLike, '%' + uppercase(ALike) + '%',
      '"' + ALike + '"');
end;

procedure TformPesquisaGrade.AddLikeFilter;
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

procedure TformPesquisaGrade.buttonImprimirGradeClick(Sender: TObject);
begin
  inherited;
  Imprimir
end;

procedure TformPesquisaGrade.ClearLikeFilter;
var
  i: Integer;
  ARoot: TcxFilterCriteriaItemList;
begin
  ARoot := TableView.DataController.Filter.Root;
  for i := ARoot.Count - 1 downto 0 do
    if ARoot.Items[i] is TcxFilterCriteriaItemList then
      ARoot.Items[i].Free;
end;

procedure TformPesquisaGrade.edtPesquisaPropertiesChange(Sender: TObject);
begin
  inherited;
  Pesquisar
end;

procedure TformPesquisaGrade.Imprimir;
begin
  GridPrinter.Preview(true)
end;

procedure TformPesquisaGrade.Pesquisar;
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

procedure TformPesquisaGrade.TableViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

end.
