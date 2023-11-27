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
  Vcl.Menus,
  cxContainer,
  cxTextEdit,
  cxLabel,
  Vcl.StdCtrls,
  cxButtons,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridCustomView,
  cxGrid,
  Datasnap.DBClient,
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
  FireDAC.UI.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  dxShellDialogs,
  FireDAC.Phys.ODBCDef,
  FireDAC.Phys.ODBCBase,
  FireDAC.Phys.ODBC,
  Vcl.TMSFNCCustomComponent,
  Vcl.TMSFNCGridExcelIO;

type
  TformImportacao = class(TformChild)
    Grid: TcxGrid;
    TableView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    pnlTop: TdxPanel;
    btnImportar: TcxButton;
    lblRegistros: TcxLabel;
    edtPesquisa: TcxTextEdit;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    dialogExcel: TdxOpenFileDialog;
    TMSFNCGridExcelIO1: TTMSFNCGridExcelIO;
    procedure btnImportarClick(Sender: TObject);
  private
    procedure ImportarExcel;

  public
    { Public declarations }
  end;

var
  formImportacao: TformImportacao;

implementation

{$R *.dfm}

{ TformImportacao }

procedure TformImportacao.btnImportarClick(Sender: TObject);
begin
  inherited;
  if dialogExcel.Execute then

end;

procedure TformImportacao.ImportarExcel;
begin
  // Limpar dados existentes no ClientDataSet
  ClientDataSet1.EmptyDataSet;

  // Importar dados do Excel para o ClientDataSet
  TMSFNCGridExcelIO1.sav('Caminho\\Para\\Seu\\Arquivo.xls',
    ClientDataSet1);

end;

end.
