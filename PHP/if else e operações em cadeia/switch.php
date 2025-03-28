<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Switch</title>
</head>
<body>
    <?php
    $numero = '2';
    
    switch ($numero) {
        case 1:
            echo 'Entrou no case 1';
            break;

        case 2:
            echo 'Entrou no case 2';
            break;
        
        case 3:
            echo 'Entrou no case 3';
            break;

        default:
            echo 'Caiu no Default';
            break;
    }
    ?>
</body>
</html>