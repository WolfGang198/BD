create database cadastro; /*comando para criar um banco de dados de nome "cadastro"*/

create table pessoas(
	nome varchar(30),
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
); /*comando para criar uma tabela de nome "pessoas"*/

describe pessoas; /*comando para descrever*/