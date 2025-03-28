<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>funcoes_nativas_para_string</title>
</head>
<body>
    <h1>Funções Nativas para Manipular Strings</h1><hr>
    <ul>
        <li>strtolower($texto)-> Transforma todos os caracteres em minúsculos.</li>
        <li>strtoupper($TEXTO)-> Transforma todos os caracteres em maiúsculos.</li>
        <li>ucfirst($Texto)-> Transforma o primeiro caracter da string em maiúsculo.</li>
        <li>strlen($texto)->  Conta a quantidade de caracteres de uma string.</li>
        <li>str_replace(< procura por>, < substituido por >, $texto)-> Substitui uma cadeia de caracteres por outra dentro de uma string</li>
        <li>substr($texto, < posicao_inicial>, < qtde caracteres>) -> Retorna parte de uma string</li>        
    </ul><hr>

    <?php
    $texto = 'Curso completo de PHP <br/>';

    echo $texto;
    //String to Lower
    echo strtolower($texto);

    //String to Upper
    echo strtoupper($texto);

    //ucfirst
    echo ucfirst($texto);    

    //strlen
    echo strlen($texto);          

    //str_replace
    echo str_replace('PHP', 'JavaScript', $texto);

    echo substr($texto, 0, 5)
    ?>
</body>
</html>