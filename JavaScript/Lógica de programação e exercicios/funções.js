
            function testes (){
                // executado quando chamar a função.
                console.log("Chamando a função")
            }
            function testes2(nome, idade){
                console.log("O nome passado é: "+nome);
                console.log("A idade é: "+idade);
                console.log("-------------------------------")
            }

        function PegarNome(par){
            if(par == 1){
                return "Lucas";
            }else{
                return "Outro nome"
            }
        }

        var nome = PegarNome(2);

        console.log(nome)