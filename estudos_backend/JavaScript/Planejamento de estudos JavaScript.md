# Planejamento dos estudos em JavaScript

## Introdução ao Java Script

  ### O que é JavaScript?

* JavaScript é uma linguagem de programação de alto nível, criado em 1996 pelo programador Brandon Eich.
* JavaScript não é Java.
* JavaScript é utilizado para desenvolver aplicações, sistemas e serviçõs de alta complexidade.

  ### As Vantagens do JavaScript

* É mais fácil de aprender.

* Você não precisa de um compilador.

* Executa comportamentos específicos em uma página.

  ### As Desvantagens do Java Script

* É vunerável a brachas de seguranças;
* Pode ser usada para executar programas maliciosos

### O que é possível fazer com JavaScript?

* O JavaScript foi criado inicialmente com foco em trabalhar ao lado do desenvolvedor, porém a Google desenvolveu o Engine V8.

### Node.js: O JavaScript no Backend

* Graças ao Engine V8 que surgiu o node.js que permitiu utilizar o JavaScript no backend.

## História do JavaScript

* JavaScript foi criado por um programador chamado Brendan Eich em 1985

* JavaScript VS Java:
* JavaScript não tem uma relação direta com a linguagem de programação Java, o nome foi dado devido a uma jogada de marketing, por conta da linguagem Java ser uma das mais populares na epóca.Enquanto o Java era muito utilizado no desenvolvimento Desktop, enquanto o JavaScript estaria surgindo para o desenvolvimento mobile.

* Nos anos 2000 a web começou a se tornar em um espaço colaborativo e interativo, o JavaScript desempenhou um papel fundamental nessa transformação com a técnica Ajax(Asynchronous JavaScript And XML), permitiu que os navegadores carregassem e exibissem dados sem a necessidade de carregar a página inteira e isso impulsionou o desenvolvimento de aplicativos web mais responsivos e dinâmicos com a ascensão dos FrameWorks.
* Conforme a evolução do desenvolvimento Web surgiu a necessidade de ferramentas que facilitassem o desenvolvimento, assim entrou em cena os frameworks do JavaScript como Angular, Vue e React.

## Versões do JavaScript

* ES1 (ECMAScript 1) - 1997: Foi a versão inicial padronizada do JavaScript. Ela estabeleceu os fundamentos da linguagem, como objetos, funções e estruturas de controle.
* ES3 (ECMAScript 3) - 1999: Esta versão trouxe melhorias significativas, como suporte a expressões regulares, tratamento de exceções com try/catch, e métodos adicionais para manipular strings e arrays.
* ES5 (ECMAScript 5) - 2009: Marcou um grande avanço com novos recursos como métodos de arrays (como map e filter), modo estrito (strict mode) para evitar erros comuns, e suporte nativo para JSON.
* ES6/ES2015 (ECMAScript 2015): Foi uma atualização muito aguardada, introduzindo classes, arrow functions, novas maneiras de declarar variáveis com let e const, templates literais, e promessas para lidar com operações assíncronas de forma mais limpa.
* ES2016 (ES7), ES2017 (ES8), ES2018 (ES9): Essas versões trouxeram pequenas melhorias como operadores de exponenciação, async/await para simplificar o código assíncrono, e novos métodos para manipular strings e arrays.
* ES2019 (ES10), ES2020 (ES11), ES2021 (ES12): Continuaram melhorando a linguagem com recursos como operadores de coalescência nula (nullish coalescing), BigInt para números grandes, e métodos adicionais para manipular promessas e strings.
* ES2022 (ES13): A versão mais recente trouxe recursos como Array.prototype.groupBy para agrupamento de arrays, melhorias em métodos de temporização como setTimeout, e outras pequenas adições para tornar o JavaScript mais poderoso e fácil de usar.

## Como executar JavaScript?

* Instalar Node.js através do site Nodejs.org

* Instalar a extensão no Vscode chamada Code runner.


## Tudo sobre variáveis

##### VAR:
* var é a maneira de declaração de variável global(se for declarada fora de qualquer função).
##### LET: 
* let é a maneira de declaração de variável dentro de um escopo, se for declarado como let, só vai ser acessível dentro do blcoo onde foi declarada.
##### CONST:
* const é a meneira de declaração de variável constante cujo valor não pode ser alterado após a atribuição inicial(Ela também tem escopo de bloco.).
##### Declaração de Variáveis.
* var idade = 30;
* let nome = "Lucas";
* const PI = 3.14;
##### Hoisting
* É um comportamento em JavaScript onde declarações de variáveis e funções são movidas para o topo de seus escopos durante a fase de compilação, permitindo que sejam utilizadas antes de serem declaradas explicitamente no código.

* Exemplo:<br>
console.log(nome); // undefined <br> 
var nome = "Lucas";

##### Regras de nomes variáveis
* Começo: Deve começar com uma letra (a a z ou A a Z), cifrão ($) ou sublinhado (_) Não pode começar com números..

* Caracteres subsequentes: Podem conter letras, números, cifrões ou sublinhados.

* Espaços: Não são permitidos.

* Case-sensitive: Diferencia maiúsculas de minúsculas (ex: nome é diferente de Nome).


##### Variable Scopes
* Global: Variáveis declaradas fora de qualquer função ou bloco são globais e podem ser acessadas de qualquer lugar no código.

* Function: Variáveis declaradas dentro de uma função são locais àquela função e não são acessíveis fora dela, a menos que sejam retornadas ou usadas em closures.

* Block: Variáveis declaradas com let ou const têm escopo de bloco, ou seja, são acessíveis apenas dentro do bloco onde foram declaradas (um par de chaves {}).

##### Block Scope: Variáveis declaradas com let e const têm escopo restrito ao bloco em que são definidas.

##### Function Scope: Variáveis declaradas com var têm escopo dentro da função onde são declaradas.

##### Global Scope: Variáveis declaradas fora de qualquer função têm escopo global e são acessíveis em todo o código

