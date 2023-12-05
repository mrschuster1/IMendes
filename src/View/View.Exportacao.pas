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
  FireDAC.Comp.Client,
  dxmdaset,
  dxSkinOffice2019Colorful;

type
  TformExportacao = class(TformPesquisaGrade)
    btnExportar: TcxButton;
    ds: TDataSource;
    dlgExportGridExcel: TdxSaveFileDialog;
    TableViewCODIGOBARRA: TcxGridDBColumn;
    TableViewCODIGO: TcxGridDBColumn;
    TableViewDESCRICAO: TcxGridDBColumn;
    MemData: TdxMemData;
    MemDataCODIGOBARRA: TStringField;
    MemDataCODIGO: TStringField;
    MemDataDESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure MemDataAfterOpen(DataSet: TDataSet);
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
  Utils.Dialogs,
  Services.Empresas,
  Services.Produtos;

procedure TformExportacao.AbrirQuery;
begin
  var
  lProdutos := TServiceProdutos.Create;
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

procedure TformExportacao.btnExportarClick(Sender: TObject);
begin
  inherited;
  ExportarGridExcel
end;

procedure TformExportacao.ExportarGridExcel;
begin
  StyledForm.ShowClientInActiveEffect;

  if (TIniHelper.GetValue('exportacao', 'salvar-automatico', false) = True) and
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

procedure TformExportacao.MemDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TableView.DataController.CreateAllItems(True);
end;

procedure TformExportacao.SalvarGridExcel(Caminho: string);
begin
  TableView.OptionsView.Header := false;
  try
    ExportGridToXLSX(Caminho, Grid, True,
      True, false);
    if MostrarMsg('Planilha salva em "' + Caminho + '"',
      ' Desja abrir o arquivo agora?',
      'Sim', 'Não', '', '', COR_SUCESSO, 10) = 1 then
      ShellExecute(0, 'open', PChar(Caminho), nil, nil,
        SW_SHOWNORMAL);
    TableView.OptionsView.Header := True;
  except
    on E: Exception do
    begin
      Erro(E.Message);
      StyledForm.HideClientInActiveEffect;
    end;

  end;

end;

end.
