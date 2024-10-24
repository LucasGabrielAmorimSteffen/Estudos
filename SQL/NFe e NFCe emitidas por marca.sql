--TRATAMENTO NFE PEDIDO
select
       -- Pedido
       PED.EMPRESA,
       PED.CODIGO as DOCUMENTO, 
       PED.CLIENTE as CODCLIFOR, 
       PED.CLIENTENOME as NOMECLIFOR, 
       PED.STATUS, 
       PED.DATA, 
       PED.DATAEFE as DATAEFETIVA, 
       PED.NUMERONFCE AS NOTANFE,
       PED.SERIENFCE AS SERIENFE,
       PED.Chavenfce as NUMERODANFE,
       PED.VALORLIQUIDO as VALOR, 
       PED.NFCANCELADA, 
       PED.INUTILIZADA, 
       PED.Denegada, 
       Ped.Valorbruto      AS ValorBrutoPed,
       Ped.Valordesconto   AS ValorDescontoPed,
       Ped.Valorliquido    AS ValorLiquidoPed,
       Ped.Valordesconto   AS ValorDesconto,

       -- Produto Geral
       tpg.Codigo AS CodigoProduto,
       IIF(tvp.Descricaoeditada is null, tpg.Descricao, tvp.Descricaoeditada) AS DescricaoProd,

       -- TVenProduto
       Tvp.Vendido         AS ValorVendido,
       Tvp.Qtde            AS QTdeVenda,
       Tvp.Qtdedevolvida   AS QTdeDevolvida,
       Tvp.Valorunitarioproduto AS ValorUnitProd,
       SUM(Tvp.Vendido * Tvp.Qtde) AS TotalVendido,

       -- Marca
       tpg.Marca    AS CodigoMarca,
       tm.Descricao AS DescricaoMarca,

       -- Vendedor
       Vend.Codigo  AS CodigoVendedor,
       Vend.Nome    AS NomeVendedor
from TVENPEDIDO Ped
inner join tvenproduto Tvp
      ON (ped.Empresa = tvp.Empresa and ped.Codigo = tvp.Pedido)
inner join Testprodutogeral Tpg
      ON (tvp.Produto = tpg.Codigo)
inner join testmarca Tm
      ON (tpg.Marca = tm.Codigo)
Inner Join TVenVendedor Vend
      ON (Vend.Codigo = Ped.Vendedor)
where PED.EMPRESA = :EMPRESA
  and PED.NOTANFE IS NOT NULL
  and PED.NFDATA between :DATAINICIAL and :DATAFINAL
  and ped.status = 'EFE'
  and ped.Tipooperacao in ('016','017','025','041')
  and tpg.Marca = :codigomarca
GROUP BY
         PED.EMPRESA,
         PED.CODIGO,
         PED.CLIENTE,
         PED.CLIENTENOME,
         PED.STATUS,
         PED.DATA,
         PED.DATAEFE,
         PED.NUMERONFCE,
         PED.SERIENFCE,
         PED.Chavenfce,
         PED.VALORLIQUIDO, 
         PED.NFCANCELADA,
         PED.INUTILIZADA,
         PED.Denegada,
         Ped.Valorbruto, 
         Ped.Valordesconto,
         Ped.Valorliquido,
         tpg.Codigo,
         tvp.Descricaoeditada, 
         tpg.Descricao, Tvp.Vendido,
         Tvp.Qtde,
         Tvp.Qtdedevolvida,
         Tvp.Valorunitarioproduto, 
         tpg.Marca,
         tm.Descricao,
         Vend.Codigo,
         Vend.Nome

UNION


--TRATAMENTO NFCE PEDIDO
select
       -- Pedido
       PED.EMPRESA,
       PED.CODIGO as DOCUMENTO, 
       PED.CLIENTE as CODCLIFOR, 
       PED.CLIENTENOME as NOMECLIFOR, 
       PED.STATUS, 
       PED.DATA, 
       PED.DATAEFE as DATAEFETIVA, 
       PED.NUMERONFCE AS NOTANFE,
       PED.SERIENFCE AS SERIENFE,
       PED.Chavenfce as NUMERODANFE,
       PED.VALORLIQUIDO as VALOR, 
       PED.NFCANCELADA, 
       PED.INUTILIZADA, 
       PED.Denegada, 
       Ped.Valorbruto      AS ValorBrutoPed,
       Ped.Valordesconto   AS ValorDescontoPed,
       Ped.Valorliquido    AS ValorLiquidoPed,
       Ped.Valordesconto   AS ValorDesconto,

       -- Produto Geral
       tpg.Codigo AS CodigoProduto,
       IIF(tvp.Descricaoeditada is null, tpg.Descricao, tvp.Descricaoeditada) AS DescricaoProd,

       -- TVenProduto
       Tvp.Vendido         AS ValorVendido,
       Tvp.Qtde            AS QTdeVenda,
       Tvp.Qtdedevolvida   AS QTdeDevolvida,
       Tvp.Valorunitarioproduto AS ValorUnitProd,
       SUM(Tvp.Vendido * Tvp.Qtde) AS TotalVendido,

       -- Marca
       tpg.Marca    AS CodigoMarca,
       tm.Descricao AS DescricaoMarca,

       -- Vendedor
       Vend.Codigo  AS CodigoVendedor,
       Vend.Nome    AS NomeVendedor
from TVENPEDIDO PED
inner join tvenproduto tvp on (ped.Empresa = tvp.Empresa and ped.Codigo = tvp.Pedido)
inner join Testprodutogeral tpg on (tvp.Produto = tpg.Codigo)
inner join testmarca tm on (tpg.Marca = tm.Codigo)
Inner Join TVenVendedor vend ON (Vend.Codigo = Ped.Vendedor)
where PED.EMPRESA = :EMPRESA
  AND PED.Chavenfce IS NOT NULL
  and PED.NFDATA between :DATAINICIAL and :DATAFINAL
  and ped.status = 'EFE'
  and ped.Tipooperacao in ('016','017','025','041')
  and tpg.Marca = :codigomarca
GROUP BY
         PED.EMPRESA,
         PED.CODIGO,
         PED.CLIENTE,
         PED.CLIENTENOME,
         PED.STATUS,
         PED.DATA,
         PED.DATAEFE,
         PED.NUMERONFCE,
         PED.SERIENFCE,
         PED.Chavenfce,
         PED.VALORLIQUIDO, 
         PED.NFCANCELADA,
         PED.INUTILIZADA,
         PED.Denegada,
         Ped.Valorbruto, 
         Ped.Valordesconto,
         Ped.Valorliquido,
         tpg.Codigo,
         tvp.Descricaoeditada, 
         tpg.Descricao, Tvp.Vendido,
         Tvp.Qtde,
         Tvp.Qtdedevolvida,
         Tvp.Valorunitarioproduto, 
         tpg.Marca,
         tm.Descricao,
         Vend.Codigo,
         Vend.Nome