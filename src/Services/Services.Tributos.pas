unit Services.Tributos;

interface

uses
  System.SysUtils,
  dialogs,
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
  System.Generics.Collections,
  ragna;

type
  TRetornoProcessamento = record
    ICMSAdicionados: integer;
    ICMSAlterados: integer;
    NCMAlterados: integer;
  end;

type
  TServiceTributos = class(TDM)
    ICMS: TFDQuery;
    Empresa: TStringField;
    Produto: TStringField;
    Estado: TStringField;
    CSTCompra: TStringField;
    PercICMSCompra: TCurrencyField;
    ICMSCOMPRAREDUCAO: TCurrencyField;
    ICMSCOMPRAMARGEM: TCurrencyField;
    ICMSCOMPRAICMSSUBST: TCurrencyField;
    ICMSMARGEMGARANTIDO: TCurrencyField;
    CSTContribuinte: TStringField;
    CSTConsumidor: TStringField;
    PercICMSContribuinte: TCurrencyField;
    PercICMSConsumidor: TCurrencyField;
    ICMSVENDAREDUCAO1: TCurrencyField;
    ICMSVENDAREDUCAO2: TCurrencyField;
    ICMSVENDAMARGEM1: TCurrencyField;
    ICMSVENDAMARGEM2: TCurrencyField;
    PercICMSSTContribuinte: TCurrencyField;
    PercICMSSTConsumidor: TCurrencyField;
    ICMSDATAINCLUSAO: TDateField;
    ICMSDATAALTERACAO: TDateField;
    ICMSCOMPRAREDUCAOSUBST: TCurrencyField;
    ICMSVENDAREDUCAOSUBST1: TCurrencyField;
    CSOSNConsumidor: TCurrencyField;
    ICMSCSOSNCONSUMIDOR: TIntegerField;
    CSOSNContribuinte: TIntegerField;
    ICMSCSOSNCOMPRA: TIntegerField;
    ICMSCLASSIFICACAOCOMPRA: TSmallintField;
    ICMSVENDAPROTEGE1: TCurrencyField;
    ICMSVENDAPROTEGE2: TCurrencyField;
    ICMSIDTABELAAJUSTEFISCENTRADA: TIntegerField;
    ICMSDATAHORAALTERACAO: TSQLTimeStampField;
    ICMSIDICMS: TIntegerField;
    ICMSIDTABELAAJUSTEFISCCONS: TIntegerField;
    ICMSIDTABELAAJUSTEFISCREVEN: TIntegerField;
    CFOPVendaContribuinte: TStringField;
    CFOPVendaConsumidor: TStringField;
    ICMSVENDAPDIF1: TCurrencyField;
    ICMSVENDAPDIF2: TCurrencyField;
    ICMSCOMPRAPDIF: TCurrencyField;
    ICMSALIQINTERNA: TCurrencyField;
    PercFCP: TCurrencyField;
    ICMSPERCICMSDESONCONS: TCurrencyField;
    ICMSMOTDESICMSCONS: TSmallintField;
    ICMSPERCICMSDESONCONTRIB: TCurrencyField;
    ICMSMOTDESICMSCONTRIB: TSmallintField;
    ICMSREDUCAOICMSANTECIPADO: TCurrencyField;
    ICMSGID_CODBENEFICIO_COMPRA: TLargeintField;
    ICMSGID_CODBENEFICIO_CONTRIB: TLargeintField;
    ICMSGID_CODBENEFICIO_NAOCONTRIB: TLargeintField;
    ICMSNAODESC_ICMSDESON_CONTRIB: TSmallintField;
    ICMSNAODESC_ICMSDESON_NAOCONTRIB: TSmallintField;
    ICMSORIGEMALTERACAO: TStringField;
    ICMSDIFAL_ALIQICMSINTERNA: TCurrencyField;
    ICMSDIFAL_ALIQFCP: TCurrencyField;
    ICMSDIFAL_ALIQREDUCAO: TCurrencyField;
    ICMSDIFAL_TIPOCALCULO: TIntegerField;
    ICMSDIFAL_ICMSSTCONTRIB: TIntegerField;
    ICMSDIFAL_CONVICMS5291: TIntegerField;
  private
    { Private declarations }
    class function ExisteICMS(Produto: string): boolean;
    class function AtualizarICMS(Produto: iProduto): boolean;
    class procedure AdicionarICMS(Produto: iProduto);
    class function AtualizarNCM(Produto: iProduto): boolean;
  public
    { Public declarations }
    class function Post(var Produtos: TList<iProduto>): TRetornoProcessamento;
  end;

var
  ServiceTributos: TServiceTributos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


uses
  Services.Empresas,
  Helpers.Ini;

{$R *.dfm}

{ TServiceTributos }

class procedure TServiceTributos.AdicionarICMS(Produto: iProduto);
begin

end;

class function TServiceTributos.AtualizarICMS(Produto: iProduto): boolean;
begin
  var
  Tributos := Self.Create;
  try
    var
    lICMS := Tributos.ICMS;
    lICMS.ParamByName('Empresa').AsString := TServiceEmpresas.GetEmpresa;
    lICMS.ParamByName('Produto').AsString := Produto.Codigo;
    lICMS.ParamByName('Estado').AsString := TIniHelper.GetValue('empresa',
      'uf', 'PA');
    lICMS.Open;
    if not lICMS.IsEmpty then
    begin
      Result := true;
      lICMS.Edit;
      // Alteração de dados
      /// CFOP
      Tributos.CFOPVendaContribuinte.AsString := Produto.CFOPVenda;
      Tributos.CFOPVendaConsumidor.AsString := Produto.CFOPVenda;

      /// UF
      Tributos.Estado.AsString := TIniHelper.GetValue('empresa',
        'uf', 'PA');

      /// CST
      Tributos.CSTCompra.AsString := Produto.CST;
      Tributos.CSTContribuinte.AsString := Produto.CST;
      Tributos.CSTConsumidor.AsString := Produto.CST;

      /// Alíquotas de ICMS
      Tributos.PercICMSCompra.AsSingle := Produto.PercICMS;
      Tributos.PercICMSContribuinte.AsSingle := Produto.PercICMS;
      Tributos.PercICMSConsumidor.AsSingle := Produto.PercICMS;
      Tributos.PercICMSSTContribuinte.AsSingle := Produto.PercICMSST;
      Tributos.PercICMSSTConsumidor.AsSingle := Produto.PercICMSST;

      /// CSOSN
      Tributos.CSOSNConsumidor.AsString := Produto.CSOSN;
      Tributos.CSOSNContribuinte.AsString := Produto.CSOSN;

      /// Outras alíquotas
      Tributos.PercFCP.AsSingle := Produto.FCP;

      // Fim da alteração de dados
      lICMS.Post
    end
    else
      Result := false

  finally
    Tributos.free
  end;
end;

class function TServiceTributos.AtualizarNCM(Produto: iProduto): boolean;
begin
  var
  Tributos := Self.Create;
  try
    var
    Query := TFDQuery.Create(Tributos);
    try
      Query.Connection := Tributos.Connection;
      Query.Sql.Add
        ('select codigo, classificacaofiscal from testprodutogeral where codigo = :produto');
      Query.ParamByName('Produto').AsString := Produto.Codigo;
      Query.Open;

      if Query.FieldByName('ClassificacaoFiscal').AsString <> Produto.NCM then
      begin
        Result := true;
        Query.Edit;
        Query.FieldByName('ClassificacaoFiscal').AsString := Produto.NCM;
        Query.Post
      end
      else
        Result := false
    finally
      Query.free
    end;
  finally
    Tributos.free
  end;
end;

class function TServiceTributos.ExisteICMS(Produto: string): boolean;
begin
  var
  Tributos := Self.Create;
  try
    var
    Query := TFDQuery.Create(Tributos);
    try
      Query.Connection := Tributos.Connection;
      Query.Sql.Add
        ('select * from testicms where empresa = :empresa and produto = :produto');
      Query.ParamByName('Empresa').AsString := TServiceEmpresas.GetEmpresa;
      Query.ParamByName('Produto').AsString := Produto;
      Query.Open;
      Result := not Query.IsEmpty
    finally
      Query.free
    end;
  finally
    Tributos.free
  end;
end;

class function TServiceTributos.Post(var Produtos: TList<iProduto>)
  : TRetornoProcessamento;
begin
  try
    Result.ICMSAdicionados := 0;
    Result.ICMSAlterados := 0;
    Result.NCMAlterados := 0;

    for var Produto in Produtos do
    begin
      // ICMS
      if AtualizarICMS(Produto) then
        Inc(Result.ICMSAlterados)
      else
        Inc(Result.ICMSAdicionados);

      // NCM
      if AtualizarNCM(Produto) then
        Inc(Result.NCMAlterados);
    end;
  finally
    Produtos.free
  end;
end;

end.
