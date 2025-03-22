<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Operadores de Aritiméticas na Atribuição</title>
</head>
<body>
    <?php 
    $x = 20;
    $y = 15;

    echo "A soma entre $x e $y é: " .  $x += $y;
    echo '<br/>';
    echo "A subtração entre $x e $y é: " . $x -= $y;
    echo '<br/>';
    echo "A multiplicação entre $x e $y é: " . $x *= $y;
    echo '<br/>';
    echo "A divisão entre $x e $y é: " . $x /= $y;
    echo '<br/>';
    echo "O Módulo entre $x e $y é: " . $x %= $y;
    echo '<br/>';
    ?>
</body>
</html>