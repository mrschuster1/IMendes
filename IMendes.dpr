program IMendes;

uses
  Vcl.Forms,
  Model.Connection in 'src\Model\Model.Connection.pas' {DM: TDataModule},
  Utils.Dialogs in 'src\Utils\Utils.Dialogs.pas',
  Helpers.Ini in 'src\Helpers\Helpers.Ini.pas',
  View.Config in 'src\View\View.Config.pas' {formConfig},
  Helper.Forms in 'src\Helpers\Helper.Forms.pas',
  View.Empresas in 'src\View\View.Empresas.pas' {formEmpresas},
  View.Main in 'src\View\View.Main.pas' {formMain},
  View.Child in 'src\View\View.Child.pas' {formChild},
  Handler.Exception in 'src\Handlers\Handler.Exception.pas',
  Helpers.Excel in 'src\Helpers\Helpers.Excel.pas',
  View.PesquisaGrade in 'src\View\View.PesquisaGrade.pas' {formPesquisaGrade},
  View.Exportacao in 'src\View\View.Exportacao.pas' {formExportacao},
  View.Importacao in 'src\View\View.Importacao.pas' {formImportacao};

{$R *.res}


begin
  ReportMemoryLeaksOnShutdown := true;
  Application.OnException := HandlerException.DoHandlerException;
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  if TformEmpresas.SelecionarEmpresa then
  begin
    Application.MainFormOnTaskbar := true;
    Application.CreateForm(TformMain, formMain);
    Application.Run;
  end
  else
    Application.Terminate

end.
