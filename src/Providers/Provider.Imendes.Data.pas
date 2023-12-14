unit Provider.Imendes.Data;

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
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client;

type
  TProviderImendesData = class(TDataModule)
    Connection: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarConfiguracoes;
    procedure Conectar;
    procedure Desconectar;
    class function CaminhoDB: string;
  public
    { Public declarations }
    constructor Create; reintroduce;
  end;

var
  ProviderImendesData: TProviderImendesData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


uses
  Helpers.Ini;

{$R *.dfm}

{ TDataModule1 }

class function TProviderImendesData.CaminhoDB: string;
begin
  Result := TIniHelper.GetValue('imendes', 'banco', 'c:\gt++\data\dados.ksv');
end;

procedure TProviderImendesData.CarregarConfiguracoes;
begin
  var
  Params := TFDPhyssqliteConnectionDefParams(Connection.Params);
  Connection.DriverName := 'SQlite';
  Params.Database := CaminhoDB
end;

procedure TProviderImendesData.Conectar;
begin
  Connection.Connected := True
end;

constructor TProviderImendesData.Create;
begin
  inherited Create(nil);
end;

procedure TProviderImendesData.DataModuleCreate(Sender: TObject);
begin
  Conectar
end;

procedure TProviderImendesData.DataModuleDestroy(Sender: TObject);
begin
  Desconectar
end;

procedure TProviderImendesData.Desconectar;
begin
  Connection.Connected := False
end;

end.
