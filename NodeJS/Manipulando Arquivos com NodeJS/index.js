const http = require('http');
const fs = require('fs');
const hostname = '127.0.0.1';
const port = 3000;


/*Criar Arquivos com NodeJS*/ 
fs.writeFile('Node.txt','Teste NodeJS', (err)=>{
    if(err) throw err;
    console.log('Arquivo Criado!')
})

// Cria um novo arquivo ou insere o conteúdo depois do que já existe.

fs.appendFile('node.txt', "\n NodeJS é NodeJS", (err)=>{
    if(err) throw err;
    console.log("O arquivo foi modificado com sucesso!")
})

const server = http.createServer((req,res)=>{

    if(req.url == '/node'){
        fs.readFile('node.html', function(err,data){
            res.writeHead(200,{'Content-Type':'text/html'});
            res.write(data);
            res.end();

        })
    }else{
        fs.readFile('index.html', function(err,data){
            res.writeHead(200,{'Content-Type':'text/html'});
            res.write(data);
            res.end();
        })
    }
})

server.listen(port,hostname,()=>{
    console.log("Servidor inicializado com Sucesso")
})