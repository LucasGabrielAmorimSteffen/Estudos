SELECT

      -- Empresa
      Emp.Nomefantasia,
      Emp.Razaosocial,
      Emp.Cpfcnpj,
      Emp.Rgie,

      -- Pedido
      Ped.Codigo           AS CodigoPedido,
      Ped.Cliente          AS CodigoCliente,
      Ped.Dataefe          AS DataEfetivacao,
      Ped.Clientenome      AS NomeCliente,
      Ped.Clienteendereco  AS EnderecoCliente,
      Ped.Condicaopagto    AS CondPgtoPed,
      Ped.Notafiscal       AS NumeroNotaFiscal,
      Ped.Numerodunfe      AS ChaveNFE,
      Ped.Vendedor         AS CodigoVendedor,

      -- Produto/Vendedor
      Prog.Codigo          AS CodigoProduto,
      Prog.Descricao       AS DescricaoProduto,
      Prog.Descricaoreduzida,


      FROM TVenPedido Ped
Right Join TGerEmpresa Emp
      ON (Emp.Codigo = Ped.Empresa)
Inner Join TVenProduto Prod
      ON (Prod.Pedido = Ped.Codigo)
Inner Join TEstProdutoGeral Prog
      ON (Prog.Codigo = Prod.Produto)
Inner Join TEstMarca Mar
WHERE Ped.Numerodunfe IS NOT NULL
--AND   Emp.Codigo = :Empresa
