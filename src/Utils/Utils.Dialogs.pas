unit Utils.Dialogs;

interface

uses
  Vcl.StdCtrls,
  System.Classes,
  System.UITypes;

const
  COR_PRINCIPAL = $FFAE7113;
  COR_ERRO = $FFC83228;
  COR_SUCESSO = $FF4BB543;

function MostrarMsg(Msg1, Msg2: string; const Btn1: string = '&Sim';
  const Btn2: string = '&Não'; const Btn3: string = '&Cancelar';
  const icone: string = ''; const cor: talphacolor = COR_PRINCIPAL;
  const time: integer = 10): integer; stdcall;
  external 'ExibirMsg.dll' name 'MostrarMsg';

procedure Aviso(Mensagem: string);
procedure MensagemSucesso(Mensagem: string);
procedure CamposVazios(Mensagem: string);

implementation

{ TDialogo }

procedure Aviso(Mensagem: string);
begin
  MostrarMsg('Aviso', Mensagem, 'Ok', '', '', '', COR_PRINCIPAL);
end;

procedure MensagemSucesso(Mensagem: string);
begin
  MostrarMsg('Sucesso!', Mensagem, 'Ok', '', '', '', COR_SUCESSO);
end;

procedure CamposVazios(Mensagem: string);
begin
  MostrarMsg('Os seguintes campos obrigatórios estão em branco:', Mensagem,
    'Ok', '', '', '', COR_ERRO);
end;

end.
