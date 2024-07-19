
            var AnoNascimento = prompt("Por favor, informe o ano do seu nascimento");

            while(AnoNascimento >= 2024){
                alert("Por favor, insira seu ano de nascimento corretamente")
                AnoNascimento = prompt("Por favor, informe o ano do seu nascimento"); 
            }

            var AnoAtual = prompt("Digite o ano atual:");

            var IdadeFinal = AnoAtual - AnoNascimento;

            alert('A sua idade é: '+IdadeFinal)
