<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
    # Tipos de Váriaveis em PHP
    # String, Int, Boolean, array...
    
    # Regras para declaração de variáveis em PHP
    // Deve obrigatoriamente iniciar com o caracter "$"
    // Não pode contar espaços ou caracteres especiais, excete o underline

    # Não requer a definição explicita de tipo.

    # Case Sensitive
    // $nome != $Nome != $NOME

    # Exemplo de variveis validas X Inválidas.
    # Válidas
    // $nome, $fone, $endereco_2
    # Inválidas
    // $ idade, $1fone, $número

    // Praticando variaveis
    // String
    $nome =  'Lucas';
    // int
    $idade = 18;
    //float
    $peso = 114.5;
    // bool
    $fumante_sn = false; // (true = 1) or (false = 0)

    $fumante_st = '';
    // Lógica
    if($fumante_sn === true){
        $fumante_st = 'Sim';
    }else{
        $fumante_st = 'Não';
    }
    ?>

    <h1>Ficha Cadastral</h1>
    <hr>
    <p>Nome: <?= $nome ?></p>
    <p>Idade: <?= $idade ?></p>
    <p>Peso: <?= $peso ?></p>
    <p>Fumante: <?= $fumante_st ?></p>
</body>
</html>