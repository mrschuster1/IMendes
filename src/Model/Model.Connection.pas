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
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
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
    procedure Reconectar;
    class function CaminhoDB: string;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


uses
  Helpers.Ini;

{$R *.dfm}


class function TDM.CaminhoDB: string;
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

procedure TDM.Reconectar;
begin
  Desconectar;
  Conectar
end;

procedure TDM.Conectar;
begin
  Connection.Connected := true
end;

procedure TDM.ConnectionBeforeConnect(Sender: TObject);
begin
  CarregarConfiguracoes
end;

constructor TDM.Create;
begin
  inherited Create(nil);
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  Conectar
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  Desconectar
end;

procedure TDM.Desconectar;
begin
  Connection.Connected := false
end;

end.
