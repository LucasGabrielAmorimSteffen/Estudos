/*Configurações do servidor*/
const http = require('http');
const fs = require('fs');

const hostname = '127.0.0.1';
const port = 3000;


/*Configurações para Requisições e Response
const server = http.createServer((req,res)=>{

    res.statusCode = 200;
    res.setHeader('Content-Type','text/plain');

    res.end("Hello Lucas!")
})


server.listen(port,hostname,()=>{
    console.log("Servidor Inicializado!")
});*/

const server = http.createServer((req,res)=>{

    fs.readFile('index.html',(err,data)=>{
        res.writeHead(200,{'Content-Type':'text/html'});
        res.write(data);
        return res.end();
    })
})


server.listen(port,hostname,()=>{
    console.log("Servidor Inicializado!")
});