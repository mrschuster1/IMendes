unit Services.Produtos;

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
  ragna;

type
  TServiceProdutos = class(TDM)
    Produtos: TFDQuery;
    CodigoBarra: TStringField;
    Codigo: TStringField;
    Descricao: TStringField;
    Empresa: TStringField;
    procedure ProdutosBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function Get: TFDQuery;
  end;

var
  ServiceProdutos: TServiceProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


uses
  Services.Empresas;

{$R *.dfm}


function TServiceProdutos.Get: TFDQuery;
begin
  Result := Produtos.OpenUp;
end;

procedure TServiceProdutos.ProdutosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Produtos.ParamByName('Empresa').AsString := TServiceEmpresas.GetEmpresa;
end;

end.
