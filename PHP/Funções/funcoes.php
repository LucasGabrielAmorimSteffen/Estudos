<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Funções</title>
</head>
<body>
    <h1>Funções</h1><hr>
    <h2>Encapsular um bloco de códigos com um objetivo definido</h2>
    <p style="font-size: 25px;">
                  function exibirBoasVindas(){<br/>
                echo "Bem vindos ao curso de PHP"<br/>
            }</p>
    <hr>
    <p style="font-size: 25px;"> 
        function calcularAreaTerreno($largura, $comprimento){<br/>
            $area = $largura * $comprimento;<br/>

            return $area;<br/>
        }
    </p><hr>

    <?php
    // void (Função que não tem um retorno!)
    function exibirBoasVindas (){ 
        echo "Bem Vindos ao curso de PHP <br/>";
    };
    exibirBoasVindas();

    //return (Função com retorno);
    function calcularAreaTerreno($largura, $comprimento){
        $area = $largura * $comprimento;
        return $area;
    }

    echo calcularAreaTerreno(5, 25);    
    
    ?>
</body>
</html>