<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>S.U.S da programação</title>
</head>
<body>
    <?php
     $idade = 16;
     $peso  = 50;
    ?>

    <h1>Ficha do doador</h1><hr>
    <h2>Idade: <?= $idade?></h2>
    <h2>Peso: <?= $peso?></h2>
    <h2>Status: 
        <?php
             if(($idade >= 16 && $idade <= 69) && $peso >= 50){
                echo 'Atende aos requisitos';
             }else{
                echo 'Não atende aos requisitos';
             }
        ?>
    </h2>
</body>
</html>