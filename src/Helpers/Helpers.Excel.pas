unit Helpers.Excel;

interface

uses
  Data.DB;

type
  TExcelHelper = class
  public
    class procedure CSVToDataset(CSVFilePath: string; Dataset: TDataset);
  end;

implementation

{ TExcelHelper }

class procedure TExcelHelper.CSVToDataset(CSVFilePath: string;
  Dataset: TDataset);
var
  ArquivoCSV: TextFile;
  Contador, I: Integer;
  Linha: String;

  // Lê Linha e Monta os valores
  function MontaValor: String;
  var
    ValorMontado: String;
  begin
    ValorMontado := '';
    inc(I);
    While Linha[I] >= ' ' do
    begin
      If Linha[I] = ';' then // vc pode usar qualquer delimitador ... eu
        // estou usando o ";"
        break;
      ValorMontado := ValorMontado + Linha[I];
      inc(I);
    end;
    result := ValorMontado;
  end;

begin
  // Carregando o arquivo ...
  AssignFile(ArquivoCSV, 'lotofacil.csv');

  try
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, Linha);
    Contador := 1;

    while not Eoln(ArquivoCSV) do
    begin
      // Demais Linhas (Itens do Pedido )
      I := 0;


      // cds1.Append;
      // cds1jogo.Value := StrToInt(MontaValor);
      // cds1dt.Value   := StrToDate(MontaValor);
      // cds1n1.value   := StrToInt(MontaValor);
      // cds1n2.value   := StrToInt(MontaValor);
      // cds1n3.value   := StrToInt(MontaValor);
      // cds1n4.value   := StrToInt(MontaValor);
      // cds1n5.value   := StrToInt(MontaValor);
      // cds1n6.value   := StrToInt(MontaValor);
      // cds1n7.value   := StrToInt(MontaValor);
      // cds1n8.value   := StrToInt(MontaValor);
      // cds1n9.value   := StrToInt(MontaValor);
      // cds1n10.value  := StrToInt(MontaValor);
      // cds1n11.value  := StrToInt(MontaValor);
      // cds1n12.value  := StrToInt(MontaValor);
      // cds1n13.value  := StrToInt(MontaValor);
      // cds1n14.value  := StrToInt(MontaValor);
      // cds1n15.value  := StrToInt(MontaValor);
      //
      // cds1.Post;

      Readln(ArquivoCSV, Linha);
      Contador := Contador + 1;
    end;

  finally
    CloseFile(ArquivoCSV);
  end;
end;

end.
