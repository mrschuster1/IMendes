program IMendes;

uses
  Vcl.Forms,
  Provider.Connection in 'src\Providers\Provider.Connection.pas' {ProviderConnection: TDataModule},
  Utils.Dialogs in 'src\Utils\Utils.Dialogs.pas',
  Helpers.Ini in 'src\Helpers\Helpers.Ini.pas',
  View.Config in 'src\View\View.Config.pas' {formConfig},
  Helper.Forms in 'src\Helpers\Helper.Forms.pas',
  View.Empresas in 'src\View\View.Empresas.pas' {formEmpresas},
  View.Main in 'src\View\View.Main.pas' {formMain},
  View.Child in 'src\View\View.Child.pas' {formChild},
  Handler.Exception in 'src\Handlers\Handler.Exception.pas',
  View.PesquisaGrade in 'src\View\View.PesquisaGrade.pas' {formPesquisaGrade},
  View.Exportacao in 'src\View\View.Exportacao.pas' {formExportacao},
  Services.Empresas in 'src\Services\Services.Empresas.pas' {ServiceEmpresas: TDataModule},
  Services.Produtos in 'src\Services\Services.Produtos.pas' {ServiceProdutos: TDataModule},
  View.Importacao in 'src\View\View.Importacao.pas' {formImportacao},
  Services.Tributos in 'src\Services\Services.Tributos.pas' {ServiceTributos: TDataModule},
  Model.Produto in 'src\Model\Model.Produto.pas';

{$R *.res}


begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  if TformEmpresas.SelecionarEmpresa then
  begin
    Application.CreateForm(TformMain, formMain);
  Application.MainFormOnTaskbar := true;
    Application.Run;
  end
  else
    Application.Terminate

end.
