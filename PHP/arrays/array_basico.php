<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Array's Básico</title>
</head>
<body>
    <?php
    // Sequênciais (Numéricos).
    /*
    $lista_frutas = array('Banana', 'Maça', 'Morango', 'Uva');

    $lista_frutas[] = 'Abacaxi';
    /*
    echo '<pre>';
    var_dump($lista_frutas);
    echo '</pre>';
    echo '<hr/>';
    echo '<pre>';
    print_r($lista_frutas);
    echo '</pre>';

    echo $lista_frutas[1];*/


    // Associativos

    $lista_frutas = array('a' => 'Banana', 
                          'b' => 'Maça', 
                          'c' => 'Morango', 
                          'd' => 'Uva');
    echo '<pre>';
    var_dump($lista_frutas);
    echo '<hr>';
    print_r($lista_frutas)
    ?>
</body>
</html>
