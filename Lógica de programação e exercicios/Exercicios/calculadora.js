
            // Aplicação calculadora Dinâmica.

            //Queremos um número Inicial
            //Queremos um sinal (tipo de operação)
            //Queremos um número final

            var NumeroInicial = prompt('Digite um número');
            var Sinal = prompt("Digite um sinal(+,-,*,/)");

            while(Sinal != '+' && Sinal != '-' && Sinal != '*' && Sinal != '/'){
                alert("O sinal digitado é inválido!")
                Sinal =  promt("Digite um sinal válido (+,-,*,/)")
            }

            var NumeroSecundário = prompt("Digite outro número");

            NumeroInicial = parseInt(NumeroInicial);
            NumeroSecundário = parseInt(NumeroSecundário);

            var Resultado = 0;

            Resultado = parseFloat(Resultado)

            if(Sinal == '+'){
                Resultado = NumeroInicial + NumeroSecundário
            }else if(Sinal == '-'){
                Resultado = NumeroInicial - NumeroSecundário
            }else if(Sinal == '*'){
                Resultado = NumeroInicial * NumeroSecundário
            }else if(Sinal == '/'){
                Resultado = NumeroInicial / NumeroSecundário
            }

            alert("O resultado das somas é: "+Resultado)