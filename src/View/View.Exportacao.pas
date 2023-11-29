unit View.Exportacao;

interface

uses
  Winapi.Windows,
  shellapi,
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
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  cxGridExportLink,
  FireDAC.DApt,
  dxShellDialogs,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TformExportacao = class(TformPesquisaGrade)
    btnExportar: TcxButton;
    ds: TDataSource;
    sql: TFDQuery;
    sqlCODIGOBARRA: TStringField;
    sqlCODIGO: TStringField;
    sqlDESCRICAO: TStringField;
    dlgExportGridExcel: TdxSaveFileDialog;
    TableViewCODIGOBARRA: TcxGridDBColumn;
    TableViewCODIGO: TcxGridDBColumn;
    TableViewDESCRICAO: TcxGridDBColumn;
    procedure sqlAfterOpen(DataSet: TDataSet);
    procedure sqlBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExportarGridExcel;
    procedure SalvarGridExcel(Caminho: string);
    procedure AbrirQuery;
  public
    { Public declarations }
  end;

var
  formExportacao: TformExportacao;

implementation

{$R *.dfm}


uses
  Model.Connection,
  Helpers.Ini,
  Utils.Dialogs;

procedure TformExportacao.AbrirQuery;
begin
  sql.open
end;

procedure TformExportacao.btnExportarClick(Sender: TObject);
begin
  inherited;
  ExportarGridExcel
end;

procedure TformExportacao.ExportarGridExcel;
begin
  StyledForm.ShowClientInActiveEffect;

  if (TIniHelper.GetValue('exportacao', 'salvar-automatico', false) = true) and
    (TIniHelper.GetValue('exportacao', 'diretorio', '') <> '') then
    SalvarGridExcel(TIniHelper.GetValue('exportacao', 'diretorio', ''))
  else
  begin
    if TIniHelper.GetValue('exportacao', 'diretorio', '') = '' then
      dlgExportGridExcel.filename := 'ExportaMendes.xlsx'
    else
      dlgExportGridExcel.filename := TIniHelper.GetValue('exportacao',
        'diretorio', '');

    if dlgExportGridExcel.Execute then
      SalvarGridExcel(dlgExportGridExcel.filename)
  end;
  StyledForm.HideClientInActiveEffect;
end;

procedure TformExportacao.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirQuery;
end;

procedure TformExportacao.SalvarGridExcel(Caminho: string);
begin
  TableView.OptionsView.Header := false;
  ExportGridToXLSX(Caminho, Grid, true,
    true, false);

  if MostrarMsg('Planilha salva em "' + Caminho + '"',
    ' Desja abrir o arquivo agora?',
    'Sim', 'Não', '', '', COR_SUCESSO, 10) = 1 then
    ShellExecute(0, 'open', PChar(Caminho), nil, nil,
      SW_SHOWNORMAL);
  TableView.OptionsView.Header := true;
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

end.
