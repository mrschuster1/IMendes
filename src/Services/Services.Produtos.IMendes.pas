unit Services.Produtos.IMendes;

interface

uses
  System.SysUtils,
  System.Classes,
  Provider.IMendes.Data,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Ragna;

type
  TServiceProdutosIMendes = class(TProviderImendesData)
    Produtos: TFDQuery;
    Produtosprod_id: TFDAutoIncField;
    Produtosprod_EAN: TStringField;
    Produtosprod_codInterno: TStringField;
    Produtosprod_codIMendes: TStringField;
    Produtosprod_descricao: TStringField;
    Produtosprod_CFOPCompra: TStringField;
    Produtosprod_CFOPVenda: TStringField;
    Produtosprod_CST: TStringField;
    Produtosprod_CSOSN: TStringField;
    Produtosprod_modBC: TStringField;
    Produtosprod_pICMS: TBCDField;
    Produtosprod_pICMSPDV: TBCDField;
    Produtosprod_simbPDV: TStringField;
    Produtosprod_pRedBCICMS: TBCDField;
    Produtosprod_pRedBCICMSST: TBCDField;
    Produtosprod_modBCST: TStringField;
    Produtosprod_pICMSST: TBCDField;
    Produtosprod_pMVAST: TBCDField;
    Produtosprod_vPautaST: TFloatField;
    Produtosprod_NCM: TStringField;
    Produtosprod_CEST: TStringField;
    Produtosprod_pIPI: TBCDField;
    Produtosprod_CSTIPI: TStringField;
    Produtosprod_CSTPISCOFINSEntrada: TStringField;
    Produtosprod_CSTPISCOFINSSaida: TStringField;
    Produtosprod_naturezaReceitaIsentaPISCOFINS: TStringField;
    Produtosprod_pFCP: TBCDField;
    Produtosprod_antecipado: TStringField;
    Produtosprod_pDesoneracao: TBCDField;
    Produtosprod_pDifer: TBCDField;
    Produtosprod_lista: TStringField;
    Produtosprod_tipo: TStringField;
    Produtosprod_aliqPIS: TBCDField;
    Produtosprod_aliqCOFINS: TBCDField;
    Produtosprod_adrem: TBCDField;
    Produtosprod_codANP: TStringField;
    Produtosprod_codbenef: TStringField;
    Produtosprod_dthrcad: TStringField;
    Produtosprod_dtalt: TStringField;
    Produtosprod_dtrev: TStringField;
    Produtosprod_status: TStringField;
    Produtosprod_dtconsumo: TStringField;
    Produtosprod_vVenda: TBCDField;
    ProdutosvDAS_IMDS: TBCDField;
    ProdutostpImposto: TStringField;
    Produtosprod_pIsencao: TBCDField;
    Produtosprod_descriCosmos: TStringField;
    Produtosprod_marca: TStringField;
    Produtosprod_gpcCodigo: TStringField;
    Produtosprod_gpcCosmos: TStringField;
    Produtosmarcado: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function Get: TFDQuery;
  end;

var
  ServiceProdutosIMendes: TServiceProdutosIMendes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceProdutosIMendes }

function TServiceProdutosIMendes.Get: TFDQuery;
begin
  Result := Produtos.OpenUp;
end;

end.
