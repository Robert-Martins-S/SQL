create database bd_livro_qui_manha

use bd_livro_qui_manha

create table tb_genero
(cd_genero int not null primary key,
genero char(30)
)

create table tb_editora
(cd_editora int not null primary key,
editora char(30)
)

create table tb_livro
(isbn int not null primary key,
titulo char(50),
cd_editora int,
cd_genero int,
dt_livro date,
preco decimal(12,2)
)

alter table tb_livro
add constraint fk_genero foreign key (cd_genero)
references tb_genero (cd_genero)

alter table tb_livro
add constraint fk_editora foreign key (cd_editora)
references tb_editora (cd_editora)

-- Cria o atributo nota como inteiro na tabela tb_livro 
alter table tb_livro
add nota int

-- Altera o atributo da tabela tb_livro de int para char
alter table tb_livro
alter column nota char(20)

-- Deleta o atributo nota da tabela tb_livro
alter table tb_livro
drop column nota

-- Cria a tabela tb_teste com 2 atributos dentro, a chave primária cd_teste e o atributo teste como um char de 10 caracteres 
create table tb_teste
(cd_teste int not null primary key,
teste char(10)
)

-- Deleta a tabela tb_teste
--drop table tb_teste

-- Insere valores dentro da tabela livro(É necessário preencher a tabela editora e genero antes)
insert into tb_livro 
(isbn, titulo, cd_editora, cd_genero, dt_livro, preco)
values
(1,'banco de dados', 1,1, '2019-08-10', 100)

insert into tb_editora
(cd_editora, editora)
values
(1, 'Martin Fontes'),
(2, 'HarperCollins')

insert into tb_genero
(cd_genero, genero)
values
(1, 'Aventura'),
(2, 'Fantasia Medieval')

insert into tb_livro(isbn, titulo, cd_editora, cd_genero, dt_livro, preco)
values
(2, 'Senhor dos Anéis', 2, 1, '2021-12-20', 187.92),
(3, 'O último desejo - The Witcher', 1, 2, '2019-12-19', 45.60)

-- Deleta os dados das tabelas
delete from tb_livro where isbn = 3

delete from tb_genero where cd_genero < 3

delete from tb_editora where cd_editora <3

-- Atualiza os dados da coluna especificada
update tb_editora
set editora = 'Thomson'
where cd_editora = 2

update tb_livro
set cd_editora = 2, cd_genero = 2
where isbn = 1 


--Mostra todas(*) as colunas de determinada tabela
select * from tb_livro where isbn = 1

select * from tb_editora

select * from tb_genero

-- Generos
insert into tb_genero 
(cd_genero, genero) 
values
(1, 'Computacao'),
(2, 'Medicina'),
(3, 'Engenharia'),
(4, 'Juridico'),
(5 , 'Arquitetura'), 
(6, 'Biologia'), 
(7, 'Mecatronica') 

-- Editoras
insert into tb_editora 
(cd_editora, editora) 
values
(1, 'novatec'),
(2, 'amazon'), 
(3, 'coopmed'), 
(4, 'livraria florence'), 
(5 , 'blucher'), 
(6,'Mundial'), 
(7,'saraiva'), 
(8,'Editora Forum'),
(9, 'Dickens')

-- Livros
insert into tb_livro 
(isbn, titulo, cd_editora, cd_genero, preco, dt_livro) 
values
(1,'banco de dados',1,1, 300, '10-02-2019'), 
(2,'Engenharia de Software',1,1, 350, '10-03-2019'), 
(3,'Ortopedia',3,2, 310, '10-04-2019'), 
(4,'Cardiologia',4,2, 320, '10-05-2019'), 
(5,'Estrutura Predial',5,3, 200, '10-06-2019'), 
(6,'Estrutura Hidraulica',6,3, 300, '10-07-2019'), 
(7,'Direito Penal',7,4, 150, '10-08-2019'), 
(8,'Direito Civil',8,4, 200, '10-09-2019'), 
(9,'Cores',7,5, 200, '10-10-2019'), 
(10, 'Paisagismo',8,5, 250, '10-11-2019'), 
(11,'Virus',9,6, 300, '10-12-2019'), 
(12,'Bacteria',9,6, 300, '10-12-2019')



-- Exercício

-- 1)
select * from tb_livro where cd_editora = 2

-- 2)
select * from tb_livro where cd_genero = 2

-- 3)
