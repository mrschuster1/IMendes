unit View.Config;

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
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinOffice2019Black,
  cxGeometry,
  dxFramedControl,
  Vcl.Menus,
  cxContainer,
  cxEdit,
  cxLabel,
  Vcl.StdCtrls,
  cxButtons,
  dxPanel,
  cxClasses,
  dxLayoutLookAndFeels,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutcxEditAdapters,
  System.Actions,
  Vcl.ActnList,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  dxShellDialogs,
  scStyledForm,
  Helper.Forms,
  cxCheckBox,
  cxShellBrowserDialog;

type
  TformConfig = class(TForm)
    pnlMain: TdxPanel;
    pnlBottom: TdxPanel;
    btnSalvar: TcxButton;
    lblRegistros: TcxLabel;
    btnCancelar: TcxButton;
    Layout: TdxLayoutControl;
    LayoutGroup_Root: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    edtBanco: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    ActionList1: TActionList;
    LocalizarBancoEco: TAction;
    dlgBancoEco: TdxOpenFileDialog;
    dxLayoutItem1: TdxLayoutItem;
    edtFBClient: TcxButtonEdit;
    dlgFBClient: TdxOpenFileDialog;
    LocalizarFBClient: TAction;
    StyledForm: TscStyledForm;
    lblConexao: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    lblCaminhos: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
    edtExportacao: TcxButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtImportacao: TcxButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    checkSalvarAutomatico: TcxCheckBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem8: TdxLayoutItem;
    checkBuscarAutomatico: TcxCheckBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    LocalizarPastaExportacao: TAction;
    LocalizarPastaImportacao: TAction;
    dialogExportacao: TdxOpenFileDialog;
    dialogImportacao: TdxOpenFileDialog;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure LocalizarBancoEcoExecute(Sender: TObject);
    procedure LocalizarFBClientExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LocalizarPastaExportacaoExecute(Sender: TObject);
    procedure LocalizarPastaImportacaoExecute(Sender: TObject);
  private
    procedure Salvar;
    procedure Cancelar;
    procedure SalvarParametroString(Edit: TcxCustomTextEdit;
      Secao, Parametro: string);
    procedure CarregarParametroString(Edit: TcxCustomTextEdit; Secao,
      Parametro: string);
    procedure CarregarParametroBoolean(Checkbox: TcxCheckBox;
      Secao, Parametro: string);
    procedure SalvarParametroBoolean(Checkbox: TcxCheckBox;
      Secao, Parametro: string);
    procedure CarregarParametros;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConfig: TformConfig;

implementation

{$R *.dfm}


uses
  Helpers.Ini,
  View.Empresas;

procedure TformConfig.btnCancelarClick(Sender: TObject);
begin
  Cancelar;
end;

procedure TformConfig.btnSalvarClick(Sender: TObject);
begin
  Salvar
end;

procedure TformConfig.Salvar;
begin
  SalvarParametroString(edtBanco, 'conexao', 'banco');
  SalvarParametroString(edtFBClient, 'conexao', 'firebird');
  SalvarParametroString(edtImportacao, 'importacao', 'diretorio');
  SalvarParametroString(edtExportacao, 'exportacao', 'diretorio');

  SalvarParametroBoolean(checkSalvarAutomatico, 'exportacao',
    'salvar-automatico');
  SalvarParametroBoolean(checkBuscarAutomatico, 'importacao',
    'buscar-automatico');
  modalresult := mrok;
end;

procedure TformConfig.SalvarParametroBoolean(Checkbox: TcxCheckBox; Secao,
  Parametro: string);
begin
  TIniHelper.SetValue(Secao, Parametro, Checkbox.Checked)
end;

procedure TformConfig.SalvarParametroString(Edit: TcxCustomTextEdit;
  Secao, Parametro: string);
begin
  TIniHelper.SetValue(Secao, Parametro, Edit.Text)
end;

procedure TformConfig.Cancelar;
begin
  modalresult := mrCancel;
end;

procedure TformConfig.CarregarParametroString(Edit: TcxCustomTextEdit; Secao,
  Parametro: string);
begin
  Edit.Text := TIniHelper.GetValue(Secao, Parametro, '')
end;

procedure TformConfig.CarregarParametroBoolean(Checkbox: TcxCheckBox; Secao,
  Parametro: string);
begin
  Checkbox.Checked := TIniHelper.GetValue(Secao, Parametro, Checkbox.Checked)
end;

procedure TformConfig.CarregarParametros;
begin
  CarregarParametroString(edtFBClient, 'conexao', 'firebird');
  CarregarParametroString(edtBanco, 'conexao', 'banco');
  CarregarParametroString(edtExportacao, 'exportacao', 'diretorio');
  CarregarParametroString(edtImportacao, 'importacao', 'diretorio');
  CarregarParametroBoolean(checkBuscarAutomatico, 'importacao',
    'buscar-automatico');
  CarregarParametroBoolean(checkSalvarAutomatico, 'exportacao',
    'salvar-automatico');
  dlgFBClient.FileName := edtFBClient.Text;
  dlgBancoEco.FileName := edtBanco.Text;
end;

procedure TformConfig.FormCreate(Sender: TObject);
begin
  CarregarParametros
end;

procedure TformConfig.LocalizarBancoEcoExecute(Sender: TObject);
begin
  StyledForm.ShowClientInActiveEffect;

  if dlgBancoEco.Execute then
    edtBanco.Text := dlgBancoEco.FileName;

  StyledForm.HideClientInActiveEffect;
end;

procedure TformConfig.LocalizarFBClientExecute(Sender: TObject);
begin
  StyledForm.ShowClientInActiveEffect;

  if dlgFBClient.Execute then
    edtFBClient.Text := dlgFBClient.FileName;

  StyledForm.HideClientInActiveEffect;
end;

procedure TformConfig.LocalizarPastaExportacaoExecute(Sender: TObject);
begin
  if dialogExportacao.Execute then
    edtExportacao.Text := dialogExportacao.FileName;
end;

procedure TformConfig.LocalizarPastaImportacaoExecute(Sender: TObject);
begin
  if dialogImportacao.Execute then
    edtImportacao.Text := dialogImportacao.FileName;
end;

end.
