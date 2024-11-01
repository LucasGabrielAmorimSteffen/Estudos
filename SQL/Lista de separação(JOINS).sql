-- FORMATADO

LEFT OUTER JOIN testalmox almox              
  ON (prod.almox = almox.codigo 
 AND prod.empresa = almox.empresa)
LEFT OUTER JOIN tvenproduto prod             
  ON (ped.empresa = prod.empresa 
 AND ped.codigo = prod.pedido)
LEFT OUTER JOIN testestoque estq             
  ON (estq.empresa = prod.empresa
 AND estq.almox = prod.almox
 AND estq.produto = prod.produto)
LEFT OUTER JOIN testprodutogeral g           
  ON (g.codigo = prod.produto)
LEFT OUTER JOIN trecclientegeral cli         
  ON (cli.codigo = ped.cliente)
LEFT OUTER JOIN tvenvendedor ven             
  ON (ven.empresa = ped.empresa 
 AND ven.codigo = ped.vendedor)
LEFT OUTER JOIN tvenconsumidor con           
  ON (con.codigo = ped.consumidor)
LEFT OUTER JOIN testcondpagvenda cpg         
  ON (cpg.empresa = ped.empresa
 AND cpg.codigo = ped.condicaopagto)
LEFT OUTER JOIN tgerempresa emp              
  ON (emp.codigo = ped.empresa
 AND emp.codigo = prod.empresa
 AND emp.codigo = estq.empresa
 AND emp.codigo = ven.empresa)
LEFT OUTER JOIN tgercidade cidcli            
  ON (cidcli.codigo = cli.cidade)
LEFT OUTER JOIN tgercidade cidemp            
  ON (cidemp.codigo = emp.cidade)
LEFT OUTER JOIN tgercidade cidcon            
  ON (cidcon.codigo = con.cidade)
LEFT OUTER JOIN tvenobservacaopedido obs     
  ON (obs.empresa = ped.empresa 
 AND obs.pedido = ped.codigo)
LEFT OUTER JOIN testproduto testpro          
  ON (testpro.empresa = prod.empresa
 AND testpro.produto = prod.produto)
LEFT OUTER JOIN testgrupo grupo              
  ON (grupo.empresa = testpro.empresa
 AND grupo.codigo = testpro.grupo)
LEFT OUTER JOIN testmarca marca              
  ON (g.marca=marca.codigo)
LEFT OUTER JOIN tvenregistro reg             
  ON (reg.empresa = ped.empresa
 AND reg.idpedido = ped.codigo
 AND reg.status <> 'C')
LEFT OUTER JOIN TVENPERIODO  periodo         
  ON (periodo.empresa = reg.empresa
 AND periodo.idperiodo = reg.idperiodo
 AND periodo.registradora = reg.registradora)
LEFT OUTER JOIN tvenregistradora tregi       
  ON (tregi.empresa = periodo.empresa
 AND tregi.numero = periodo.registradora)
LEFT OUTER JOIN testprodutoconstrucao const  
  ON (const.produto = prod.produto)
LEFT OUTER JOIN tgercidade cidcob            
  ON (cidcob.codigo = cli.cidadecob)
LEFT OUTER JOIN TRECPFISICA F                
  ON (F.codigo = cli.codigo)
LEFT OUTER JOIN tgercidade cidtrab           
  ON (cidtrab.codigo = F.idcidadetrabalho)
LEFT OUTER JOIN TPOSPLACA posto              
  ON (posto.empresa = ped.empresa
 AND posto.idpedido=ped.codigo)
LEFT OUTER JOIN tventransportador T          
  ON (T.codigo = ped.idtransportador)
LEFT OUTER JOIN tvenvendedor agente          
  ON (agente.empresa = ped.empresa
 AND agente.codigo = ped.agente)
LEFT OUTER JOIN TVENPREVISAOENTREGAITEM PE  
  ON (PE.empresa = prod.empresa
 AND PE.pedido = prod.pedido
 AND PE.produto = prod.produto)
LEFT OUTER JOIN tvenprodutoambiente amb     
  ON (amb.empresa = prod.empresa
 AND amb.pedido  = prod.pedido
 AND amb.produto = prod.produto
 AND  amb.identificadorproduto = prod.identificador)

--- SEM FORMATAR

LEFT OUTER JOIN tvenproduto prod            ON (ped.empresa = prod.empresa AND ped.codigo = prod.pedido)
LEFT OUTER JOIN testalmox almox             ON (prod.almox = almox.codigo AND prod.empresa = almox.empresa)
LEFT OUTER JOIN testestoque estq            ON (estq.empresa = prod.empresa AND estq.almox = prod.almox AND estq.produto = prod.produto)
LEFT OUTER JOIN testprodutogeral g          ON (g.codigo = prod.produto)
LEFT OUTER JOIN trecclientegeral cli        ON (cli.codigo = ped.cliente)
LEFT OUTER JOIN tvenvendedor ven            ON (ven.empresa = ped.empresa AND ven.codigo = ped.vendedor)
LEFT OUTER JOIN tvenconsumidor con          ON (con.codigo = ped.consumidor)
LEFT OUTER JOIN testcondpagvenda cpg        ON (cpg.empresa = ped.empresa AND cpg.codigo = ped.condicaopagto)
LEFT OUTER JOIN tgerempresa emp             ON (emp.codigo = ped.empresa AND emp.codigo = prod.empresa AND emp.codigo = estq.empresa AND emp.codigo = ven.empresa)
LEFT OUTER JOIN tgercidade cidcli           ON (cidcli.codigo = cli.cidade)
LEFT OUTER JOIN tgercidade cidemp           ON (cidemp.codigo = emp.cidade)
LEFT OUTER JOIN tgercidade cidcon           ON (cidcon.codigo = con.cidade)
LEFT OUTER JOIN tvenobservacaopedido obs    ON (obs.empresa = ped.empresa AND obs.pedido = ped.codigo)
LEFT OUTER JOIN testproduto testpro         ON (testpro.empresa = prod.empresa AND testpro.produto = prod.produto)
LEFT OUTER JOIN testgrupo grupo             ON (grupo.empresa = testpro.empresa AND grupo.codigo = testpro.grupo)
LEFT OUTER JOIN testmarca marca             ON (g.marca=marca.codigo)
LEFT OUTER JOIN tvenregistro reg            ON (reg.empresa = ped.empresa AND reg.idpedido = ped.codigo AND reg.status <> 'C')
LEFT OUTER JOIN TVENPERIODO  periodo        ON (periodo.empresa = reg.empresa AND periodo.idperiodo = reg.idperiodo AND periodo.registradora = reg.registradora)
LEFT OUTER JOIN tvenregistradora tregi      ON (tregi.empresa = periodo.empresa AND tregi.numero = periodo.registradora)
LEFT OUTER JOIN testprodutoconstrucao const ON (const.produto = prod.produto)
LEFT OUTER JOIN tgercidade cidcob           ON (cidcob.codigo = cli.cidadecob)
LEFT OUTER JOIN TRECPFISICA F               ON (F.codigo = cli.codigo)
LEFT OUTER JOIN tgercidade cidtrab          ON (cidtrab.codigo = F.idcidadetrabalho)
LEFT OUTER JOIN TPOSPLACA posto             ON (posto.empresa = ped.empresa AND posto.idpedido=ped.codigo)
LEFT OUTER JOIN tventransportador T         ON (T.codigo = ped.idtransportador)
LEFT OUTER JOIN tvenvendedor agente         ON (agente.empresa = ped.empresa AND agente.codigo = ped.agente)    
LEFT OUTER JOIN TVENPREVISAOENTREGAITEM PE  ON (PE.empresa = prod.empresa AND PE.pedido = prod.pedido AND PE.produto = prod.produto)
LEFT OUTER JOIN tvenprodutoambiente amb     ON (amb.empresa = prod.empresa AND amb.pedido  = prod.pedido AND amb.produto = prod.produto AND  amb.identificadorproduto = prod.identificador)   