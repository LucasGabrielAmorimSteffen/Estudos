# Browsers and how they work.
## Navegadores e como eles funcionam.

### Explicando navegadores de forma simples:

Os navegadores são motores de renderização, basicamente fazem dowload e renderizam um conteúdo na sua tela, conforme requisitado pelo usuário.

### Resolução de DNS.

#### Como funciona uma conexão de DNS?

* Nos casos mais comuns o usuário envia uma requisição de acesso a um servidor DNS com o domínio do site, exemplo www.youtube.com e o servidor DNS retorna para o usuário um endereço de IP para ser enviado ao servidor web.

Exemplos:

Usuário envia ao servidor DNS um HTTP Request com www.youtube.com e o servidor DNS envia um HTTP Response ao usuário com 142.250.217.78, usuário recebe essas informações e envia um HTTP Request ao servidor Web com o endereço de IP 142.250.217.78 e servidor web retorna um HTTP Response com as informações do site já geradas e renderizadas.

### Protocolo TCP (Protocolo de Controle de Transmissão)