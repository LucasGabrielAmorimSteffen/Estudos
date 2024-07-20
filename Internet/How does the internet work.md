# How does the internet work?
# Como a internet Funciona?

### Representação de dados:
 0 = Sem Sinal
 1 = Com Sinal 

 01 } Binary Digits = Bit

 01000001 = 8 Bits/Byte

 01000001 =  Letra "A"

Código MultiByte UTF-8

UTF-8?
### Multiplos de Bits

* 8 Bits = 1 Byte

* 1024 Bytes = 1 MB

* 1024 MB = 1GB

* 1024 GB = 1TB

* 1024 TB = 1PB

* 1024 PB = 1EB

* 1024 EB = 1ZB

* 1024 ZB = 1YB

* "Por quê que o KG é multiplo de 1000g enquanto na tecnologia o KB é multiplo de 1024KB"
* Resposta: A unidade de medida do peso utiliza a tabela 10, enqanto na tecnologia, utilizamos a tabela 2.

MB </> Mb

MB =  MegaBytes que normalmente é utilizado para se referir a Armazenamento.
Mb = MegaBits que normalmente é utilizado para se refererir a Transmissão.

### Como nós se conectamos com a internet?

* Cliente(Usuário) -> Roteador -> Internet

* Cliente entende ondas quadradas.
* Roteador/Internet entende ondas Senoidal e não entende ondas quadradadas.
* Usuário inicia um processo de modulação para transformar a onda quadrada em ondas senoidal.
* Roteador retorna as ondas Senoidal para ondas quadradas através do processo de Demodulação.

### Como chegamos nos servidores?

* Cliente(Usuário) -> roteador -> Internet -> Servidores
* instagram.com | IP Roteador: 201.17.81.22 |                             IP Servidor:3.224.112.47

### O que são servidores DNS?

DNS são Domain Name System onde tornam os domínios em um endereço de IP para possibilitar a utilização da internet

* As comunicações para acessar um site funciona da seguinte maneira

* Cliente(Usuario) digita em seu navegador instagram.com

* Computador envia uma comunicação ao DNS com a solicitação do usuário, onde o DNS retorna com o IP.

* Após o DNS retornar com IP, é enviado uma comunicação com os servidores juntamente ao IP do DNS.

* Servidor retorna para o usuário com o acesso ao site, juntamente com todas as informações(Textos, imagens e etc)