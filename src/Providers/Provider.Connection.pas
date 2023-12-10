unit Provider.Connection;

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
  FireDAC.Comp.Client;

type
  TProviderConnection = class(TDataModule)
    Connection: TFDConnection;
    FBClient: TFDPhysFBDriverLink;
    DBWaitCursor: TFDGUIxWaitCursor;
    procedure ConnectionBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarConfiguracoes;
  public
    { Public declarations }
    constructor Create; reintroduce;
    procedure Conectar;
    procedure Desconectar;
    class function CaminhoDB: string;
  end;

var
  ProviderConnection: TProviderConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


uses
  Helpers.Ini;

{$R *.dfm}


class function TProviderConnection.CaminhoDB: string;
begin
  var
  lDM := self.Create;
  try
    if lDM.Connection.Connected then
      result := lDM.Connection.Params.Database
    else
      result := 'Desconectado';
  finally
    lDM.free
  end;
end;

procedure TProviderConnection.CarregarConfiguracoes;
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


procedure TProviderConnection.Conectar;
begin
  Connection.Connected := true
end;

procedure TProviderConnection.ConnectionBeforeConnect(Sender: TObject);
begin
  CarregarConfiguracoes
end;

constructor TProviderConnection.Create;
begin
  inherited Create(nil);
end;

procedure TProviderConnection.DataModuleCreate(Sender: TObject);
begin
  Conectar
end;

procedure TProviderConnection.DataModuleDestroy(Sender: TObject);
begin
  Desconectar
end;

procedure TProviderConnection.Desconectar;
begin
  Connection.Connected := false
end;

end.
