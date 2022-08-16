-- Criando uma stored procedure 
delimiter $$

create procedure sp_02A()
begin
	select L.titulo, L.preco, G.genero, editora from tb_livro L
    inner join tb_genero G
    on L.cd_genero = G.cd_genero
    inner join tb_editora E
    on L.cd_editora = E.cd_editora
    where L.preco > 300;
end $$
delimiter ;

call sp_02A();
-- Criando uma stored procedure com multiplos parâmetros
delimiter $$

create procedure sp_03A(in vcd_genero int, vgenero char(30))
begin 
	insert into tb_genero(cd_genero, genero)
    values(vcd_genero, vgenero);
    select * from tb_genero;
end $$
delimiter ;

call sp_03A(8, 'Enfermagem');

-- Deletando uma stored procedure
drop procedure sp_03A;

-- Exercícios

-- 01 Criar uma stored procedure - sp_04A  para listar (Matricula, funcionário, salario) tb_funcionario 
delimiter $$
create procedure sp_04A()
begin
select matricula, funcionario, salario from tb_funcionario;
end $$
delimiter ;
call sp_04A;

-- 02 Criar uma stored procedure - sp_05A  para Incluir Novos cargos e depois listar
delimiter $$
create procedure sp_05A(in vcdcargo int, in vcargo char(30))
begin
insert into tb_cargo(cd_cargo, cargo)
values(vcdcargo, vcargo);
select * from tb_cargo;
end $$
delimiter ;
call sp_05A(8, 'Professor');
-- 03 Criar uma stored procedure - sp_06A  para Alterar o nome do funcionario in – matricula, novo nome
delimiter $$
create procedure sp_06A(in vmatricula int, vfuncionario char(50))
begin
update tb_funcionario 
set funcionario = vfuncionario
where matricula = vmatricula;
end $$
delimiter ;
select * from tb_funcionario;
call sp_06A(4, 'Carlos Roberto');
-- 04 Criar uma stored procedure - sp_07A  para Lista os funcionários por cod_cargo parâmetro (in)  cod_cargo
delimiter $$
create procedure sp_07A(in vcod_cargo int)
begin
select F.matricula, F.funcionario, C.cargo, F.cd_cargo from tb_funcionario F
inner join tb_cargo C
on F.cd_cargo = C.cd_cargo
where F.cd_cargo = vcod_cargo;
end $$
delimiter ;

drop procedure sp_07A;
call sp_07A(2);