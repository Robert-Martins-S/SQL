-- 1	Lista titulo, editora quando o preco maior que R$200,00
select L.titulo, E.editora, L.preco from tb_livro L
inner join tb_editora E
on L.cd_editora = E.cd_editora
where L.preco > 200 order by preco 

-- 2	Lista titulo, gênero quando o preco entre R$200,00 e R$300,00
select L.titulo, G.genero, L.preco from tb_livro L
inner join tb_genero G
on G.cd_genero = L.cd_genero
where L.preco between 200 and 300

-- 3	Lista  titulo, editora e gênero quando cd_editora 1, 2 e 3
create view vw_01 as
select L.titulo, E.editora, G.genero, L.cd_editora from tb_livro L
inner join tb_editora E
on L.cd_editora = E.cd_editora
inner join tb_genero G
on G.cd_genero = L.cd_genero
where E.cd_editora in(1,2,3)

-- 4	lista titulo, editora, preco e preco com mais 20%
select L.titulo, E.editora, L.preco as 'preço', 'preço maior' = (L.preco * 1.2) from tb_livro L
inner join tb_editora E
on L.cd_editora = E.cd_editora

-- View--

create view vw_02 as 
select L.titulo, E.editora, L.preco as 'preço', 'preço maior' = (L.preco * 1.2) from tb_livro L
inner join tb_editora E
on L.cd_editora = E.cd_editora

select * from vw_02
order by 'preço'

--1 Criar uma View – liste isbn, titulo
create view vw_03 as
select isbn, titulo from tb_livro

select * from vw_03
--2	Criar uma View – list isbn, titulo, preco, preco com 10%
create view vw_04 as
select isbn, titulo, preco, preco * 1.1 as preco10 from tb_livro

select * from vw_04
--3	Criar uma View – list isbn, titulo e editora
create view vw_05 as
select L.isbn, L.titulo, E.editora from tb_livro L
inner join tb_editora E
on E.cd_editora = L.cd_editora

select * from vw_05
--4	Criar uma View – list isbn, titulo e gênero por ordem de gênero.
create view vw_06 as 
select L.isbn, L.titulo, G.genero as 'gênero' from tb_livro L
inner join tb_genero G
on L.cd_genero = G.cd_genero

select * from vw_06
order by 'gênero'