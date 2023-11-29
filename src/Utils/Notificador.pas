unit Notificador;

interface

uses
  ExtCtrls,
  Controls,
  Classes,
  Forms,
  Vcl.Graphics,
  Windows,
  ComCtrls,
  Vcl.StdCtrls,
  System.UITypes,
  System.Generics.Collections,
  Math,
  GraphUtil;

type
  TTipoMensagem = (tmNormal, tmErro, tmSucesso, tmAtencao);

type
  TNotificador = class
  private
    // Componentes visuais e timers
    FPainelNotificacao, FPainelGradiente: TPanel;
    FLabelTitulo, FLabelMensagem, FLabelFechar: TLabel;
    FTimerAnimacao, FTimerFechar: TTimer;

    // Propriedades da notificação
    FTempoExibicao: Integer;
    FMensagem, FTitulo: string;
    FRadius, FAlturaAdicional: Integer;
    FTipoMensagem: TTipoMensagem;

    // Métodos privados para estilização e eventos
    procedure TimerAnimacaoElapsed(Sender: TObject);
    procedure TimerFecharElapsed(Sender: TObject);
    procedure ApplyPanelStyles;
    procedure ApplyTituloStyles;
    procedure ApplyMensagemStyles;
    procedure FecharClick(Sender: TObject);
    procedure ApplyFecharStyles;
    procedure ApplyDefaultConfig;
    procedure AtualizarPosicao;
    procedure ApplyGradienteStyles;

  public
    // Construtor e destrutor
    constructor Create;
    destructor Destroy; override;
    // Método público para exibir a notificação
    procedure ExibirNotificacao;

  published
     // Propriedades expostas para configuração
    property TempoExibicao: Integer read FTempoExibicao write FTempoExibicao default 10000;
    property Mensagem: String read FMensagem write FMensagem;
    property Titulo: String read FTitulo write FTitulo;
    property Radius: Integer read FRadius write FRadius default 10;
    property TipoMensagem: TTipoMensagem read FTipoMensagem write FTipoMensagem default tmNormal;
  end;

var
  // Lista global de notificadores
  NotificadorList: TList<TNotificador>;

implementation

{ TNotificador }

constructor TNotificador.Create;
begin
  inherited Create;
  ApplyDefaultConfig;

  // Cria e Configura o Panel
  FPainelNotificacao := TPanel.Create(nil);
  ApplyPanelStyles;

  //Cria um Panel para efeito gradiente
  FPainelGradiente  := TPanel.Create(FPainelNotificacao);
  ApplyGradienteStyles;

  // Cria e Configura o Título
  FLabelTitulo := TLabel.Create(FPainelNotificacao);
  ApplyTituloStyles;

  // Cria e Configura a Mensagem
  FLabelMensagem := TLabel.Create(FPainelNotificacao);
  ApplyMensagemStyles;

  // Cria e Configura o Botão de Sair
  FLabelFechar := TLabel.Create(FPainelNotificacao);
  ApplyFecharStyles;

  FTimerAnimacao := TTimer.Create(nil);
  FTimerAnimacao.Interval := 10;
  FTimerAnimacao.OnTimer := TimerAnimacaoElapsed;

  FTimerFechar := TTimer.Create(nil);
  FTimerFechar.OnTimer := TimerFecharElapsed;

  NotificadorList.Insert(0, Self);
end;

destructor TNotificador.Destroy;
begin
  NotificadorList.Remove(Self);
  if NotificadorList.Count > 0 then
    NotificadorList[0].AtualizarPosicao;

  FTimerAnimacao.Free;
  FTimerFechar.Free;
  FLabelTitulo.Free;
  FLabelMensagem.Free;
  FLabelFechar.Free;
  FPainelNotificacao.Free;
  inherited;
end;

procedure TNotificador.ExibirNotificacao;
var
  LNovasLinhas, AlturaPorLinha: Integer;
begin
  FLabelMensagem.Caption := FMensagem;
  AlturaPorLinha := 12;

  // Verifica o Tamanho do Texto
  LNovasLinhas := Length(FMensagem);
  if (LNovasLinhas / 47) > 3 then
  begin
    LNovasLinhas := Trunc(Length(FMensagem) / 47) + 1;
    FAlturaAdicional := LNovasLinhas * AlturaPorLinha;
  end;

  ApplyPanelStyles;
  ApplyGradienteStyles;
  ApplyMensagemStyles;

  FLabelTitulo.Caption := FTitulo;
  FTimerFechar.Interval := FTempoExibicao;
  FTimerAnimacao.Enabled := true;
  FTimerFechar.Enabled := true;
  AtualizarPosicao;
end;

procedure TNotificador.ApplyGradienteStyles;
begin
  FPainelGradiente.Parent := FPainelNotificacao;
  FPainelGradiente.Align := alBottom;
  FPainelGradiente.Height := 5;
  FPainelGradiente.BevelOuter := bvNone;
  FPainelGradiente.Caption := '';
  FPainelGradiente.StyleElements := [];
  FPainelGradiente.ParentBackground := false;
  FPainelGradiente.ParentColor := false;

  case FTipoMensagem of
    tmNormal:
      begin
        FPainelGradiente.Color:= clHighlight;
      end;
    tmErro:
      begin
        FPainelGradiente.Color:= clRed;
      end;
    tmSucesso:
      begin
        FPainelGradiente.Color:= clLime;
      end;
    tmAtencao:
      begin
        FPainelGradiente.Color:= clYellow;
      end;
  end;
  FPainelGradiente.SendToBack;
end;

procedure TNotificador.ApplyDefaultConfig;
begin
  FTempoExibicao := 10000;
  FRadius := 0;
  FAlturaAdicional := 0;
  FTipoMensagem := tmNormal;
end;

procedure TNotificador.ApplyFecharStyles;
begin
  FLabelFechar.Parent := FPainelNotificacao;
  FLabelFechar.StyleElements := [];
  FLabelFechar.Font.Name := 'Segoe MDL2 Assets';
  FLabelFechar.Caption := '';
  FLabelFechar.Font.Size := 14;
  FLabelFechar.Font.Style := [];
  FLabelFechar.Font.Color := clBlack;
  FLabelFechar.Top := FLabelTitulo.Top;
  FLabelFechar.Left := FLabelTitulo.Width - 15;
  FLabelFechar.BringToFront;
  FLabelFechar.OnClick := FecharClick;
end;

procedure TNotificador.FecharClick(Sender: TObject);
begin
  Destroy;
end;

procedure TNotificador.ApplyMensagemStyles;
begin
  FLabelMensagem.Parent := FPainelNotificacao;
  FLabelMensagem.StyleElements := [];
  FLabelMensagem.Font.Name := 'Tahoma';
  FLabelMensagem.Font.Size := 12;
  FLabelMensagem.Font.Style := [];
  FLabelMensagem.Font.Color := $666666;
  FLabelMensagem.Align := alClient;
  FLabelMensagem.AlignWithMargins := true;
  FLabelMensagem.Margins.Top := 5;
  FLabelMensagem.Margins.Left := 10;
  FLabelMensagem.Margins.Bottom := 3;
  FLabelMensagem.Margins.Right := 3;
  FLabelMensagem.Alignment := TAlignment.taLeftJustify;
  FLabelMensagem.WordWrap := true;
  FLabelMensagem.AutoSize := true;
  FLabelMensagem.BringToFront;
end;

procedure TNotificador.ApplyTituloStyles;
begin
  FLabelTitulo.Parent := FPainelNotificacao;
  FLabelTitulo.StyleElements := [];
  FLabelTitulo.Font.Name := 'Roboto';
  FLabelTitulo.Font.Size := 14;
  FLabelTitulo.Font.Style := [fsBold];
  FLabelTitulo.Font.Color := clBlack;
  FLabelTitulo.Align := alTop;
  FLabelTitulo.AlignWithMargins := true;
  FLabelTitulo.Margins.Top := 10;
  FLabelTitulo.Margins.Left := 10;
  FLabelTitulo.Alignment := TAlignment.taLeftJustify;
  FLabelTitulo.Layout := tlCenter;
end;

procedure TNotificador.ApplyPanelStyles;
var
  Rgn: HRGN;
begin
  FPainelNotificacao.Parent := Application.MainForm;
  FPainelNotificacao.Height := 120 + FAlturaAdicional;
  FPainelNotificacao.Width := 380;
  FPainelNotificacao.DoubleBuffered := true;
  Rgn := CreateRoundRectRgn(0, 0, FPainelNotificacao.Width,
    FPainelNotificacao.Height, FRadius, FRadius);
  try
    SetWindowRgn(FPainelNotificacao.Handle, Rgn, true);
  finally
    DeleteObject(Rgn);
  end;
  FPainelNotificacao.ParentBackground := false;
  FPainelNotificacao.ParentColor := false;
  FPainelNotificacao.StyleElements := [];
  FPainelNotificacao.DoubleBuffered := true;
  FPainelNotificacao.BevelInner := bvNone;
  FPainelNotificacao.BevelOuter := bvNone;
  FPainelNotificacao.BevelKind := bkTile;
  FPainelNotificacao.Color := clWhite;
  FPainelNotificacao.Left := Application.MainForm.Width -
    FPainelNotificacao.Width - 10;
  FPainelNotificacao.Top := Application.MainForm.Height -
    FPainelNotificacao.Height - 45;
  FPainelNotificacao.BringToFront;
end;

procedure TNotificador.TimerAnimacaoElapsed(Sender: TObject);
begin
  if (FPainelNotificacao.Left + 5) > Application.MainForm.Width -
    FPainelNotificacao.Width - 15 then
    FPainelNotificacao.Left := FPainelNotificacao.Left - 2
  else
    FTimerAnimacao.Enabled := false;
end;

procedure TNotificador.TimerFecharElapsed(Sender: TObject);
begin
  Destroy;
end;

procedure TNotificador.AtualizarPosicao;
var
  i, PosicaoTopAtual: Integer;
begin
  PosicaoTopAtual := Application.MainForm.ClientHeight - 5;

  for i := 0 to NotificadorList.Count - 1 do
  begin
    PosicaoTopAtual := PosicaoTopAtual - NotificadorList[i]
      .FPainelNotificacao.Height - 5;
    NotificadorList[i].FPainelNotificacao.Top := PosicaoTopAtual;
  end;
end;

initialization

NotificadorList := TList<TNotificador>.Create;

finalization

NotificadorList.Free;

end.
