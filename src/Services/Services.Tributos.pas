unit Services.Tributos;

interface

uses
  System.SysUtils,
  dialogs,
  System.Classes,
  Provider.Connection,
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
    CESTAlterados: integer;
    IPIAlterados: integer;
    PISCOFINSAlterados: integer;
  end;

type
  TServiceTributos = class(TProviderConnection)
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
    NCM: TFDQuery;
    NCMCodigoProduto: TStringField;
    NCMClassificacaoFiscal: TStringField;
    ComparaCEST: TFDQuery;
    ComparaCESTPRODUTO: TStringField;
    ComparaCESTCEST: TStringField;
    SelectCEST: TFDQuery;
    SelectCESTIDCEST: TIntegerField;
    UpdateCEST: TFDQuery;
    ComparaPercIPI: TFDQuery;
    UpdatePercIPI: TFDQuery;
    UpdateCSTIPI: TFDQuery;
    ComparaCSTIPI: TFDQuery;
    VinculoTributario: TFDQuery;
    SelectGrupoTributacao: TFDQuery;
    InsertGrupoTributacao: TFDQuery;
    UpdateGrupoTributacaoProduto: TFDQuery;
    ComparaGrupoTributacaoProduto: TFDQuery;
  private
    { Private declarations }
    function AtualizarICMS(Produto: iProduto): boolean;
    function AtualizarNCM(Produto: iProduto): boolean;
    function AtualizarCEST(Produto: iProduto): boolean;
    function AtualizarIPI(Produto: iProduto): boolean;
    function AtualizarPISCOFINS(Produto: iProduto): boolean;
    function ObterUltimoID(Tabela, Campo: string;
      MultiEmpresa: boolean): integer;
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

function TServiceTributos.AtualizarCEST(Produto: iProduto): boolean;
begin
  ComparaCEST.ParamByName('Produto').AsString := Produto.Codigo;
  ComparaCEST.Open;
  if ComparaCEST.FieldByName('CEST').AsString = Produto.CEST then
    Result := False
  else
  begin
    SelectCEST.ParamByName('CEST').AsString := Produto.CEST;
    SelectCEST.Open;

    if not SelectCEST.IsEmpty then
    begin
      var
      CEST := SelectCEST.FieldByName('IDCEST').AsInteger;

      UpdateCEST.ParamByName('Produto').AsString := Produto.Codigo;
      UpdateCEST.ParamByName('CEST').AsInteger := CEST;
      UpdateCEST.ExecSQL;
      Result := True
    end
    else
      Result := False
  end;

  ComparaCEST.Close;
  SelectCEST.Close;
end;

function TServiceTributos.AtualizarICMS(Produto: iProduto): boolean;
begin
  ICMS.ParamByName('Empresa').AsString := TServiceEmpresas.GetEmpresa;
  ICMS.ParamByName('Produto').AsString := Produto.Codigo;
  ICMS.ParamByName('Estado').AsString := TIniHelper.GetValue('empresa',
    'uf', 'PA');
  ICMS.Open;
  if not ICMS.IsEmpty then
  begin
    Result := True;
    ICMS.Edit;
    // Alteração de dados
    /// CFOP
    CFOPVendaContribuinte.AsString := Produto.CFOPVenda;
    CFOPVendaConsumidor.AsString := Produto.CFOPVenda;

    /// UF
    Estado.AsString := TIniHelper.GetValue('empresa',
      'uf', 'PA');

    /// CST
    CSTCompra.AsString := Produto.CST;
    CSTContribuinte.AsString := Produto.CST;
    CSTConsumidor.AsString := Produto.CST;

    /// Alíquotas de ICMS
    PercICMSCompra.AsSingle := Produto.PercICMS;
    PercICMSContribuinte.AsSingle := Produto.PercICMS;
    PercICMSConsumidor.AsSingle := Produto.PercICMS;
    PercICMSSTContribuinte.AsSingle := Produto.PercICMSST;
    PercICMSSTConsumidor.AsSingle := Produto.PercICMSST;

    /// CSOSN
    CSOSNConsumidor.AsString := Produto.CSOSN;
    CSOSNContribuinte.AsString := Produto.CSOSN;

    /// Outras alíquotas
    PercFCP.AsSingle := Produto.FCP;

    // Fim da alteração de dados
    ICMS.Post
  end
  else
    Result := False;

  ICMS.Close;
end;

function TServiceTributos.AtualizarIPI(Produto: iProduto): boolean;
begin
  // Aliquota/percentual
  ComparaPercIPI.ParamByName('Produto').AsString := Produto.Codigo;
  ComparaPercIPI.Open;

  if ComparaPercIPI.FieldByName('IPI').AsFloat = Produto.PercIPI then
    Result := False
  else
  begin
    UpdatePercIPI.ParamByName('Produto').AsString := Produto.Codigo;
    UpdatePercIPI.ParamByName('IPI').AsFloat := Produto.PercIPI;
    UpdatePercIPI.ExecSQL;

    Result := True;
  end;
  ComparaPercIPI.Close;

  // CST/Enquadramento
  ComparaCSTIPI.ParamByName('Produto').AsString := Produto.Codigo;
  ComparaCSTIPI.Open;
  if ComparaCSTIPI.FieldByName('CST').AsString = Produto.CSTIPI then
    Result := False
  else
  begin
    UpdateCSTIPI.ParamByName('Produto').AsString := Produto.Codigo;
    UpdateCSTIPI.ParamByName('CST').AsString := Produto.CSTIPI;
    UpdateCSTIPI.ExecSQL;

    Result := True;
  end;
  ComparaCSTIPI.Close

end;

function TServiceTributos.AtualizarNCM(Produto: iProduto): boolean;
begin

  NCM.ParamByName('Produto').AsString := Produto.Codigo;
  NCM.Open;

  if NCMClassificacaoFiscal.AsString <> Produto.NCM then
  begin
    Result := True;
    NCM.Edit;
    NCMClassificacaoFiscal.AsString := Produto.NCM;
    NCM.Post
  end
  else
    Result := False;

  NCM.Close;
end;

function TServiceTributos.AtualizarPISCOFINS(Produto: iProduto): boolean;
begin
  if (Produto.CSTPisCofinsEntrada = '') and (Produto.CSTPisCofinsSaida = '')
  then
    Result := False
  else
  begin
    VinculoTributario.Open;
    if VinculoTributario.IsEmpty then
    begin
      VinculoTributario.Insert;
      VinculoTributario.FieldByName('DESCRICAO').AsString := 'VINCULO PADRÃO';
      VinculoTributario.FieldByName('USUARIO').AsString := 'SUPERVISOR';
      VinculoTributario.Post;
      Result := True;
    end;

    SelectGrupoTributacao.ParamByName('empresa').AsString :=
      TServiceEmpresas.GetEmpresa;
    SelectGrupoTributacao.ParamByName('entrada').AsString :=
      Produto.CSTPisCofinsEntrada;
    SelectGrupoTributacao.ParamByName('saida').AsString :=
      Produto.CSTPisCofinsSaida;
    SelectGrupoTributacao.Open;

    if SelectGrupoTributacao.IsEmpty then
    begin
      InsertGrupoTributacao.Open;
      InsertGrupoTributacao.Insert;
      InsertGrupoTributacao.FieldByName('empresa').AsString :=
        TServiceEmpresas.GetEmpresa;
      InsertGrupoTributacao.FieldByName('usuario').AsString := 'IMENDES';
      InsertGrupoTributacao.FieldByName('descricao').AsString :=
        Format('CST ENTRADA %s CST SAIDA %s',
        [Produto.CSTPisCofinsEntrada, Produto.CSTPisCofinsSaida]);
      InsertGrupoTributacao.FieldByName('IDGRUPOTRIBUTACAO').AsInteger :=
        ObterUltimoID('TESTGRUPOTRIBUTACAO', 'IDGRUPOTRIBUTACAO', True) + 1;
      InsertGrupoTributacao.Post;

      UpdateGrupoTributacaoProduto.ParamByName('produto').AsString :=
        Produto.Codigo;
      UpdateGrupoTributacaoProduto.ParamByName('empresa').AsString :=
        TServiceEmpresas.GetEmpresa;
      UpdateGrupoTributacaoProduto.ParamByName('grupotributacao').AsInteger :=
        ObterUltimoID('TESTGRUPOTRIBUTACAO', 'IDGRUPOTRIBUTACAO', True);
      UpdateGrupoTributacaoProduto.ExecSQL;
      Result := True;
    end
    else
    begin

      ComparaGrupoTributacaoProduto.ParamByName('produto').AsString :=
        Produto.Codigo;
      ComparaGrupoTributacaoProduto.ParamByName('empresa').AsString :=
        TServiceEmpresas.GetEmpresa;
      ComparaGrupoTributacaoProduto.Open;

      if ComparaGrupoTributacaoProduto.FieldByName('idgrupotributacao')
        .AsInteger <> SelectGrupoTributacao.FieldByName('IDGRUPOTRIBUTACAO').AsInteger
      then
      begin
        UpdateGrupoTributacaoProduto.ParamByName('produto').AsString :=
          Produto.Codigo;
        UpdateGrupoTributacaoProduto.ParamByName('empresa').AsString :=
          TServiceEmpresas.GetEmpresa;
        UpdateGrupoTributacaoProduto.ParamByName('grupotributacao').AsInteger :=
          SelectGrupoTributacao.FieldByName('IDGRUPOTRIBUTACAO').AsInteger;
        UpdateGrupoTributacaoProduto.ExecSQL;
        Result := True;
      end
      else
        Result := False
    end;

    SelectGrupoTributacao.Close;
    VinculoTributario.Close;
    ComparaGrupoTributacaoProduto.Close
  end;
end;

function TServiceTributos.ObterUltimoID(Tabela, Campo: string;
  MultiEmpresa: boolean): integer;
begin
  var
  Query := TFDQuery.Create(Self);
  try
    Query.Connection := Connection;

    if MultiEmpresa then
      Query.SQL.Text := Format('SELECT MAX(%s) FROM %s where empresa = %d',
        [Campo, Tabela, TServiceEmpresas.GetEmpresa.ToInteger])
    else
      Query.SQL.Text := Format('SELECT MAX(%s) FROM %s', [Campo, Tabela]);

    Query.Open;

    if not Query.IsEmpty then
      Result := Query.Fields[0].AsInteger
    else
      Result := 0;
  finally
    Query.Free;
  end;
end;

class function TServiceTributos.Post(var Produtos: TList<iProduto>)
  : TRetornoProcessamento;
begin
  Result.ICMSAdicionados := 0;
  Result.ICMSAlterados := 0;
  Result.NCMAlterados := 0;
  Result.CESTAlterados := 0;
  Result.IPIAlterados := 0;
  Result.PISCOFINSAlterados := 0;

  var
  lTributos := TServiceTributos.Create;
  try
    for var Produto in Produtos do
    begin
      // ICMS
      if lTributos.AtualizarICMS(Produto) then
        Inc(Result.ICMSAlterados)
      else
        Inc(Result.ICMSAdicionados);

      // NCM
      if lTributos.AtualizarNCM(Produto) then
        Inc(Result.NCMAlterados);

      // CEST
      if lTributos.AtualizarCEST(Produto) then
        Inc(Result.CESTAlterados);

      // IPI
      if lTributos.AtualizarIPI(Produto) then
        Inc(Result.IPIAlterados);

      // PIS/COFINS
      if lTributos.AtualizarPISCOFINS(Produto) then
        Inc(Result.PISCOFINSAlterados);
    end;
  finally
    Produtos.Free;
    lTributos.Free
  end;
end;

end.
