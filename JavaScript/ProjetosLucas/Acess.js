
//Declaração das váriaveis globais e while para certificar que não seria digitado nenhum valor inválido!
var DiaNascimento = prompt("Que dia você nasceu?")
while (DiaNascimento > 31) {
    alert("Dia de nascimento inválido!")
    DiaNascimento = prompt("Digite um dia de nascimento válido!")
}

var MesNascimento = prompt("Que mês você nasceu? (digitar em números)")
while (MesNascimento > 12) {
    alert("Mês de nascimento inválido!")
    MesNascimento = prompt("Que mês você nasceu? (digitar em números)")
}

var AnoNascimento = prompt("Que ano você nasceu?")
while (AnoNascimento > 2024) {
    alert("Ano de nascimento inválido!")
    AnoNascimento = prompt("Que ano você nasceu?")
}

//Jogar os valores no console para melhor analise 
console.log(DiaNascimento)
console.log(MesNascimento)
console.log(AnoNascimento)


//Verifica o mês de nascimento do usuário
if (MesNascimento == 1) {
    console.log("O usuário nasceu em Janeiro")
    StringMesNascimento = "Janeiro"
} else if (MesNascimento == 2) {
    console.log("O usuário nasceu em Fevereiro")
    StringMesNascimento = "Fevereiro"
} else if (MesNascimento == 3) {
    console.log("O usuário nasceu em Março")
    StringMesNascimento = "Março"
} else if (MesNascimento == 4) {
    console.log("O usuário nasceu em Abril")
    StringMesNascimento = "Abril"
} else if (MesNascimento == 5) {
    console.log("O usuário nasceu em Maio")
    StringMesNascimento = "Maio"
} else if (MesNascimento == 6) {
    console.log("O usuário nasceu em Junho")
    StringMesNascimento = "Junho"
} else if (MesNascimento == 7) {
    console.log("O usuário nasceu em Julho")
    StringMesNascimento = "Julho"
} else if (MesNascimento == 8) {
    console.log("O usuário nasceu em Agosto")
    StringMesNascimento = "Agosto"
} else if (MesNascimento == 9) {
    console.log("O usuário nasceu em Setembro")
    StringMesNascimento = "Setembro"
} else if (MesNascimento == 10) {
    console.log("O usuário nasceu em Outubro")
    StringMesNascimento = "Outubro"
} else if (MesNascimento == 11) {
    console.log("O usuário nasceu em Novembro")
    StringMesNascimento = "Novembro"
} else if (MesNascimento == 12) {
    console.log("O usuário nasceu em Dezembro")
    StringMesNascimento = "Dezembro"
}

alert("Você nasceu dia " + DiaNascimento + " de " + StringMesNascimento + " de " + AnoNascimento)
var date = new Date();
console.log(date.getFullYear)
var idade = 0;
idade = (date.getFullYear() - AnoNascimento)
alert("Você tem "+idade+' Anos')