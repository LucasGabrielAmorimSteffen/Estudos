/*const http = require('http');
const fs = require('fs');
const read = require('readline');

const hostname = "127.0.0.1"
const port = 3000

// Criando Arquivos usando NodeJS
fs.writeFile('danki.txt', 'teste Danki Code', (err)=>{
    if(err) throw err;
    console.log("O arquivo foi criado!")
})

// Cria novo arquivo ou atualiza
fs.appendFile('danki.txt', "\nOutro Conteúdo Teste",(err)=>{
    if(err) throw err;
    console.log('Arquivo atualizado!')
})

// Função para deletar Arquivos;
fs.unlink('dankic.txt', function(err){
    console.log('Arquivo deletado')
})

// Função para renomear arquivos
fs.rename('dankicode.txt', 'danki.txt', function(err){
    console.log('Arquivo foi renomeado')
})

// Função para manipular dados de um arquivo
fs.readFile('danki.txt', function(err, data){
    let str = data.toString()

    // let newStr = str.split('/'); // Cria um array com os nomes da danki.txt
    // let newStr = str.substr(0,3); // funciona parecido com Copy do SQL, pega da posição 0 e vai até a 3

    // console.log(newStr)
})

// Criando Server Web com NodeJS
const server = http.createServer((req, res)=>{
    if(req.url == '/danki'){
        fs.readFile('index.html', (err, data)=>{
            res.writeHead(200, { 'content-type':'text/html'});
            res.write(data);
            return res.end();
        })
    }else{
        return res.end();
    }
})

server.listen(port, hostname, ()=>{
    console.log("Servidor rodando!")
})*/


// ---------------------------------------------------------------------------------------------------------

const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Qual o seu nome?!', function(name){
    console.log('O nome do usuário é: '+name);
})

rl.on('close', ()=>{
    console.log('Adeus!');
    process.exit(0)
})