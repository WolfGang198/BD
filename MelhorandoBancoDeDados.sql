create database cadastro /*cria o banco de dados*/
default character set utf8 
default collate utf8_general_ci; /*definição de caracteres*/

create table pessoas( /*cria tabela pessoas*/
id int NOT NULL auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
) default charset = utf8;