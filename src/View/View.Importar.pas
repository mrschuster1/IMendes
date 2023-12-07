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
    IPI: TFloatField;
    CSTIPI: TStringField;
    CSTPisCofinsEntrada: TStringField;
    CSTPisCofinsSaida: TStringField;
    NatRecIsentaPisCofins: TStringField;
    LIsta: TStringField;
    Tipo: TStringField;
    PIS: TFloatField;
    Cofins: TFloatField;
    CFOPCompra: TStringField;
    CFOPVenda: TStringField;
    CST: TStringField;
    CSOSN: TStringField;
    ModBC: TStringField;
    ICMS: TFloatField;
    ICMSPDV: TFloatField;
    SimbPDV: TStringField;
    RedBCICMS: TFloatField;
    RedBCICMSST: TFloatField;
    ModBCST: TFloatField;
    ICMSST: TFloatField;
    IVA: TFloatField;
    PautaST: TFloatField;
    FCP: TFloatField;
    Antecipado: TStringField;
    Desoneracao: TFloatField;
    Diferimento: TFloatField;
    aDRemICMS: TFloatField;
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
    pnlBottom: TdxPanel;
    cxLabel1: TcxLabel;
    btnProcessar: TcxButton;
    btnCancelar: TcxButton;
    Isencao: TFloatField;
    procedure buttonImprimirGradeClick(Sender: TObject);
    procedure edtPesquisaPropertiesChange(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure TableViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TableViewMarcadoHeaderClick(Sender: TObject);
    procedure ImportCSVAfterImport(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure ImportarCSV(Caminho: string);
    procedure Importar;
    procedure Processar;
    procedure Cancelar;
  public
    { Public declarations }
  end;

var
  formImportar: TformImportar;

implementation

{$R *.dfm}


uses
  Helpers.Ini,
  Model.Produto,
  Services.Tributos,
  Services.Empresas,
  Utils.Dialogs;

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

procedure TformImportar.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Cancelar
end;

procedure TformImportar.btnImportarClick(Sender: TObject);
begin
  inherited;
  Importar
end;

procedure TformImportar.btnProcessarClick(Sender: TObject);
begin
  inherited;
  Processar
end;

procedure TformImportar.buttonImprimirGradeClick(Sender: TObject);
begin
  inherited;
  Imprimir
end;

procedure TformImportar.Cancelar;
begin
  MemData.Close
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

procedure TformImportar.DataSourceStateChange(Sender: TObject);
begin
  inherited;
  btnCancelar.Enabled := MemData.Active;
  btnProcessar.Enabled := MemData.Active
end;

procedure TformImportar.edtPesquisaPropertiesChange(Sender: TObject);
begin
  inherited;
  Pesquisar
end;

procedure TformImportar.FormCreate(Sender: TObject);
begin
  inherited;
  FMarcarTodos := false
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

procedure TformImportar.Processar;
begin
  var
  Produtos := TList<iProduto>.Create;
  MemData.DisableControls;
  MemData.First;
  while not MemData.Eof do
  begin
    if Marcado.AsBoolean = true then
    begin
      Produtos.Add(TProduto.New
        .Empresa(TServiceEmpresas.GetEmpresa)
        .Codigo(CodigoInterno.AsString)
        .EAN(EAN.AsString)
        .Nome(Descricao.AsString)
        .CFOPVenda(CFOPVenda.AsString)
        .CFOPCompra(CFOPCompra.AsString)
        .CST(CST.AsString)
        .CSOSN(CSOSN.AsString)
        .PercICMS(ICMS.AsSingle)
        .PercICMSST(ICMSST.AsSingle)
        .NCM(NCM.AsString)
        .CEST(CEST.AsString)
        .CSTIPI(CSTIPI.AsString)
        .PercIPI(IPI.AsSingle)
        .CSTPisCofinsEntrada(CSTPisCofinsEntrada.AsString)
        .CSTPisCofinsSaida(CSTPisCofinsSaida.AsString)
        .NatReceitaIsentaPisCofins(NatRecIsentaPisCofins.AsString)
        .PercPIS(PIS.AsSingle)
        .PercCofins(Cofins.AsSingle)
        .ModBC(ModBC.AsString)
        .PercICMSPDV(ICMSPDV.AsSingle)
        .PercRedBCICMS(RedBCICMS.AsSingle)
        .PercRedBCICMSST(RedBCICMSST.AsSingle)
        .ModBCST(ModBCST.AsString)
        .IVA(IVA.AsSingle)
        .PautaST(PautaST.AsSingle)
        .PercDeson(Desoneracao.AsSingle)
        .PercDiferim(Diferimento.AsSingle)
        .PercIsencao(Isencao.AsSingle)
        .AdRem(aDRemICMS.AsSingle)
        .FCP(FCP.AsSingle)
        );
    end;
    MemData.Next
  end;
  if Produtos.Count > 0 then
  begin
    var
    Retorno := TServiceTributos.Post(Produtos);
    MensagemSucesso(Format('%d produto(s) com ICMS processado(s) pela primeira vez.'
      + #13 + '%d produto(s) com ICMS alterado(s).'
      + #13 + '%d produto(s) com NCM alterados(s).',
      [Retorno.ICMSAdicionados, Retorno.ICMSAlterados, Retorno.NCMAlterados]))
  end
  else
    Produtos.Free;
  MemData.First;
  MemData.EnableControls;
  TableView.ViewData.Collapse(true);
end;

procedure TformImportar.TableViewMarcadoHeaderClick(Sender: TObject);
begin
  inherited;
  MemData.DisableControls;
  MemData.First;
  FMarcarTodos := not FMarcarTodos;

  while not MemData.Eof do
  begin
    MemData.Edit;

    Marcado.Value := FMarcarTodos;

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
  lblRegistros.Caption := Format('Total de registros: %s',
    [MemData.RecordCount.ToString]);
end;

end.
