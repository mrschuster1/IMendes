unit Model.Produto;

interface

type
  TProduto = class
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

  protected

  public

  published
    property Empresa: string read FEmpresa write FEmpresa;
    property Codigo: string read FCodigo write FCodigo;
    property EAN: string read FEAN write FEAN;
    property Nome: string read FNome write FNome;
    property CFOPVenda: string read FCFOPVenda write FCFOPVenda;
    property CFOPCompra: string read FCFOPCompra write FCFOPCompra;
    property CST: string read FCST write FCST;
    property CSOSN: string read FCSOSN write FCSOSN;
    property PercICMS: single read FPercICMS write FPercICMS;
    property NCM: string read FNCM write FNCM;
    property CEST: string read FCEST write FCEST;
    property CSTIPI: string read FCSTIPI write FCSTIPI;
    property PercIPI: single read FPercIPI write FPercIPI;
    property CSTPisCofinsEntrada: string read FCSTPisCofinsEntrada
      write FCSTPisCofinsEntrada;
    property CSTPisCofinsSaida: string read FCSTPisCofinsSaida
      write FCSTPisCofinsSaida;
    property NatReceitaIsentaPisCofins: string read FNatReceitaIsentaPisCofins
      write FNatReceitaIsentaPisCofins;
    property PercPIS: single read FPercPIS write FPercPIS;
    property PercCOFINS: single read FPercCOFINS write FPercCOFINS;
    property ModBC: string read FModBC write FModBC;
    property PercICMSPDV: single read FPercICMSPDV write FPercICMSPDV;
    property PercRedBCICMS: single read FPercRedBCICMS write FPercRedBCICMS;
    property PercRedBCICMSST: single read FPercRedBCICMSST
      write FPercRedBCICMSST;
    property ModBCST: string read FModBCST write FModBCST;
    property IVA: single read FIVA write FIVA;
    property PautaST: single read FPautaST write FPautaST;
    property PercDeson: single read FPercDeson write FPercDeson;
    property PercDiferim: single read FPercDiferim write FPercDiferim;
    property PercIsencao: single read FPercIsencao write FPercIsencao;
    property AdRem: single read FAdRem write FAdRem;

  end;

implementation

end.
