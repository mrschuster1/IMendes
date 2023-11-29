unit Handler.Exception;

interface

uses
  System.SysUtils;

type
  HandlerException = class
  private
    class procedure GerarLog(E: Exception);
    class procedure EnviarEmail(E: Exception);
  public
    class procedure DoHandlerException(Sender: TObject; E: Exception);
  end;

implementation

uses
  Vcl.Dialogs,
  System.UITypes,
  Utils.Dialogs;

class procedure HandlerException.DoHandlerException(Sender: TObject;
  E: Exception);
begin
  GerarLog(E);
  EnviarEmail(E);
  Erro('Aconteceu um erro, mas não se preocupe, já avisamos a equipe do suporte!'
    + #13 + e.Message);
end;

class procedure HandlerException.EnviarEmail(E: Exception);
begin

end;

class procedure HandlerException.GerarLog(E: Exception);
begin

end;

end.
