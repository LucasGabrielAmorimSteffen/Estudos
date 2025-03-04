# Planejamento de Estudos JavaScript

## Declaração de variaveis
* var<br>
A declaração <b>var</b> declara variáveis ​​com escopo de função ou com escopo global, opcionalmente inicializando cada uma com um valor.
* let<br>
A declaração <b>let</b> declara variáveis ​​locais reatribuíveis com escopo de bloco, opcionalmente inicializando cada uma com um valor.
* const<br>
A declaração <b>const</b> declara variáveis ​​locais com escopo de bloco. O valor de uma constante não pode ser alterado por meio de reatribuição usando o operador de atribuição, mas se uma constante for um objeto, suas propriedades poderão ser adicionadas, atualizadas ou removidas.

## Regra para nomeação de variaveis
* Os nomes das variáveis ​​devem começar com uma letra, um sublinhado ( _) ou um cifrão ( $).<br>
<br>
* Nomes de variáveis ​​não podem conter espaços.<br>
<br>
* As variáveis ​​não podem ser iguais às palavras-chave reservadas, como ifou const.<br>
<br>
* Por convenção, nomes de variáveis ​​JavaScript são escritos em camelCase.<br>
<br>
* As variáveis ​​devem receber nomes descritivos que indiquem seu conteúdo e uso (por exemplo, sellingPriceand costPriceem vez de xand y).<br>
<br>
* Como as variáveis ​​JavaScript não têm tipos definidos, pode ser útil incluir uma indicação do tipo no nome (por exemplo, orderNumberé obviamente um ID numérico, enquanto orderpoderia ser um objeto, uma string ou qualquer outra coisa). <br>
<br>

## Variable Scopes (Escopos Variáveis)

### JavaScript Scope

### Block Scope

* Antes do ES6 (2015), as variáveis ​​JavaScript tinham apenas Escopo Global e Escopo de Função.ES6 introduziu duas novas palavras-chave JavaScript importantes: let e const.Essas duas palavras-chave fornecem Block Scope em JavaScript.
Variáveis ​​declaradas dentro de um bloco { } não podem ser acessadas de fora do bloco:

* Exemplo:
 ```json
  {
    let x = 2;
  }
 ```
 
* Variáveis ​​declaradas com a palavra-chave var NÃO podem ter escopo de bloco.
 * Exemplo:
 ```json
  {
    var x = 2;
  }
  ```

### Local Scope

* Variáveis ​​declaradas dentro de uma função JavaScript são LOCAIS para a função:
  ```json
  function myFunction(){
    let carName= "BMW"
  }
  ```
* Variáveis ​​locais têm escopo de função. Eles só podem ser acessados ​​de dentro da função.

### Function Scope

* JavaScript tem escopo de função: cada função cria um novo escopo. Variáveis ​​definidas dentro de uma função não são acessíveis (visíveis) de fora da função. Variáveis ​​declaradas com var, let e const são bastante semelhantes quando declaradas dentro de uma função.
* Todos eles têm escopo de função:
  ```json
  function myFunction(){
    var carName = "BMW";
  }
  ```
    ```json
  function myFunction(){
    let carName = "BMW";
  }
  ```
    ```json
  function myFunction(){
    const carName = "BMW";
  }
  ```

### Global Scope
* Variáveis ​​declaradas Globalmente (fora de qualquer função) possuem Escopo Global.
Variáveis ​​globais podem ser acessadas de qualquer lugar em um programa JavaScript. Variáveis ​​declaradas com var, let e const são bastante semelhantes quando declaradas fora de um bloco.

* Todos eles têm escopo global:
 ```json

    var carName = "BMW"; // Global scope

    let carName = "BMW"; // Global scope

    const carName = "BMW"; // Global scope
  ```

## Data Types

1. String:
   * Representa uma sequência de caracteres.<br>
  let nome = "Lucas"

2. Number:
   * Representa números, tanto inteiros quanto de ponto flutuantes<br>
  let idade = 25;<br>
  let temperatura = 36.6

3. Boolean:
   * Representa um valor lógico: true ou false<br>
  let ativo = true

4. undefined:
   * Indica que uma variável foi declarada, mas ainda não possui valor atribuído.<br>
let x;<br>
console.log(x); // undefined

5. bigint:
   * Usado para representar números inteiros muito grandes.<br>
   let numeroGrande = 123456789012345678901234567890n;

6. null>
   * Representa a ausência intencional de um valor.<br>
   let vazio = null;
7. Symbol:
   * Usado para criar identificadores únicos.<br>
   let id = Symbol("id_unico");

## Typeof Operator

### Uma expressão que representa o objeto ou primitivo cujo tipo deve ser retornado.
1. undefined = "undefined"
2. Null      =
3. Boolean   = "Boolean"
4. Number    = "Number"
5. BigInt    = "BigInt"
6. String    = "String"
7. Symbol    = "Symbol"

* Exemplo:
  ``` js
  console.log(typeof 42);
  // Output esperado: "number"

    console.log(typeof "Lucas");
  // Output esperado: "String"

    console.log(typeof true);
  // Output esperado: "Boolean"

    console.log(typeof undeclaredVariable);
  // Output esperado: "undefined"
  ```
## Object
### Built-in Objects

* Os Built-in Objects (Objetos embutidos) no JavaScript são objetos nativos que fornecem funcionalidades essenciais para manipulação de dados, estruturação de código e interações com o ambiente de execução. Eles são divididos em algumas categorias principais:

### 1. Objetos Fundamentais
Esses objetos oferecem funcionalidades básicas para manipulação de valores:

- **`Object`**: Base de todos os objetos no JavaScript.
- **`Function`**: Representa funções no JavaScript.
- **`Boolean`**: Envolve um valor booleano (`true` ou `false`).
- **`Symbol`**: Representa um identificador único e imutável.

### 2. Objetos para Manipulação de Texto e Números
São usados para lidar com strings, números e operações matemáticas:

- **`String`**: Manipula cadeias de caracteres.
- **`Number`**: Representa valores numéricos.
- **`BigInt`**: Trabalha com números inteiros maiores que `Number.MAX_SAFE_INTEGER`.
- **`Math`**: Fornece funções matemáticas e constantes.
- **`Date`**: Manipula datas e horas.

### 3. Objetos para Manipulação de Estruturas de Dados
Facilitam o armazenamento e manipulação de coleções de dados:

- **`Array`**: Estrutura de dados indexada.
- **`Set`**: Conjunto de valores únicos.
- **`Map`**: Estrutura de chave-valor com qualquer tipo de chave.
- **`WeakSet`** e **`WeakMap`**: Versões fracas de `Set` e `Map`, permitindo a coleta de lixo.

### 4. Objetos para Trabalhar com Estruturas JSON e Buffer
Usados para manipulação de dados estruturados:

- **`JSON`**: Permite conversão entre objetos JavaScript e strings JSON.
- **`ArrayBuffer`** e **`TypedArray`**: Trabalham com dados binários.

### 5. Objetos para Manipulação de Erros
Tratam erros no JavaScript:

- **`Error`**: Objeto base para erros.
- **`TypeError`**, **`ReferenceError`**, **`SyntaxError`**, etc.: Erros específicos.

### 6. Objetos para Interação com o Ambiente
Fornecem funcionalidades do ambiente de execução:

- **`Console`**: Exibe mensagens no console do navegador ou terminal.
- **`Promise`**: Representa operações assíncronas.
- **`RegExp`**: Manipula expressões regulares.

### Exemplo Prático
```js
// Trabalhando com objetos embutidos no JavaScript

// Manipulando Strings
const texto = "JavaScript";
console.log(texto.toUpperCase()); // "JAVASCRIPT"

// Trabalhando com Arrays
const numeros = [1, 2, 3, 4];
console.log(numeros.map(n => n * 2)); // [2, 4, 6, 8]

// Utilizando Math
console.log(Math.max(10, 20, 30)); // 30

// Manipulando Datas
const hoje = new Date();
console.log(hoje.toDateString()); // Exibe a data formatada

// Trabalhando com Promises
const promessa = new Promise((resolve) => setTimeout(() => resolve("Concluído"), 1000));
promessa.then(console.log); // "Concluído" após 1 segundo