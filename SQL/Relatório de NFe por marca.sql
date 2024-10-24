--TRATAMENTO NFE PEDIDO
select PED.EMPRESA, 
       PED.CODIGO as DOCUMENTO, 
       PED.CLIENTE as CODCLIFOR, 
       PED.CLIENTENOME as NOMECLIFOR, 
       PED.STATUS, 
       PED.DATA, 
       PED.DATAEFE as DATAEFETIVA, 
       PED.NOTANFE, 
       PED.SERIENFE, 
       PED.NUMERODUNFE as NUMERODANFE, 
       PED.VALORLIQUIDO as VALOR, 

       PED.NFCANCELADA, 
       PED.INUTILIZADA, 
       PED.DENEGADA
from TVENPEDIDO PED
where PED.EMPRESA = :EMPRESA
  and PED.NOTANFE IS NOT NULL
  and PED.NFDATA between :DATAINICIAL and :DATAFINAL
  and ped.status = 'EFE'
  and ped.Tipooperacao in ('016','017','025','041')

UNION


--TRATAMENTO NFCE PEDIDO
select PED.EMPRESA, 
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
       PED.DENEGADA,
       iif(tvp.Descricaoeditada is null, tpg.Descricao, tvp.Descricaoeditada),
       tpg.Marca,
       tm.Descricao
from TVENPEDIDO PED
inner join tvenproduto tvp on (ped.Empresa = tvp.Empresa and ped.Codigo = tvp.Pedido)
inner join Testprodutogeral tpg on (tvp.Produto = tpg.Codigo)
inner join testmarca tm on (tpg.Marca = tm.Codigo)
where PED.EMPRESA = :EMPRESA
  AND PED.Chavenfce IS NOT NULL
  and PED.NFDATA between :DATAINICIAL and :DATAFINAL
  and ped.status = 'EFE'
  and ped.Tipooperacao in ('016','017','025','041')
  and tpg.Marca = :codigomarca