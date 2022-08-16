-- Liste a quantidade de livros por editora

select E.editora, count(L.titulo) Quantidade
from tb_livro L 
inner join tb_editora E
on E.cd_editora = L.cd_editora
group by E.editora
order by Quantidade;


-- Liste a quantidade de funcionarios por setor

select S.setor, count(F.matricula) Quantidade
from tb_setor S inner join tb_funcionario F
on S.cd_setor = F.cd_setor 
group by S.setor;

-- Lista a média salarial dos funcionários por cargo

select C.cargo, avg(F.salario) Média
from tb_cargo C inner join tb_funcionario F
on C.cd_cargo = F.cd_cargo
group by C.cargo
order by Média;

-- Deleta todos os funcionários e dá rollback

start transaction;
select * from tb_funcionario;
delete from tb_funcionario where matricula > 0;
select * from tb_funcionario;
rollback;
select * from tb_funcionario;

-- Aumenta em 10% o salário dos funcionários e confirma

start transaction;
select * from tb_funcionario;
update tb_funcionario set salario = salario * 1.1;
select * from tb_funcionario;
rollback;

-- Lista os funcionários que estão acima da média

select * from tb_funcionario
where salario > (select avg(salario) media from tb_funcionario);

show index from tb_funcionario;

create index idx_nome on tb_funcionario (funcionario);

select * from tb_funcionario
where funcionario = 'Ana Clara'