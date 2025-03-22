<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Operadores de Incremento/Descremento</title>
</head>
<body>
    <h1>Operadores de Incremento/Descremento</h1>
    <h2>O que são operadores de Incremento/Descremento?</h2>
    <h3>Operadores</h3>
    <ul>
        <li>Pré-Incremento (++$a) - Adiciona uma unidade antes de retornar $a.</li>
        <li>Pós-Incremento ($a++) - Retorna $a e depois adiciona uma unidade.</li>
        <li>Pré-Incremento (--$a) - Diminui uma unidade antes de retornar $a</li>
        <li>Pós-Incremento ($a--) - Retorna $a e depois diminui uma unidade</li>
    </ul><hr>
    <h3>Pós Incrementos</h3><hr>
    <?php 
    $a = 7;

    echo 'O valor contido em a após o incremento é ' . $a++ . '<br/>';
    echo "O valor atualizado é $a";
    ?>

    
</body>
</html>