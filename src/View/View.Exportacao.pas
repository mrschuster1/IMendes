unit View.Exportacao;

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
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridCustomView,
  cxGrid,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  cxGridExportLink,
  shellapi,
  dxShellDialogs,
  cxTextEdit,
  cxFilterControl,
  dxBarCode;

type
  TformExportacao = class(TformChild)
    pnlTop: TdxPanel;
    btnExportar: TcxButton;
    lblRegistros: TcxLabel;
    Grid: TcxGrid;
    TableView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    dlgExportGridExcel: TdxSaveFileDialog;
    sql: TFDQuery;
    sqlCODIGOBARRA: TStringField;
    sqlCODIGO: TStringField;
    sqlDESCRICAO: TStringField;
    ds: TDataSource;
    TableViewCODIGOBARRA: TcxGridDBColumn;
    TableViewCODIGO: TcxGridDBColumn;
    TableViewDESCRICAO: TcxGridDBColumn;
    edtPesquisa: TcxTextEdit;
    procedure btnExportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sqlAfterOpen(DataSet: TDataSet);
    procedure sqlBeforeOpen(DataSet: TDataSet);
    procedure edtPesquisaPropertiesChange(Sender: TObject);
    procedure TableViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    FLockFilter: Boolean;
    procedure ExportarGridExcel;
    procedure AbrirQuery;
    procedure Pesquisar;
    procedure ClearLikeFilter;
    procedure AddLikeFilter;
    procedure AddLikeCondition(AItemList: TcxFilterCriteriaItemList;
      AColumn: TcxCustomGridTableItem; const ALike: string);
  public
    { Public declarations }
  end;

var
  formExportacao: TformExportacao;

implementation

{$R *.dfm}


uses
  Utils.Dialogs,
  Model.Connection;

{ TformExportacao }

procedure TformExportacao.AbrirQuery;
begin
  sql.open
end;

procedure TformExportacao.AddLikeCondition(AItemList: TcxFilterCriteriaItemList;
  AColumn: TcxCustomGridTableItem; const ALike: string);
begin
  if AColumn.Visible then
    AItemList.AddItem(AColumn, foLike, '%' + uppercase(ALike) + '%',
      '"' + ALike + '"');
end;

procedure TformExportacao.AddLikeFilter;
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

procedure TformExportacao.btnExportarClick(Sender: TObject);
begin
  inherited;
  ExportarGridExcel;
end;

procedure TformExportacao.ClearLikeFilter;
var
  i: Integer;
  ARoot: TcxFilterCriteriaItemList;
begin
  ARoot := TableView.DataController.Filter.Root;
  for i := ARoot.Count - 1 downto 0 do
    if ARoot.Items[i] is TcxFilterCriteriaItemList then
      ARoot.Items[i].Free;
end;

procedure TformExportacao.edtPesquisaPropertiesChange(Sender: TObject);
begin
  inherited;
  Pesquisar
end;

procedure TformExportacao.ExportarGridExcel;
begin
  StyledForm.ShowClientInActiveEffect;

  dlgExportGridExcel.filename := 'ExportaMendes.xlsx';
  if dlgExportGridExcel.Execute then
  begin
    TableView.OptionsView.Header := false;
    ExportGridDataToXLSX(dlgExportGridExcel.filename, Grid, true, true, false);

    if MostrarMsg('Planilha salva em "' + dlgExportGridExcel.filename + '"',
      ' Desja abrir o arquivo agora?',
      'Sim', 'Não', '', '', COR_SUCESSO, 10) = 1 then
      ShellExecute(0, 'open', PChar(dlgExportGridExcel.filename), nil, nil,
        SW_SHOWNORMAL);
    TableView.OptionsView.Header := true;
  end;

  StyledForm.HideClientInActiveEffect;
end;

procedure TformExportacao.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirQuery;
end;

procedure TformExportacao.Pesquisar;
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

procedure TformExportacao.sqlAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TableView.DataController.CreateAllItems(true);
  lblRegistros.Caption := format('Total de registros: %s',
    [sql.RecordCount.ToString]);
end;

procedure TformExportacao.sqlBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  sql.ParamByName('EMPRESA').AsString := dm.Empresa
end;

procedure TformExportacao.TableViewCustomDrawCell(
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
