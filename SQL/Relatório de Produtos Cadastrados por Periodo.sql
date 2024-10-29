SELECT
       Prog.Codigo,
       Prog.Descricao,
       Prog.Datacadastro,
       Pro.Estdisponivel
FROM TESTPRODUTOGERAL Prog
Inner Join  TEstProduto Pro
      ON (Pro.Produto = Prog.Codigo)
Where Prog.Datacadastro BETWEEN :DataInicial AND :DataFinal