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
  scStyledForm, Helper.Forms;

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
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure LocalizarBancoEcoExecute(Sender: TObject);
    procedure LocalizarFBClientExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Salvar;
    procedure Cancelar;
    procedure SalvarParametro(Edit: TcxCustomTextEdit;
      Secao, Parametro: string);
    procedure CarregarParametro(Edit: TcxCustomTextEdit; Secao,
      Parametro: string);
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
  Helpers.Ini, View.Empresas;

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
  modalresult := mrok;
end;

procedure TformConfig.SalvarParametro(Edit: TcxCustomTextEdit;
  Secao, Parametro: string);
begin
  TIniHelper.SetValue(Secao, Parametro, Edit.Text)
end;

procedure TformConfig.Cancelar;
begin
  modalresult := mrCancel;
end;

procedure TformConfig.CarregarParametro(Edit: TcxCustomTextEdit; Secao,
  Parametro: string);
begin
  Edit.Text := TIniHelper.GetValue(Secao, Parametro, '')
end;

procedure TformConfig.CarregarParametros;
begin
  CarregarParametro(edtFBClient, 'conexao', 'firebird');
  CarregarParametro(edtBanco, 'conexao', 'banco');
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

end.
