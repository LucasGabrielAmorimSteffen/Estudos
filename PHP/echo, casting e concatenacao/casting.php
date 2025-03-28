<!DOCTYPE html>
<html lang="pt-br   ">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Casting</title>
</head>
<body>
    <?php
    $nome  = 'Lucas';
    $idade = 18;

    $idade6 = (float) $idade;

    echo $idade .' '. gettype($idade);
    echo '<br/>';
    echo $idade6 .' '. gettype($idade6);
    ?>
</body>
</html>