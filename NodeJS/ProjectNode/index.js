const http = require('http');
const fs = require('fs');
const { getHeapCodeStatistics } = require('v8');

const hostname = '127.0.0.1';
const port = 666;

// Criar novo arquivo
fs.writeFile('NodeJs.txt', 'Teste Curso', function(err){
    if(err) throw err;
    console.log('O arquivo foi criado.')
})

// Cria novo arquivo ou insere conteúdo depois do que já existe.

fs.appendFile('NodeJs.txt', '\nOutros erros', (err)=>{
    if(err) throw err;
    console.log("Salvo novamento com sucesso")
})

const server = http.createServer((req,res)=>{
    if(req.url == '/index'){

        fs.readFile('index.html', function(err,data){
            res.writeHead(200,{'Content-Type':'text/html'});
            res.write(data);
            return res.end();
        })
    }else{
        //return res.end();
    }
})

server.listen(port,hostname,()=>{
    console.log("O servidor foi inicializado!")
})