-- 05 Criar uma view e Listar matricula, funcionário e setor
create view vw_01 as
select F.matricula, F.funcionario, S.setor from tb_funcionario F
inner join tb_setor S
on F.cd_setor = S.cd_setor

select * from vw_01
--06 Criar uma view e Listar  matricula, funcionário, salario e cargo com salario acima de R$ 5.000,00
create view vw_02 as
select matricula, funcionario, salario, cargo from tb_funcionario F
inner join tb_cargo C
on F.cd_cargo = C.cd_cargo

--07 Criar uma view e Listar   matricula, funcionario, salario e setor com salario abaixo R$ 4.000,00


--08 Criar uma view e Listar   matricula, funcionário, salario, setor e cargo
