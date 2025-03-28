<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>funcoes_nativas_para_matematica</title>
</head>
<body>
    <h1>Funções Nativas para tarefas matemáticas</h1><hr>
    <ul>
        <li>ceil($numero) -> Arredonda o valor para cima</li>
        <li>floor($numero) -> Arrendonda o valor para baixo</li>
        <li>round($numero) -> Arrendonda o valor com base nas casas decimais</li>
        <li>rand() -> Gera um inteiro aleatório</li>
        <li>sqrt($numero) -> Retorna a raiz quadrada</li>
    </ul><hr>

    <?php
    $numero = 12.50;

    echo 'Arrondamento imediato para cima. <br/>';
    echo ceil($numero) . '<br/>';
    echo 'Arrondamento imediato para baixo. <br/>';
    echo floor($numero) . '<br/>';
    echo 'Arrondamento com base nas casas decimais <br/>';
    echo round($numero) . '<br/>';
    echo 'Gera um inteiro aleatório <br/>';
    echo rand() . '<br/>';
    echo 'Retorna a raiz quadrada <br/>';
    echo sqrt($numero) . '<br/>';
    ?>
</body>
</html>