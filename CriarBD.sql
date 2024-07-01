create database cadastro;/*comando para criar banco de dados*/

create table pessoas(/*comando para criar tabelas*/
	nome varchar(30),
    idade tinyint(3),
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
);

describe pessoas; /*copmando para fornecer a descrição*/