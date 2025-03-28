<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Treino 1</title>
</head>
<body>
<?php
    $idade = 18;
    $permitido_votar = false;

    if ($idade < 16) {
        $permitido_votar = false;
    } elseif (($idade >= 16 && $idade < 18) || $idade > 70) {
        $permitido_votar = true;
    } else {
        $permitido_votar = true;
    }
?>
<h1>Dados Eleitorais</h1>
<hr>
<h2>Voto Obrigatório? <?= $permitido_votar ? 'Sim ' : 'Não' ?></h2>
</body>
</html>