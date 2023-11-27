unit View.Child;

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
  scStyledForm,
  cxClasses,
  cxLocalization,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinOffice2019Black,
  cxGeometry,
  dxFramedControl,
  dxPanel;

type
  TformChild = class(TForm)
    Localizer: TcxLocalizer;
    StyledForm: TscStyledForm;
    pnlMain: TdxPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure CarregarIdioma;
  public
    { Public declarations }
  end;

var
  formChild: TformChild;

implementation

{$R *.dfm}


procedure TformChild.CarregarIdioma;
begin
  Localizer.loadfromfile(GetCurrentDir + '\resource\pt-br.ini');
  Localizer.Active := true;
  Localizer.Locale := 1046;
end;

procedure TformChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree
end;

procedure TformChild.FormCreate(Sender: TObject);
begin
  CarregarIdioma;
end;

end.
