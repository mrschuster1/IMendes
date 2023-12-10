unit Services.Empresas;

interface

uses
  System.SysUtils,
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
  Ragna;

type
  TServiceEmpresas = class(TProviderConnection)
    Empresas: TFDQuery;
    NomeFantasia: TStringField;
    Codigo: TStringField;
  private

  public
    function Get: TFDQuery;
    function Query: TFDQuery;
    class procedure ListarEmpresas(Lista: TStrings);
    class function NomeEmpresa: String;
    class procedure SetEmpresa(Id: string);
    class function GetEmpresa: string;
  end;

var
  ServiceEmpresas: TServiceEmpresas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


uses
  View.Main,
  Helpers.Ini;

{$R *.dfm}

{ TServiceEmpresas }

function TServiceEmpresas.Get: TFDQuery;
begin
  Result := Empresas.OpenUp
end;

class function TServiceEmpresas.GetEmpresa: string;
begin
  Result := TIniHelper.GetValue('conexao', 'empresa', '01')
end;

class procedure TServiceEmpresas.ListarEmpresas(Lista: TStrings);
begin
  var
  lEmpresas := self.Create;
  try
    var
    lQuery := lEmpresas.Get;
    try
      while not lQuery.Eof do
      begin
        Lista.Add(lQuery.FieldByName('Codigo').asstring + ' - ' +
          lQuery.FieldByName('NomeFantasia').asstring);
        lQuery.Next
      end;
    finally
      lQuery.Free
    end;

  finally
    lEmpresas.Free
  end;
end;

class function TServiceEmpresas.NomeEmpresa: String;
begin
  var
  lEmpresas := self.Create;
  try
    var
    lQuery := TFDQuery.Create(lEmpresas);
    try
      lQuery.Connection := lEmpresas.Connection;
      lQuery.Open
        ('select Codigo, NomeFantasia from tgerempresa where Codigo = ' +
        QuotedStr(GetEmpresa));

      Result := lQuery['Codigo'] + ' - ' + lQuery['NomeFantasia']
    finally
      lQuery.Free
    end;

  finally
    lEmpresas.Free
  end;
end;

function TServiceEmpresas.Query: TFDQuery;
begin
  Result := Empresas
end;

class procedure TServiceEmpresas.SetEmpresa(Id: string);
begin
  TIniHelper.SetValue('conexao', 'empresa', Id)
end;

end.
