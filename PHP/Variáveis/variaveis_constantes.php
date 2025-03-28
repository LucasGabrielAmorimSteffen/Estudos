<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>variaveis_constantes</title>
</head>
<body>
    <?php
     define('DB_URL', 'endereco_db_dev');
     define('DB_USUARIO', 'usuario_dev');
     define('DB_SENHA', 'senha_dev');

     echo DB_URL . '<hr/>';
     echo DB_USUARIO . '<hr/>';
     echo DB_SENHA . '<hr/>'
    ?>
</body>
</html>