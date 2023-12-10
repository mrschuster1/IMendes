unit View.Empresas;

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
  cxClasses,
  dxLayoutLookAndFeels,
  dxLayoutContainer,
  dxLayoutControl,
  cxLabel,
  Vcl.StdCtrls,
  cxButtons,
  dxPanel,
  dxCore,
  dxSkinsForm,
  dxLayoutcxEditAdapters,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit, dxSkinOffice2019Colorful;

type
  TformEmpresas = class(TForm)
    pnlMain: TdxPanel;
    pnlBottom: TdxPanel;
    btnConfirmar: TcxButton;
    lblRegistros: TcxLabel;
    btnCancelar: TcxButton;
    Layout: TdxLayoutControl;
    LayoutGroup_Root: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxSkinController: TdxSkinController;
    dxLayoutItem1: TdxLayoutItem;
    lblEmpresas: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    cbEmpresas: TcxComboBox;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure Cancelar;
    procedure Salvar;
    { Private declarations }
  public
    { Public declarations }
    class var Empresa: integer;
    class function SelecionarEmpresa: boolean;
  end;

var
  formEmpresas: TformEmpresas;

implementation

{$R *.dfm}


uses
  Provider.Connection,
  Services.Empresas;

{ TformEmpresas }

procedure TformEmpresas.btnCancelarClick(Sender: TObject);
begin
  Cancelar
end;

procedure TformEmpresas.btnConfirmarClick(Sender: TObject);
begin
  Salvar
end;

procedure TformEmpresas.FormActivate(Sender: TObject);
begin
  if cbEmpresas.Properties.Items.Count = 1 then
    Salvar
end;

procedure TformEmpresas.FormShow(Sender: TObject);
begin
  TServiceEmpresas.ListarEmpresas(cbEmpresas.Properties.Items);
  cbEmpresas.ItemIndex := 0
end;

class function TformEmpresas.SelecionarEmpresa: boolean;
begin
  var
  lFormEmpresas := Self.Create(application);
  try
    result := lFormEmpresas.ShowModal = mrok;
  finally
    lFormEmpresas.Free
  end;
end;

procedure TformEmpresas.Cancelar;
begin
  ModalResult := mrCancel;
end;

procedure TformEmpresas.Salvar;
begin
  TServiceEmpresas.SetEmpresa
    (Copy(cbEmpresas.Properties.Items[cbEmpresas.ItemIndex], 0, 3));
  ModalResult := mrok;
end;

end.
