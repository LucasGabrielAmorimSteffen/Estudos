<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Treino 5</title>
</head>
<body>
    <?php
    $nota = 1;

    if($nota >= 9 && $nota <= 10){
        echo "<h1>Conceito A \n";
    }elseif($nota >= 7){
        echo "<h1>Conceito B \n";
    }elseif($nota >= 5){
        echo "<h1>Conceito C\n";
    }elseif($nota >= 3){
        echo "<h1>Conceito D\n";
    }else{
        echo "<h1>Conceito F\n";
    }
    ?>    
</body>
</html>