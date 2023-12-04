unit Controller.Empresa;

interface

uses
  System.Generics.Collections,
  Model.Empresa,
  Services.Empresas,
  System.SysUtils,
  System.Classes;

type
  TControllerEmpresa = class
  private
    class var FEmpresa: iEmpresa;
    constructor Create(Id: integer); reintroduce;
    function GetEmpresa: iEmpresa;

  public
    class var CodigoEmpresa: integer;
    class function New(Id: integer): TControllerEmpresa;
    class function NomeEmpresa: string;
    property Empresa: iEmpresa read GetEmpresa;
    procedure Empresas(aStrings: TStrings);
  end;

implementation

{ TControllerEmpresa }

constructor TControllerEmpresa.Create(Id: integer);
begin
  inherited Create;
  var
  lServiceEmpresas := TServiceEmpresas.Create;
  try
    var
    lEmpresa := lServiceEmpresas.Get(Id);
    CodigoEmpresa := Id;
    try
      FEmpresa := TEmpresa.New
        .Codigo(lEmpresa.FieldByName('Codigo').AsInteger)
        .NomeFantasia(lEmpresa.FieldByName('NomeFantasia').AsString)
    finally
      lEmpresa.Free
    end;
  finally
    lServiceEmpresas.Free
  end;
end;

procedure TControllerEmpresa.Empresas(aStrings: TStrings);
begin
  var
  lServiceEmpresas := TServiceEmpresas.Create;
  try
    var
    lEmpresas := lServiceEmpresas.Get;
    try
      for var i := 0 to lEmpresas.RecordCount - 1 do
      begin
        aStrings.Add(lEmpresas['Codigo'] + lEmpresas['NomeFantasia']);
        lEmpresas.Next
      end;
    finally
      lEmpresas.Free
    end;
  finally
    lServiceEmpresas.Free
  end;
end;

function TControllerEmpresa.GetEmpresa: iEmpresa;
begin
  result := FEmpresa
end;

class function TControllerEmpresa.NomeEmpresa: string;
begin
  result := inttostr(FEmpresa.Codigo) + ' - ' + FEmpresa.NomeFantasia
end;

class function TControllerEmpresa.New(Id: integer): TControllerEmpresa;
begin
  result := self.Create(Id);
end;

end.
