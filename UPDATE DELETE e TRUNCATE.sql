select * from gafanhotos;

select * from cursos;

insert into cursos values
('1', 'HTML', 'curso de HTML', '40', '37', '2014'),
('2', 'Algoritmos', 'logica de programação', '20', '15', '2014'),
('3', 'Photoshop', 'dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'introdução a linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'banco de dados MySQL', '30', '15', '2016'),
('7', 'Word', 'curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'dança ritmica', '40', '30', '2018'),
('9', 'Cozinha arabe', 'aprenda a fazer kibe', '40', '30', '2018'),
('10', 'Youtuber', 'gerar polemica e ganhar inscritos', '5', '2', '2018');

select * from cursos;

update cursos /*modifica uma linha...*/
set nome = 'HTML5'/*oque sera modificado...*/
where idcurso = '1';/*onde sera modificado...*/

select * from cursos;

update cursos /*modifica uma linha...*/
set nome = 'PHP', ano = '2015'/*oque sera modificado...*/
where idcurso = '4';/*onde sera modificado...*/

select * from cursos;

update cursos /*modifica uma linha...*/
set nome = 'Java', ano = '2015', carga = '40'/*oque sera modificado...*/
where idcurso = '5'/*onde sera modificado...*/
limit 1;/*limita a quantidade de linhas afetadas pelo codigo...*/

select * from cursos;

delete from cursos /*comando para apagra linhas...*/
where idcurso = '8';/*onde sera apagado...*/

select * from cursos;

delete from cursos /*comando para apagra linhas...*/
where ano = '2018'/*onde sera apagado...*/
limit 2;/*limita a quantidade de linhas afetadas pelo codigo...*/

select * from cursos;

truncate table cursos;/*apaga todas aslinhas de uma tabela...*/
/*não preciso nem dizer que isso é perigoso pra krl né...*/
