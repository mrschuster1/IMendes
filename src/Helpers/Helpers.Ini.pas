unit Helpers.Ini;

interface

uses
  inifiles,
  ioutils;

/// <summary>
/// Classe auxiliar para interação fácil com arquivos INI.
/// </summary>
/// <remarks>
/// Esta classe fornece métodos para ler e escrever valores em um arquivo INI,
/// simplificando o processo de manipulação de configurações.
/// O arquivo INI é nomeado conforme o executável, com extensão .ini, e é
/// automaticamente criado no mesmo diretório do executável.
/// </remarks>
type
  TIniHelper = class
  private
    /// <summary>
    /// Variável de classe instanciada em Initialization e liberada em Finalization.
    /// </summary>
    class var Ini: TIniFile;

    /// <summary>
    /// Construtor que inicializa o arquivo INI com o mesmo nome do executável
    /// mas com uma extensão diferente.
    /// </summary>
    /// <remarks>
    /// O arquivo INI é criado usando a função TPath.ChangeExtension com
    /// o nome do executável e a extensão 'ini'.
    /// </remarks>
    class procedure Create;

    /// <summary>
    /// Destrutor que libera o objeto do arquivo INI da memória.
    /// </summary>
    class procedure Free;

  public
    /// <summary>
    /// Define um valor de string na seção e campo especificados do arquivo INI.
    /// </summary>
    class procedure SetValue(Section, Field, Value: string); overload;

    /// <summary>
    /// Define um valor inteiro na seção e campo especificados do arquivo INI.
    /// </summary>
    class procedure SetValue(Section, Field: string; Value: integer); overload;

    /// <summary>
    /// Define um valor booleano na seção e campo especificados do arquivo INI.
    /// </summary>
    class procedure SetValue(Section, Field: string; Value: boolean); overload;

    /// <summary>
    /// Obtém um valor de string da seção e campo especificados do arquivo INI.
    /// </summary>
    class function GetValue(Section, Field, DefaultValue: string)
      : string; overload;

    /// <summary>
    /// Obtém um valor inteiro da seção e campo especificados do arquivo INI.
    /// </summary>
    class function GetValue(Section, Field: string; DefaultValue: integer)
      : integer; overload;

    /// <summary>
    /// Obtém um valor booleano da seção e campo especificados do arquivo INI.
    /// </summary>
    class function GetValue(Section, Field: string; DefaultValue: boolean)
      : boolean; overload;

    /// <summary>
    /// Remove um valor da seção e campo especificados do arquivo INI.
    /// </summary>
    class procedure RemoveValue(Section, Field: string);

  end;

implementation

{ TIniHelper }

class procedure TIniHelper.Create;
begin
  Ini := TIniFile.Create(TPath.ChangeExtension(paramstr(0), 'ini'));
end;

class procedure TIniHelper.Free;
begin
  Ini.Free
end;

class function TIniHelper.GetValue(Section, Field: string;
  DefaultValue: boolean): boolean;
begin
  Result := Ini.ReadBool(Section, Field, DefaultValue)
end;

class procedure TIniHelper.RemoveValue(Section, Field: string);
begin
  Ini.DeleteKey(Section, Field)
end;

class procedure TIniHelper.SetValue(Section, Field: string; Value: boolean);
begin
  Ini.WriteBool(Section, Field, Value)
end;

class function TIniHelper.GetValue(Section, Field: string;
  DefaultValue: integer): integer;
begin
  if Ini.ReadInteger(Section, Field, 0) = 0 then
    SetValue(Section, Field, DefaultValue);
  Result := Ini.ReadInteger(Section, Field, DefaultValue)
end;

class procedure TIniHelper.SetValue(Section, Field: string; Value: integer);
begin
  Ini.WriteInteger(Section, Field, Value)
end;

class function TIniHelper.GetValue(Section, Field, DefaultValue
  : string): string;
begin
  if Ini.ReadString(Section, Field, '') = '' then
    SetValue(Section, Field, DefaultValue);
  Result := Ini.ReadString(Section, Field, DefaultValue);
end;

class procedure TIniHelper.SetValue(Section, Field, Value: string);
begin
  Ini.WriteString(Section, Field, Value);
end;

initialization

TIniHelper.Create;

finalization

TIniHelper.Free;

end.
