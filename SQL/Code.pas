var
  SAgrupar, STitulo, STituloGrupo, STituloTotalGrupo, STituloTipo, SCusto, STituloCusto, SDataInicial, SDataFinal: String;
  FCusto, FLucro, FMargem: Double;                                                                                

function ExtraiDados(sTexto, sCampo: String; iTam: Integer): String;
begin
  Result := Copy(sTexto, Pos(sCampo, sTexto) + Length(sCampo) + 1, iTam);                            
end;    

procedure ReportTitle1OnAfterPrint(Sender: TfrxComponent);
begin
                           

  SDataInicial := ExtraiDados(MFIltros.Text, 'Data inicial:', 10);
  SDataFinal := ExtraiDados(MFIltros.Text, 'Data final:', 10);      

  
end;                          

begin
  
end.