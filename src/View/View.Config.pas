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
  cxShellBrowserDialog,
  dxSkinOffice2019Colorful,
  cxDropDownEdit;

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
    dxLayoutItem9: TdxLayoutItem;
    edtMapeamento: TcxButtonEdit;
    dialogMapeamento: TdxOpenFileDialog;
    LocalizarMapeamento: TAction;
    dxLayoutItem10: TdxLayoutItem;
    comboEstado: TcxComboBox;
    dxLayoutItem11: TdxLayoutItem;
    lblEmpresa: TcxLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure LocalizarBancoEcoExecute(Sender: TObject);
    procedure LocalizarFBClientExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LocalizarPastaExportacaoExecute(Sender: TObject);
    procedure LocalizarPastaImportacaoExecute(Sender: TObject);
    procedure LocalizarMapeamentoExecute(Sender: TObject);
  private
    procedure Salvar;
    procedure Cancelar;
    procedure SalvarParametro(Edit: TcxCustomTextEdit;
      Secao, Parametro: string); overload;
    procedure SalvarParametro(Checkbox: TcxCheckBox;
      Secao, Parametro: string); overload;
    procedure SalvarParametro(Combobox: TcxComboBox;
      Secao, Parametro: string); overload;
    procedure CarregarParametro(Edit: TcxCustomTextEdit; Secao,
      Parametro: string); overload;
    procedure CarregarParametro(Checkbox: TcxCheckBox;
      Secao, Parametro: string); overload;
    procedure CarregarParametro(Combobox: TcxComboBox;
      Secao, Parametro: string); overload;
    procedure CarregarParametros;
    procedure LocalizarArquivo(Dialog: TdxOpenFileDialog;
      Edit: TcxCustomTextEdit);
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

procedure TformConfig.SalvarParametro(Checkbox: TcxCheckBox;
  Secao, Parametro: string);
begin
  TIniHelper.SetValue(Secao, Parametro, Checkbox.Checked)
end;

procedure TformConfig.SalvarParametro(Edit: TcxCustomTextEdit;
  Secao, Parametro: string);
begin
  TIniHelper.SetValue(Secao, Parametro, Edit.Text)
end;

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
  SalvarParametro(edtBanco, 'conexao', 'banco');
  SalvarParametro(edtFBClient, 'conexao', 'firebird');
  SalvarParametro(edtImportacao, 'importacao', 'diretorio');
  SalvarParametro(edtExportacao, 'exportacao', 'diretorio');
  SalvarParametro(edtMapeamento, 'importacao', 'mapeamento');

  SalvarParametro(checkSalvarAutomatico, 'exportacao',
    'salvar-automatico');
  SalvarParametro(checkBuscarAutomatico, 'importacao',
    'buscar-automatico');

  SalvarParametro(comboEstado, 'empresa', 'uf');
  ModalResult := mrOk;
end;

procedure TformConfig.SalvarParametro(Combobox: TcxComboBox; Secao,
  Parametro: string);
begin
  TIniHelper.SetValue(Secao, Parametro, Combobox.Text)
end;

procedure TformConfig.Cancelar;
begin
  ModalResult := mrCancel;
end;

procedure TformConfig.CarregarParametro(Edit: TcxCustomTextEdit; Secao,
  Parametro: string);
begin
  Edit.Text := TIniHelper.GetValue(Secao, Parametro, '')
end;

procedure TformConfig.CarregarParametro(Checkbox: TcxCheckBox; Secao,
  Parametro: string);
begin
  Checkbox.Checked := TIniHelper.GetValue(Secao, Parametro, Checkbox.Checked)
end;

procedure TformConfig.CarregarParametro(Combobox: TcxComboBox; Secao,
  Parametro: string);
begin
  Combobox.Text := TIniHelper.GetValue(Secao, Parametro, Combobox.Text)
end;

procedure TformConfig.CarregarParametros;
begin
  CarregarParametro(edtFBClient, 'conexao', 'firebird');
  CarregarParametro(edtBanco, 'conexao', 'banco');
  CarregarParametro(edtExportacao, 'exportacao', 'diretorio');
  CarregarParametro(edtImportacao, 'importacao', 'diretorio');
  CarregarParametro(edtMapeamento, 'importacao', 'mapeamento');

  CarregarParametro(checkBuscarAutomatico, 'importacao',
    'buscar-automatico');
  CarregarParametro(checkSalvarAutomatico, 'exportacao',
    'salvar-automatico');

  CarregarParametro(comboEstado, 'empresa', 'uf');
end;

procedure TformConfig.FormCreate(Sender: TObject);
begin
  CarregarParametros
end;

procedure TformConfig.LocalizarArquivo(Dialog: TdxOpenFileDialog;
  Edit: TcxCustomTextEdit);
begin
  StyledForm.ShowClientInActiveEffect;

  Dialog.FileName := Edit.Text;
  if Dialog.Execute then
    Edit.Text := Dialog.FileName;

  StyledForm.HideClientInActiveEffect;
end;

procedure TformConfig.LocalizarBancoEcoExecute(Sender: TObject);
begin
  LocalizarArquivo(dlgBancoEco, edtBanco);
end;

procedure TformConfig.LocalizarFBClientExecute(Sender: TObject);
begin
  LocalizarArquivo(dlgFBClient, edtFBClient);
end;

procedure TformConfig.LocalizarMapeamentoExecute(Sender: TObject);
begin
  LocalizarArquivo(dialogMapeamento, edtMapeamento);
end;

procedure TformConfig.LocalizarPastaExportacaoExecute(Sender: TObject);
begin
  LocalizarArquivo(dialogExportacao, edtExportacao);
end;

procedure TformConfig.LocalizarPastaImportacaoExecute(Sender: TObject);
begin
  LocalizarArquivo(dialogImportacao, edtImportacao);
end;

end.
