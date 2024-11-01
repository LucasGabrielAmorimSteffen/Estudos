var
       Parcelas: Char;
       controle: Boolean;
       imprimiuentrada: Boolean;
       imprimiuissqnretido: Boolean;                                                                      
       vValorGarantia: currency;
       vContadorParcela: integer;

// Tipo do pedido                                              
procedure Memo51OnBeforePrint(Sender: TfrxComponent);
begin
       memo51.text := <sql."Tipo do pedido"> + ': ' + <sql."PEDIDO"> ;                                             
end;

// Parcelamento                                   
procedure MasterData1OnBeforePrint(Sender: TfrxComponent);
begin
       if ((<sql."Valor entrada"> > 0) and (not imprimiuentrada)) then begin
               memo8.lines.add('Entrada de ' + 'R$:' + FormatFloat('#,###0.000', <sql."Valor entrada">));                   
               imprimiuentrada := True;                                                                   
       end;

       if ((<sql."issqn retido"> > 0) and (not imprimiuissqnretido)) then
       begin
               memo8.lines.add('Issqn retido R$: ' + FormatFloat('#,###0.000', <sql."issqn retido">));
               imprimiuissqnretido := True;                                       
       end;                 
                   
       Parcelas := Parcelas + <parcelas."PARCELA"> + ' em ' +  DateToStr(<parcelas."vencimento">) + ': R$:' + FormatFloat('#,##0.00', <parcelas."VALOR">) + '    ';       
       vContadorParcela := vContadorParcela + 1;
         
       if vContadorParcela = 1 then begin
               vContadorParcela := 0;
               memo8.lines.add(Parcelas);
               controle := False;                                                       
               parcelas := '';                                                    
       end;  
end;

procedure Footer1OnBeforePrint(Sender: TfrxComponent);
begin
       memo8.lines.add(Parcelas);  
end;

// Valor do produto com garantia                                                                                  
procedure MasterData2OnBeforePrint(Sender: TfrxComponent);
begin
       // Memo63.lines.clear;                           
       if Engine.Finalpass then
       begin                   
              if <sql."Produto Garantia"> = 'S' then 
               begin
                       Memo65.text := '';    
                       Memo66.text := '**Garantia**';                                                                                                                                              
               end                                    
               else 
               begin
                       Memo65.text := FormatFloat('#,##0.00', <sql."Valor vendido">);
                       Memo66.text := FormatFloat('#,##0.00', <sql."Valor desconto produto">);                                             
               end;        
              // Memo63.lines.add(<sql."codigo produto"> + ' - ' + <sql."descricao produto grade"> + ' - '+ <sql."Embalagem produto">+'/'+FloatToStr(<sql."Quantidade embalagem produto">));                                                       
               //if <sql."Observacao Produto"> <> '' then begin
               //        memo63.lines.add('             ' + <sql."Observacao Produto">);                                                           
               //end;                 
         
               if <sql."Produto Garantia"> = 'S' then begin                                
                       vValorGarantia := vValorGarantia + <sql."Valor produto">;
               end;
       end;                 
end;

// Formatar campo Valor Garantia                                                                                                
procedure Memo78OnBeforePrint(Sender: TfrxComponent);
begin
       memo78.text := FormatFloat('#,###0.000', vValorGarantia);  
end;    

// Entrega - Nome do comprador                                                                          
procedure Memo99OnBeforePrint(Sender: TfrxComponent);
begin
       if (<sql."Nome comprador"> = '') then begin
               memo99.text := <sql."Codigo cliente"> + ' - ' + <sql."Nome Cliente">;                                                                                                                            
       end
       else begin
               memo99.text := <sql."Nome comprador">;                                           
       end  
end;

// Entrega - Endereço                                               
procedure Memo107OnBeforePrint(Sender: TfrxComponent);
begin
       if (<sql."Endereço entrega"> = '') then begin
               memo107.text := <sql."endereco cliente"> + ', ' + <sql."numero endereco cliente"> + ', ' +<sql."Complemento cliente"> + ', ' + <sql."bairro cliente">;                                                                                                                                                     
       end
       else begin
               memo107.text := <sql."Endereço entrega">;                                                     
       end  
end;

// Entrega - Cidade                                           
procedure Memo108OnBeforePrint(Sender: TfrxComponent);
begin
       memo108.text := <sql."cidade cliente"> + ', ' + <sql."estado cliente"> + ', CEP : ' + MascaraCep(<sql."cep cliente">);                                         
end;

// Entrega - Observações                                                          
procedure Memo109OnBeforePrint(Sender: TfrxComponent);
begin
       if ((<sql."Observação cliente"> = '') and (<sql."Observação venda"> = '')) then begin
               memo109.text := '.';                                                                                 
       end
       else begin
               memo109.text := <sql."Observação cliente"> + '. ' + Uppercase(<sql."Observação venda">);                                                                       
       end  
end;



procedure Child2OnBeforePrint(Sender: TfrxComponent);
begin
IF <sql."Observacao Produto"> <> '' THEN
      Child2.Visible := TRUE;
   IF <sql."Observacao Produto"> = '' THEN
       Child2.Visible := FALSE;    

end;


procedure Memo29OnBeforePrint(Sender: TfrxComponent);
begin

end;

procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);
begin

    if <sql."Tipo do pedido"> = 'DEVOLUÇÃO' then
       Memo29.Visible := true;        
end;

procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);
begin
     //LGPD
     if (<sql."PESSOA"> = 'P') or (<sql."PESSOA"> = 'J') or (<LGPD."ANONIMIZARCPF"> = 0) then                             //Produtos e P.Juridica                                                
      begin                                                                                          
                Memo31.DataField := '';                                                     //precisa de mascara
                Memo31.Text := MascaraCpfCnpj(<sql."CPFCNPJ cliente">);    
       end;  
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       
                      

    
end;

procedure OnStartReport(Sender: TfrxComponent);
var
  parametro:string;                         
begin
  postgres.connected := false;
  postgres.Params.Clear;      
  parametro := 'Database='+<conexaopostgres."DANDO">;                    
  postgres.Params.Add(parametro);                 

  parametro :='User_Name='+vartostr(<conexaopostgres."USUARIO">);                            
  postgres.Params.Add(parametro);

  parametro :='Password='+vartostr(<conexaopostgres."SENHA">);                            
  postgres.Params.Add(parametro);

  parametro :='DriverID=PG';                            
  postgres.Params.Add(parametro);      
    
  parametro := 'Server='+vartostr(<conexaopostgres."IP">);                            
  postgres.Params.Add(parametro);
  postgres.LoginPrompt := false;      
  postgres.connected := true;
    
end;

begin
       vValorGarantia := 0;
       vContadorParcela := 0;                                                 
       controle := False;
       imprimiuentrada := False;
       imprimiuissqnretido := False;                                                                       
end.