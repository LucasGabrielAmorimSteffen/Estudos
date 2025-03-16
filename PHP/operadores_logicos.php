<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Operadores Lógicos</title>
</head>
<body>
    <h1>Operadores Lógicos</h1>
    <p>Servem para conectar operações de comparação criando condições mais complexas de decisão.</p>
    <ul>
        <li>Operador E: (AND ou &&) - Verdadeiro <b>se todas</b> as expressões forem <b>verdadeiras.</b></li><hr>
        <li>Operador OU (OR ou || ) - Verdadeiro <b>se pelo menos uma</b> das expressões forem <b>verdadeiras.</b></li><hr>
        <li>Operador Xor(XOR)       - Verdadeiro apenas <b>se uma das expressões</b> for verdadeira, mas <b> não ambas</b></li><hr>
        <li>Operador Negação (!)    - <b>Inverte</b> o resultado da expressão</li>
    </ul>
    <hr>

    <?php 
    if(!('a' == 'a')){
        echo 'Verdadeiro';
    }else{
        echo 'Falso';
    }
    ?>
</body>
</html>