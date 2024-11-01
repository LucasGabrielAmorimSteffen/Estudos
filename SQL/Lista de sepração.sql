SELECT
     -- Dados da empresa                 
     emp.codigo       as "EMPRESA",         
     ped.codigo       as "PEDIDO",                
     prod.produto     as "PRODUTO",              
     emp.razaosocial  as "Razao social empresa",
     emp.nomefantasia as "Nome fantasia empresa",     
     emp.razaosocial  as "Razao social empresa",
     emp.cpfcnpj      as "CNPJ empresa",           
     emp.rgie         as "RGIE Empresa",          
     emp.telefone     as "Fone empresa", 
     emp.fax          as "Fax empresa",   
     emp.email        as "Email empresa",
     emp.endereco     as "Endereco empresa",
     emp.numero       as "Numero endereco empresa",
     emp.bairro       as "Bairro empresa",
     cidemp.nome      as "Cidade empresa",
     cidemp.estado    as "Estado empresa",
     emp.cep          as "CEP empresa",              
                                       
     -- Dados do cliente
     cli.codigo                                       as "Codigo cliente",
     cli.fantasia                                     as "Fantasia Cliente",
     coalesce(ped.clientenome, con.nome, cli.nome)    as "Nome cliente",
     cli.pessoa,
     coalesce(con.rgie, cli.rgie)                     as "RGIE cliente",
     coalesce(con.cpfcnpj, cli.cpfcnpj)               as "CPFCNPJ cliente",
     coalesce(con.fone, cli.fone)                     as "Fone cliente",
     coalesce(con.celular, cli.fonecelular)           as "Fone celular",
     coalesce(con.email, cli.email)                   as "Email cliente",
     coalesce(con.endereco, cli.endereco)             as "Endereco cliente",
     coalesce(con.numeroendereco, cli.numeroendereco) as "Numero endereco cliente",
     coalesce(con.complemento, cli.complemento)       as "Complemento cliente",
     coalesce(con.bairro, cli.bairro)                 as "Bairro cliente",
     coalesce(cidcon.nome, cidcli.nome)               as "Cidade cliente",
     coalesce(cidcon.estado, cidcli.estado)           as "Estado cliente",
     coalesce(con.cep, cli.cep)                       as "CEP cliente",
     coalesce(con.fax, cli.fax)                       as "Fone Fax ",
     ped.clienteendereco                              as "Endereço entrega",

     -- Endereço cobrança
     cli.enderecocob as "Endereço cobrança",
     cli.numeroenderecocob as "Numero cobrança",
     cli.complcobranca as "Complemento cobrança",
     cli.bairrocob as "Bairro cobrança",
     cidcob.nome as "Cidade cobrança",
     cidcob.estado as "Estado cobrança",
     cli.cepcob as "CEP cobrança",

     --Endereço trabalho
     F.localtrabalho as "Nome Local Trabalho",
     F.enderecolocaltrabalho as "Endereco local trabalho",
     F.bairrotrabalho as "Bairro trabalho",
     F.fonetrabalho as "Fone trabalho",
     F.contato as "Contato de trabalho",
     cidtrab.nome as "Cidade trabalho",
     cidtrab.estado as "Estado trabalho",
     F.ceptrabalho as "CEP trabalho",
     F.complemento as "Complemento trabalho",
                                                   
     --Dados do pedido
     ped.codigo        as "codigo pedido",
     coalesce(ped.notanfe,ped.numeronfce,ped.nfagrupada,0) as "Numero Fiscal",
     coalesce(ped.serienfe,ped.serienfce,0)                as "serie fiscal",
     ped.comprador     as "Comprador",
     ped.data          as "Data abertura pedido",
     ped.hora          as "Hora abertura pedido",
     ped.valorbruto    as "Valor bruto pedido",
     ped.valordesconto as "desconto pedido",
     ped.valorliquido  as "Valor total pedido",
     coalesce(ped.dataefe,ped.data)                        as "Data Efetivacao",
     ped.horaefe       as "Hora efetivado",
     ped.frete         as "Valor frete",
     ped.idobjeto,
     ped.observacao, 
     cpg.codigo        as "Codigo condicao pagamento",
     cpg.descricao     as "Descricao condicao pagamento",
     obs.observacao    as "Obs Pedido",
     obs.observacao_os as "Obs Pedido OS",
     ped.usuario       as "Usuario",
     ped.idprisma      as "Prisma",

     -- Dados do vendedor
     ven.codigo  as "Codigo vendedor",
     ven.nome    as "Nome vendedor",
     ven.celular as "Telefone vendedor",
 
     --AGENTE
      agente.codigo              as "codigo agente",
      agente.nome                as "Nome agente",
 
     --Dados do produto
     prod.produto                                  as "codigo produto",
     coalesce(amb.quantidade, prod.qtde) as           "Quantidade",
     prod.prvendido                                as "Preco Vendido Unitario",
     prod.vlrliquido                               as "Valor Total Produtos",
     prod.vlrdesc                                  as "desconto prod",
     prod.observacaonavenda                        as "Observacao do produto",
     prod.almox                                    as "Codigo almoxarifado",
     pe.Qtdeproduto                                as "Qtde prevista",
     almox.descricao                               as "Nome almoxarifado",
     g.descricao                                   as "Nome produto",
     g.descricaoreduzida                           as "descricao reduzida produto",
     g.usadescricaoestendidanfe                    as "Descricao NFE",
     g.DESCRICAOGRADE                              as "DESCRICAO GRADE",
     g.referencia                                  as "Referencia",
     g.fabricante                                  as "Codigo do Fabricante",
     g.codigobarra                                 as "Codigo barras EAN",
     g.embalagem                                   as "Embalagem",
     g.qtdeembalagem                               as "Qtd Embalagem",
     g.pesobruto                                   as "Peso bruto",
     g.codigofabrica                               as "Codigo Fabrica",
     marca.descricao                               as "Descricao Marca",
     marca.codigo                                  as "Codigo Marca",
     estq.endereco                                 as "Endereco produto",
     coalesce(prod.qtde2, 0)                       as "QtdeM3_OS",
     coalesce(prod.comprimento, 0)                 as "Comprimento_OS",
     coalesce(prod.largura, 0)                     as "Largura_OS",
     coalesce(prod.altura, 0)                      as "Altura_OS",
     prod.altura * prod.comprimento * prod.largura as "Metragem_OS",
     estq.estdisponivel                            as "Estoque disponivel", 
     estq.estreservado                             as "Estoque reservado",
     grupo.codigo                                  as "Codigo grupo",
     grupo.descricao                               as "Descrição grupo",
     posto.placa                                   as "Placa",
     posto.km                                      as "KM",
     ped.km                                       as "Km pedido",
     const.m2                           as "m2PorCaixaAmbiente",
     case when (coalesce(const.m2,0) > 0)
      then  prod.qtde / const.m2
      else null
     end                               as "qtdCaixaAmbiente",
     prod.identificador,
     g.composicao,
     g.codigoanterior,
    
     --Objeto
     ped.idobjeto,
     ped.descricaoobjeto,
                           
     -- Transportador
     T.codigo                                      as CodTransportador,
     T.nome                                        as "Nome transportador",
     T.fone                                        as "Fone transportador",
     T.placa                                       as "Placa transportador",
     T.cpfcnpj                                     as "CPFCNPJ transpotador",

     -- COR
     cor.Idcor                                     AS IDCOR,
     cor.Codigo                                    AS CodCor,
     Cor.Nome                                      AS NomeCor,
     Cor.Descricao                                 AS DescricaoCor

from tvenpedido ped
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
LEFT JOIN TEstFormula Form                  ON (Form.Idformula = prod.Idformula)
LEFT JOIN TEstCor Cor                       ON (Cor.Idcor = Form.Idcor)
where ped.empresa    = :EMPRESA            
      and ped.codigo = :PEDIDO