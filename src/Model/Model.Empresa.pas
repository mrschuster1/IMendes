unit Model.Empresa;

interface

type
  iEmpresa = interface
    function Codigo(aCodigo: integer): iEmpresa; overload;
    function Codigo: integer; overload;
    function NomeFantasia(aNomeFantasia: string): iEmpresa; overload;
    function NomeFantasia: string; overload;

  end;

type
  TEmpresa = class(TInterfacedObject, iEmpresa)
  private
    FCodigo: integer;
    FNomeFantasia: string;

  public
    class function New: iEmpresa;
    function Codigo(aCodigo: integer): iEmpresa; overload;
    function Codigo: integer; overload;
    function NomeFantasia(aNomeFantasia: string): iEmpresa; overload;
    function NomeFantasia: string; overload;
  end;

implementation

{ TEmpresa }

class function TEmpresa.New: iEmpresa;
begin
  result := self.Create
end;

function TEmpresa.Codigo(aCodigo: integer): iEmpresa;
begin
  FCodigo := aCodigo
end;

function TEmpresa.Codigo: integer;
begin
  result := FCodigo
end;

function TEmpresa.NomeFantasia(aNomeFantasia: string): iEmpresa;
begin
  FNomeFantasia := aNomeFantasia
end;

function TEmpresa.NomeFantasia: string;
begin
  result := FNomeFantasia
end;

end.
