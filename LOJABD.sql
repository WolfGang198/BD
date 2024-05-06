create database LOJABD
default character set utf8
default collate utf8_general_ci;

create table CLIENTE(
codigo int NOT NULL auto_increment,
nome varchar(30) NOT NULL,
estado varchar(30) NOT NULL,
cidade varchar(30) NOT NULL,
telefone int(15) NOT NULL,
primary key(codigo)
) default charset = utf8;

create table PRODUTO(
id int NOT NULL auto_increment,
nome varchar(30) NOT NULL,
valor decimal(7,2) NOT NULL,
quantidade int NOT NULL,
primary key(id)
) default charset = utf8;

create table COMPRA(
numero int NOT NULL auto_increment,
dataCompra date NOT NULL,
quantidadeCompra int NOT NULL,
valorCompra decimal(7,2),
codCliente int NOT NULL,
idProduto int NOT NULL,
primary key(numero),
foreign key(codCliente) references CLIENTE(codigo),
foreign key(idProduto) references PRODUTO(id)
) default charset = utf8;

insert into CLIENTE
(codigo, nome, estado, cidade, telefone) 
values
(default, 'Fagner', 'SP', 'P. Prudente', 997989491),
(default, 'Maria', 'SP', 'Campinas', 997989493),
(default, 'Marcelo', 'RJ', 'Angra dos Reis', 997989492),
(default, 'Caio', 'SP', 'Assis', 997989495),
(default, 'Marcos', 'SP', 'Campos do Jordão', 997989498),
(default, 'Penelope', 'MG', 'Itajuba', 997989494),
(default, 'Rian', 'SP', 'Santos', 997989490);

insert into PRODUTO
(id, nome, valor, quantidade)
values
(default, 'mouse', 200, 30),
(default, 'teclado', 250, 15),
(default, 'notebook', 3500, 10),
(default, 'fone de ouvido', 150, 25);

insert into COMPRA
(numero, dataCompra, codCliente, idProduto, quantidadeCompra, valorCompra)
values
(default, current_date(), 1, 4, 1, 150),
(default, current_date() + 2, 2, 2, 2, 500),
(default, current_date() + 3, 3, 1, 2, 400),
(default, current_date() + 1, 4, 3, 1, 3500),
(default, current_date() -2, 5, 1, 2, 400),
(default, current_date() -5, 6, 3, 1, 3500),
(default, current_date() -3, 5, 2, 1, 250),
(default, current_date() -1, 4, 4, 2, 300),
(default, current_date(), 3, 4, 3, 450),
(default, current_date() +1, 2, 2, 4, 1000);


select * from Cliente;

select * from PRODUTO;

select * from compra;

select compra.numero, cliente.nome, compra.valorCompra, produto.nome
from compra
inner join cliente on compra.codCliente = cliente.codigo
inner join produto on compra.idProduto = produto.id;

select cliente.nome, compra.numero
from cliente
inner join compra on cliente.codigo = compra.codCliente;

select cliente.nome, cliente.telefone
from cliente
inner join compra on cliente.codigo = compra.codCliente;




 

