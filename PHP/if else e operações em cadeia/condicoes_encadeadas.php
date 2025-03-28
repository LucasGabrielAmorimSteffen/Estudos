<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Condições Encadeadas</title>
</head>
<body>
    <?php
    // Se o usuário possuir o cartão da loja.
    // Se a compra excede o valor de R$100,00

    $usuario_cartao_loja = true;
    $valor_venda = 225;
    $valor_frete = 150;
    $recebimento_desconto = true;

    if($usuario_cartao_loja && $valor_venda >= 400){
        $valor_frete = 0;

    }else if($usuario_cartao_loja && $valor_venda >= 300){
        $valor_frete = 10;

    }else if($usuario_cartao_loja && $valor_venda >= 100){
        $valor_frete = 25;
    }else{
        $recebimento_desconto = false;
    }
    ?>

    <h1>Detalhes do pedido</h1><hr>
    <h2>Possui o Cartão da Loja? 
        <?php
        if($usuario_cartao_loja){
            echo 'Sim';
        }else{
            echo 'Não';
        }
        ?>
    </h2>
    <h2>Valor venda: <?= $valor_venda?></h2>
    <h2>Recebeu desconto Frete? 
        <?php
        if($recebimento_desconto){
            echo 'Sim';
        }else{
            echo 'Não';
        }
        ?>
    </h2>
    <h2>Valor Frete: <?= $valor_frete?></h2>
</body>
</html>