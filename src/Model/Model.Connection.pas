unit Model.Connection;

interface

uses
  System.SysUtils,
  System.Classes,
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
  FireDAC.Comp.Client, dxEMF.DataDefinitions, cxEMFData, dxEMF.DataSet,
  dxEMF.Core, dxEMF.DataProvider.FireDAC;

type
  TDM = class(TDataModule)
    Connection: TFDConnection;
    FBClient: TFDPhysFBDriverLink;
    DBWaitCursor: TFDGUIxWaitCursor;
    dxEMFSession1: TdxEMFSession;
    dxEMFFireDACDataProvider1: TdxEMFFireDACDataProvider;
    dxEMFDataSet1: TdxEMFDataSet;
    dxEMFDataSource1: TdxEMFDataSource;
    procedure ConnectionBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FEmpresa: string;
    { Private declarations }
    procedure CarregarConfiguracoes;
  public
    { Public declarations }
    procedure Conectar;
    procedure Desconectar;
    function CaminhoDB: string;
    procedure ListarEmpresas(Strings: TStrings);
    function NomeEmpresa: string;
    property Empresa: string read FEmpresa write FEmpresa;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


uses
  Helpers.Ini;

{$R *.dfm}


function TDM.CaminhoDB: string;
begin
  if Connection.Connected then
    result := Connection.Params.Database
  else
    result := 'Desconectado'
end;

procedure TDM.CarregarConfiguracoes;
begin
  var
  Params := TFDPhysFBConnectionDefParams(Connection.Params);
  FBClient.VendorLib := TIniHelper.GetValue
    ('conexao', 'firebird', 'c:\ecosis\windows\fbclient.dll');
  Connection.DriverName := 'FB';
  Params.UserName := 'sysdba';
  Params.Password := 'masterkey';
  Params.Database := TIniHelper.GetValue
    ('conexao', 'banco', 'c:\ecosis\dados\ecodados.eco');
end;

procedure TDM.Conectar;
begin
  Connection.Connected := false;
  Connection.Connected := true
end;

procedure TDM.ConnectionBeforeConnect(Sender: TObject);
begin
  CarregarConfiguracoes
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  Conectar
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  Connection.Connected := false
end;

procedure TDM.Desconectar;
begin
  Connection.Connected := false
end;

procedure TDM.ListarEmpresas(Strings: TStrings);
begin
  var
  queryEmpresas := TFDQuery.Create(self);
  try
    queryEmpresas.Connection := Connection;
    queryEmpresas.Open
      ('select codigo, nomefantasia from tgerempresa order by 1');

    while not queryEmpresas.Eof do
    begin
      Strings.Add(queryEmpresas.FieldByName('codigo')
        .AsString + ' - ' + queryEmpresas.FieldByName('nomefantasia').AsString);

      queryEmpresas.Next
    end;

  finally
    queryEmpresas.Free
  end;
end;

function TDM.NomeEmpresa: string;
begin
  var
  queryEmpresas := TFDQuery.Create(self);
  try
    queryEmpresas.Connection := Connection;
    queryEmpresas.sql.Add
      ('select codigo, nomefantasia from tgerempresa where codigo = :codigo order by 1');
    queryEmpresas.ParamByName('codigo').AsString := Empresa;
    queryEmpresas.Open;
    result := queryEmpresas.FieldByName('codigo')
      .AsString + ' - ' + queryEmpresas.FieldByName('nomefantasia').AsString;

  finally
    queryEmpresas.Free
  end;
end;

end.
