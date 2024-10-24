SELECT
      -- Empresa

      Emp.Nomefantasia,
      Emp.Razaosocial,

      -- Pedido

      Ped.Dataefe                                                               AS Data_Efetivacao,
      Ped.Codigo                                                                AS Cod_Pedido,
      Ped.Cliente                                                               AS Cod_Cliente,
      Ped.Clientenome                                                           AS Nome_Cliente,
      Ped.Notafiscal                                                            AS N_NFe,
      Ped.Valorliquido,
      Ped.Valorbruto,
      Ped.Usuario,
      Ped.Status                                                                AS Situacao,
      Ped.Valortotalnota                                                        AS Valor_Total,

      -- Produtos do Pedido

      Prod.Qtde                                                                 AS Quantidade_Vendida,
      Prod.Tipovenda                                                            AS Tipo_Venda,
      Prod.vendido                                                              AS Valor_Unitario,
      Prod.Vlrliquido                                                           AS Valor_Total_item,

      -- Marca
      Mar.Codigo                                                                AS Codigo_Marca,
      Mar.Descricao                                                             AS Descricao_Marca,

      -- Vendedor
      Ven.Codigo                                                                AS Codigo_Vendedor,
      Ven.Nome                                                                  AS Nome_Vendedor,

      -- Produto

      Prog.Codigo                                                               AS Cod_Produto,
      Prog.Descricao                                                            AS Descricao_Produto,
      Prog.Descricaoreduzida                                                    AS Descricao_Reduzida,
      Prog.Fabricante,
      Prog.Embalagem

From TVenPedido Ped
Inner Join Tgerempresa Emp
      On (Emp.Codigo = Ped.Empresa)
Inner Join TEstProduto Pro
      ON (Pro.Empresa = Ped.Empresa)
Inner Join TEstProdutoGeral Prog
      ON (Prog.Codigo = Pro.Produto)
Inner Join TEstMarca Mar
      ON (Mar.Codigo = Prog.Marca)
Inner Join TVenProduto Prod
      ON (Prod.Pedido = Ped.Codigo
      AND Prod.Produto = Pro.Produto
      AND Prod.Empresa = Pro.Empresa)
Inner Join TVenVendedor Ven
      ON (Ven.Empresa = Ped.Empresa
      AND Ven.Codigo = Ped.Vendedor)
Where Emp.Codigo = '02'
AND Ped.Notafiscal IS NOT NULL
AND Ped.Vendedor = :Vendedor
AND Prog.Marca = :Marca
AND Ped.Cliente = :CodigoCliente
AND Ped.Dataefe between :DataInicial AND :DataFinal