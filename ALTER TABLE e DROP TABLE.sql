desc gafanhotos;/*comando para descrever algo...*/

alter table pessoas /*comando para alterar dados de uma tabela...*/
add column profissao varchar(10);/*comando para adicionar uma coluna...*/

select * from pessoas;

alter table pessoas /*comando para alterar dados de uma tabela...*/
drop column profissao;/*comando para deletar uma coluna...*/

alter table pessoas /*comando para alterar dados de uma tabela...*/
add column profissao varchar(10) after /* ou first*/ nome;/*comando para adicionar uma coluna na possição desejada...*/

alter table pessoas /*comando para alterar dados de uma tabela...*/
modify column profissao varchar(20) not null default '';/*comando para modificar uma coluna uma coluna(no caso mudou de 10 para 20 e não pode ser nulo)...*/

alter table pessoas /*comando para alterar dados de uma tabela...*/
modify column profissao varchar(20) not null default ''; /*comando para varchar de 10 para 20 caracteres...*/

alter table pessoas /*comando para alterar dados de uma tabela...*/
change column profissao prof varchar(20) not null default ''; /*comando usado para mudar o nome da coluna...*/

alter table pessoas /*comando para alterar dados de uma tabela...*/
rename to gafanhotos; /*comando para renomear a tabela...*/



create table if not exists cursos(/*comando para criar uma tabela caso ela não exista...*/
	nome varchar(30) not null unique,/*unique não deixara que existam duas coisas com o mesmo nome...*/
    descricao text,
    carga int unsigned,
    totaulas int,
    ano year default '2024'
)default charset = utf8;

desc cursos;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso);/*adicionar a chave primaria a uma coluna existente...*/

create table if not exists test(
id int,
nome varchar(10),
idade int
);

insert into test values
('1', 'Pedro', '18'),
('2', 'Alex', '17'),
('3', 'Elena', '22');

select * from test;

drop table if exists test;/*comando que apaga a tabela e todos os seus dados...*/