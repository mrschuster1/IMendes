unit Model.Produto;

interface

type
  iProduto = interface
    ['{1641F613-52B5-4F4C-955A-105DF720E493}']
    function Empresa(value: string): iProduto; overload;
    function Empresa: string; overload;
    function Codigo(value: string): iProduto; overload;
    function Codigo: string; overload;
    function EAN(value: string): iProduto; overload;
    function EAN: string; overload;
    function Nome(value: string): iProduto; overload;
    function Nome: string; overload;
    function CFOPVenda(value: string): iProduto; overload;
    function CFOPVenda: string; overload;
    function CFOPCompra(value: string): iProduto; overload;
    function CFOPCompra: string; overload;
    function CST(value: string): iProduto; overload;
    function CST: string; overload;
    function CSOSN(value: string): iProduto; overload;
    function CSOSN: string; overload;
    function PercICMS(value: single): iProduto; overload;
    function PercICMS: single; overload;
    function PercICMSST(value: single): iProduto; overload;
    function PercICMSST: single; overload;
    function NCM(value: string): iProduto; overload;
    function NCM: string; overload;
    function CEST(value: string): iProduto; overload;
    function CEST: string; overload;
    function CSTIPI(value: string): iProduto; overload;
    function CSTIPI: string; overload;
    function PercIPI(value: single): iProduto; overload;
    function PercIPI: single; overload;
    function CSTPisCofinsEntrada(value: string): iProduto; overload;
    function CSTPisCofinsEntrada: string; overload;
    function CSTPisCofinsSaida(value: string): iProduto; overload;
    function CSTPisCofinsSaida: string; overload;
    function NatReceitaIsentaPisCofins(value: string): iProduto; overload;
    function NatReceitaIsentaPisCofins: string; overload;
    function PercPIS(value: single): iProduto; overload;
    function PercPIS: single; overload;
    function PercCofins(value: single): iProduto; overload;
    function PercCofins: single; overload;
    function ModBC(value: string): iProduto; overload;
    function ModBC: string; overload;
    function PercICMSPDV(value: single): iProduto; overload;
    function PercICMSPDV: single; overload;
    function PercRedBCICMS(value: single): iProduto; overload;
    function PercRedBCICMS: single; overload;
    function PercRedBCICMSST(value: single): iProduto; overload;
    function PercRedBCICMSST: single; overload;
    function ModBCST(value: string): iProduto; overload;
    function ModBCST: string; overload;
    function IVA(value: single): iProduto; overload;
    function IVA: single; overload;
    function PautaST(value: single): iProduto; overload;
    function PautaST: single; overload;
    function PercDeson(value: single): iProduto; overload;
    function PercDeson: single; overload;
    function PercDiferim(value: single): iProduto; overload;
    function PercDiferim: single; overload;
    function PercIsencao(value: single): iProduto; overload;
    function PercIsencao: single; overload;
    function AdRem(value: single): iProduto; overload;
    function AdRem: single; overload;
    function FCP(value: single): iProduto; overload;
    function FCP: single; overload;

  end;

type
  TProduto = class(TInterfacedObject, iProduto)
  private
    FEmpresa: string;
    FCodigo: string;
    FEAN: string;
    FNome: string;
    FCFOPVenda: string;
    FCFOPCompra: string;
    FCST: string;
    FCSOSN: string;
    FPercICMS: single;
    FPercICMSST: single;
    FNCM: string;
    FCEST: string;
    FCSTIPI: string;
    FPercIPI: single;
    FCSTPisCofinsEntrada: string;
    FCSTPisCofinsSaida: string;
    FNatReceitaIsentaPisCofins: string;
    FPercPIS: single;
    FPercCOFINS: single;
    FModBC: string;
    FPercICMSPDV: single;
    FPercRedBCICMS: single;
    FPercRedBCICMSST: single;
    FModBCST: string;
    FIVA: single;
    FPautaST: single;
    FPercDeson: single;
    FPercDiferim: single;
    FPercIsencao: single;
    FAdRem: single;
    FFCP: single;
  protected

  public
    class function New: TProduto;

    function Empresa(value: string): iProduto; overload;
    function Empresa: string; overload;
    function Codigo(value: string): iProduto; overload;
    function Codigo: string; overload;
    function EAN(value: string): iProduto; overload;
    function EAN: string; overload;
    function Nome(value: string): iProduto; overload;
    function Nome: string; overload;
    function CFOPVenda(value: string): iProduto; overload;
    function CFOPVenda: string; overload;
    function CFOPCompra(value: string): iProduto; overload;
    function CFOPCompra: string; overload;
    function CST(value: string): iProduto; overload;
    function CST: string; overload;
    function CSOSN(value: string): iProduto; overload;
    function CSOSN: string; overload;
    function PercICMS(value: single): iProduto; overload;
    function PercICMS: single; overload;
    function PercICMSST(value: single): iProduto; overload;
    function PercICMSST: single; overload;
    function NCM(value: string): iProduto; overload;
    function NCM: string; overload;
    function CEST(value: string): iProduto; overload;
    function CEST: string; overload;
    function CSTIPI(value: string): iProduto; overload;
    function CSTIPI: string; overload;
    function PercIPI(value: single): iProduto; overload;
    function PercIPI: single; overload;
    function CSTPisCofinsEntrada(value: string): iProduto; overload;
    function CSTPisCofinsEntrada: string; overload;
    function CSTPisCofinsSaida(value: string): iProduto; overload;
    function CSTPisCofinsSaida: string; overload;
    function NatReceitaIsentaPisCofins(value: string): iProduto; overload;
    function NatReceitaIsentaPisCofins: string; overload;
    function PercPIS(value: single): iProduto; overload;
    function PercPIS: single; overload;
    function PercCofins(value: single): iProduto; overload;
    function PercCofins: single; overload;
    function ModBC(value: string): iProduto; overload;
    function ModBC: string; overload;
    function PercICMSPDV(value: single): iProduto; overload;
    function PercICMSPDV: single; overload;
    function PercRedBCICMS(value: single): iProduto; overload;
    function PercRedBCICMS: single; overload;
    function PercRedBCICMSST(value: single): iProduto; overload;
    function PercRedBCICMSST: single; overload;
    function ModBCST(value: string): iProduto; overload;
    function ModBCST: string; overload;
    function IVA(value: single): iProduto; overload;
    function IVA: single; overload;
    function PautaST(value: single): iProduto; overload;
    function PautaST: single; overload;
    function PercDeson(value: single): iProduto; overload;
    function PercDeson: single; overload;
    function PercDiferim(value: single): iProduto; overload;
    function PercDiferim: single; overload;
    function PercIsencao(value: single): iProduto; overload;
    function PercIsencao: single; overload;
    function AdRem(value: single): iProduto; overload;
    function AdRem: single; overload;
    function FCP(value: single): iProduto; overload;
    function FCP: single; overload;

  end;

implementation

{ TProduto }

class function TProduto.New: TProduto;
begin
  Result := Self.Create
end;

function TProduto.FCP: single;
begin
  Result := FFCP
end;

function TProduto.FCP(value: single): iProduto;
begin
  FFCP := value;
  Result := Self;
end;

function TProduto.Nome: string;
begin
  Result := FNome
end;

function TProduto.AdRem(value: single): iProduto;
begin
  FAdRem := value;
  Result := Self;
end;

function TProduto.CEST(value: string): iProduto;
begin
  FCEST := value;
  Result := Self;
end;

function TProduto.CFOPCompra(value: string): iProduto;
begin
  FCFOPCompra := value;
  Result := Self;
end;

function TProduto.CFOPVenda(value: string): iProduto;
begin
  FCFOPVenda := value;
  Result := Self;
end;

function TProduto.Codigo(value: string): iProduto;
begin
  FCodigo := value;
  Result := Self;
end;

function TProduto.CSOSN(value: string): iProduto;
begin
  FCSOSN := value;
  Result := Self;
end;

function TProduto.CST(value: string): iProduto;
begin
  FCST := value;
  Result := Self;
end;

function TProduto.CSTIPI(value: string): iProduto;
begin
  FCSTIPI := value;
  Result := Self;
end;

function TProduto.CSTPisCofinsEntrada(value: string): iProduto;
begin
  FCSTPisCofinsEntrada := value;
  Result := Self;
end;

function TProduto.CSTPisCofinsSaida(value: string): iProduto;
begin
  FCSTPisCofinsSaida := value;
  Result := Self;
end;

function TProduto.EAN(value: string): iProduto;
begin
  FEAN := value;
  Result := Self;
end;

function TProduto.Empresa(value: string): iProduto;
begin
  FEmpresa := value;
  Result := Self;
end;

function TProduto.IVA(value: single): iProduto;
begin
  FIVA := value;
  Result := Self;
end;

function TProduto.ModBC(value: string): iProduto;
begin
  FModBC := value;
  Result := Self;
end;

function TProduto.ModBCST(value: string): iProduto;
begin
  FModBCST := value;
  Result := Self;
end;

function TProduto.NatReceitaIsentaPisCofins(value: string): iProduto;
begin
  FNatReceitaIsentaPisCofins := value;
  Result := Self;
end;

function TProduto.NCM(value: string): iProduto;
begin
  FNCM := value;
  Result := Self;
end;

function TProduto.Nome(value: string): iProduto;
begin
  FNome := value;
  Result := Self;
end;

function TProduto.PautaST(value: single): iProduto;
begin
  FPautaST := value;
  Result := Self;
end;

function TProduto.PercCofins(value: single): iProduto;
begin
  FPercCOFINS := value;
  Result := Self;
end;

function TProduto.PercDeson(value: single): iProduto;
begin
  FPercDeson := value;
  Result := Self;
end;

function TProduto.PercDiferim(value: single): iProduto;
begin
  FPercDiferim := value;
  Result := Self;
end;

function TProduto.PercICMS(value: single): iProduto;
begin
  FPercICMS := value;
  Result := Self;
end;

function TProduto.PercICMSPDV(value: single): iProduto;
begin
  FPercICMSPDV := value;
  Result := Self;
end;

function TProduto.PercIPI(value: single): iProduto;
begin
  FPercIPI := value;
  Result := Self;
end;

function TProduto.PercIsencao(value: single): iProduto;
begin
  FPercIsencao := value;
  Result := Self;
end;

function TProduto.PercPIS(value: single): iProduto;
begin
  FPercPIS := value;
  Result := Self;
end;

function TProduto.PercRedBCICMS(value: single): iProduto;
begin
  FPercRedBCICMS := value;
  Result := Self;
end;

function TProduto.PercRedBCICMSST(value: single): iProduto;
begin
  FPercRedBCICMSST := value;
  Result := Self;
end;

function TProduto.AdRem: single;
begin
  Result := FAdRem
end;

function TProduto.CEST: string;
begin
  Result := FCEST
end;

function TProduto.CFOPCompra: string;
begin
  Result := FCFOPCompra
end;

function TProduto.CFOPVenda: string;
begin
  Result := FCFOPVenda
end;

function TProduto.Codigo: string;
begin
  Result := FCodigo
end;

function TProduto.CSOSN: string;
begin
  Result := FCSOSN
end;

function TProduto.CST: string;
begin
  Result := FCST
end;

function TProduto.CSTIPI: string;
begin
  Result := FCSTIPI
end;

function TProduto.CSTPisCofinsEntrada: string;
begin
  Result := FCSTPisCofinsEntrada
end;

function TProduto.CSTPisCofinsSaida: string;
begin
  Result := FCSTPisCofinsSaida
end;

function TProduto.EAN: string;
begin
  Result := FEAN
end;

function TProduto.Empresa: string;
begin
  Result := FEmpresa
end;

function TProduto.IVA: single;
begin
  Result := FIVA
end;

function TProduto.ModBC: string;
begin
  Result := FModBC
end;

function TProduto.ModBCST: string;
begin
  Result := FModBCST
end;

function TProduto.NatReceitaIsentaPisCofins: string;
begin
  Result := FNatReceitaIsentaPisCofins
end;

function TProduto.NCM: string;
begin
  Result := FNCM
end;

function TProduto.PautaST: single;
begin
  Result := FPautaST
end;

function TProduto.PercCofins: single;
begin
  Result := FPercCOFINS
end;

function TProduto.PercDeson: single;
begin
  Result := FPercDeson
end;

function TProduto.PercDiferim: single;
begin
  Result := FPercDiferim
end;

function TProduto.PercICMS: single;
begin
  Result := FPercICMS
end;

function TProduto.PercICMSPDV: single;
begin
  Result := FPercICMSPDV
end;

function TProduto.PercICMSST(value: single): iProduto;
begin
  FPercICMSST := value;
  Result := Self
end;

function TProduto.PercICMSST: single;
begin
  Result := FPercICMSST
end;

function TProduto.PercIPI: single;
begin
  Result := FPercIPI
end;

function TProduto.PercIsencao: single;
begin
  Result := FPercIsencao
end;

function TProduto.PercPIS: single;
begin
  Result := FPercPIS
end;

function TProduto.PercRedBCICMS: single;
begin
  Result := FPercRedBCICMS
end;

function TProduto.PercRedBCICMSST: single;
begin
  Result := FPercRedBCICMSST
end;

end.
