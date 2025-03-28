<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Treino 4</title>
</head>
<body>
    <?php
    $num1 = (float) 22;
    $num2 = (float) 0;
    $operacao = '*';

    if ($operacao == "+") {
        echo "<h1>Resultado: " . ($num1 + $num2) . "\n";
    } elseif ($operacao == "-") {
        echo "<h1>Resultado: " . ($num1 - $num2) . "\n";
    } elseif ($operacao == "*") {
        echo "<h1>Resultado: " . ($num1 * $num2) . "\n";
    } elseif ($operacao == "/") {
        if ($num2 != 0) {
            echo "<h1>Resultado: " . ($num1 / $num2) . "\n";
        } else {
            echo "<h1>Erro: Divisão por zero não permitida.\n";
        }
    } else {
        echo "<h1>Operação inválida!\n";
    }
    ?>
</body>
</html>