# XAMPP

## Principais comandos do MySQL.

* mysql = para acessar ao MySQL pelo XAMPP.

### Criar a base de dados:

* CREATE DATABASE CURSO_BANCO_DE_DADOS;

## Selecionar qual base de dados vai utilizar:

* SHOW DATABASES; - Mostrar as bases de dados
* USE CURSO_BANCO_DE_DADOS; - Selecionar qual vai ser usada

### Criar as tabelas:

* CREATE TABLE `TVENPEDIDO` (`COD_PEDIDO` INT NOT NULL AUTO_INCREMENT, `VALOR` INT NOT NULL, PRIMARY KEY(`COD_PEDIDO`)) ENGINE=InnoDB;

* CREATE TABLE `TRECCLIENTEGERAL` (`COD_CLIENTE` INT NOT NULL AUTO_INCREMENT, `NOME` VARCHAR(255) NOT NULL, `CPF/CNPJ` INT NOT NULL, `ENDERECO` VARCHAR(255) NOT NULL, PRIMARY KEY (`COD_CLIENTE`) )ENGINE=InnoDB;

* SHOW TABLES; - Mostrar as tabelas

### Ver as colunas das tabelas:

* SHOW COLUMNS FROM TVENPEDIDO; - Mostrar as colunas da tabela.

### Inserir informações nas tabelas:

* INSERT INTO `tvenpedido` VALUES (null, "1700");

INSERT INTO `trecclientegeral` VALUES(null, "Lucas Gabriel Amorim Steffe", "000.000.000-99", "Rua das Seringueiras 000");

### Update

* UPDATE `trecclientegeral` SET ENDERECO = 'Acacias' WHERE nome = 'Lucas Gabriel Amorim Steffen';

### Delete

* delete from trecclientegeral where NOME = 'Pedro';

### Order.

* Order By 3 (seria a 3 coluna de uma tabela.)

### Group By

* Select * from trecclientegeral group by id

## Joins

### Inner Join:

