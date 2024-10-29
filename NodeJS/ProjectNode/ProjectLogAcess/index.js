const http = require('http');
const fs = require('fs');
const hostname = '127.0.0.1'
const port = 3000;

const getFormattedDate = () => {
    const now = new Date();
    const daysOfWeek = ['Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado'];
    const dayName = daysOfWeek[now.getDay()];
    const hours = now.getHours().toString().padStart(2, '0');
    const minutes = now.getMinutes().toString().padStart(2, '0');
    const seconds = now.getSeconds().toString().padStart(2, '0');
    const day = now.getDate().toString().padStart(2, '0');
    const month = (now.getMonth() + 1).toString().padStart(2, '0');
    const year = now.getFullYear();
    return `${dayName}, ${day}/${month}/${year} - ${hours}:${minutes}:${seconds}`;
};

    const server = http.createServer(function(req, res) {
    const currentTime = getFormattedDate();
    const userIP = req.socket.remoteAddress || req.connection.remoteAddress;

    if (req.url == '/admin') {

        fs.readFile('admin.html',function(err,data){
           fs.appendFile('Log.txt', `\n[${currentTime}] O Usuário com IP ${userIP} tentou acessar o painel de admin`, function(err) {
             if (err) throw err;
             console.log(`[${currentTime}] LOG GRAVADA COM SUCESSO PARA ACESSO ADMIN! IP: ${userIP}`);
         });
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.write(data);
        res.end();
    })

    } else {
        fs.readFile('index.html', function(err, data) {
            fs.appendFile('Log.txt', `\n[${currentTime}] O Usuário com IP ${userIP} acessou a homepage`, function(err) {
                if (err) throw err;
                console.log(`[${currentTime}] LOG GRAVADA COM SUCESSO PARA ACESSO COMUM! IP: ${userIP}`);
            });
            res.writeHead(200, {'Content-Type': 'text/html'});
            res.write(data);
            res.end();
        });
    }
});

server.listen(port,hostname,function(){
    console.log("Servidor Rodando!")
})