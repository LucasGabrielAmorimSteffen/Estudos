<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Funções nativas para manipular datas</title>
</head>
<body>
    <h1>Funções nativas para manipular datas</h1>
    <ul>
        <li>date(formato) -> Recuperar a data atual.</li>
        <li>date_default_timezone_get(timezone) -> Recuperar o timezone default da aplicação.</li>
        <li>date_default_timezone_set(timezone) -> Atualizar o timezone default da aplicação.</li>
        <li>strtotime(data) -> Transformar datas textuais em segundos.</li>
        <hr>
    </ul>
    <?php
    /*echo date('d/m/y H:i');
    echo '<br/>';
    echo date_default_timezone_get() . '<br/>';

    date_default_timezone_set('America/Cuiaba');
    echo date('d/m/y H:i');
    echo '<br/>';
    echo date_default_timezone_get();*/
    
    $data_inicial = '2025-03-17';
    $data_final   = '2025-03-22';

    $time_inicial = strtotime($data_inicial);
    echo $data_inicial . ' - ' . $time_inicial . '<br/>';
    $time_final   = strtotime($data_final);
    echo $data_final . ' - ' . $time_final . '<br/>';

    $diferenca_times = $time_final - $time_inicial;
    echo 'A diferença de segundos entre as datas é ' . $diferenca_times;


    $segundos_existem_dia = 24 * 60 * 60;
    echo '<br/>';
    echo 'Quantos segundos existem em um dia: ' .$segundos_existem_dia;
    $diferenca_de_dias_entre_as_datas = $diferenca_times / $segundos_existem_dia;
    echo '<br/>';
    echo "O intervalo entre $data_inicial e $data_final é de: " . $diferenca_de_dias_entre_as_datas . " dias."
    ?>
</body>
</html>