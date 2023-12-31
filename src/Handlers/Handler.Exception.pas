unit Handler.Exception;

interface

uses
  System.SysUtils,
  Quick.Log,
  Quick.Commons;

type
  TException = class
  private

  public
    class procedure DoHandlerException(Sender: TObject; E: Exception);

  end;

implementation

uses
  Vcl.Dialogs,
  System.UITypes,
  Utils.Dialogs,
  Forms;


class procedure TException.DoHandlerException(Sender: TObject;
  E: Exception);
begin
  Erro(E.Message);
end;


initialization

Application.OnException := TException.DoHandlerException

end.
