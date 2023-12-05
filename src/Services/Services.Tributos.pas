unit Services.Tributos;

interface

uses
  System.SysUtils,
  System.Classes,
  Model.Connection,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.Phys.IBBase,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Model.Produto,
  ragna;

type
  TServiceTributos = class(TDM)
    Tributos: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Post(Produto: TProduto);
  end;

var
  ServiceTributos: TServiceTributos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceTributos }

class procedure TServiceTributos.Post(Produto: TProduto);
begin

end;

end.
