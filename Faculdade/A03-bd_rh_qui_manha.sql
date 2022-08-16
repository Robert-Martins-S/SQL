create table tb_funcionario
(matricula int not null primary key,
funcionario char(50),
dt_nascimento date,
cd_setor int,
cd_cargo int,
salario decimal(12,2))

create table tb_cargo
(cd_cargo int not null primary key,
cargo char(20))

create table tb_setor 
(cd_setor int not null primary key,
setor char(30))

alter table tb_funcionario
add constraint fk_setor foreign key (cd_setor) 
references tb_setor (cd_setor)

alter table tb_funcionario
add constraint fk_cargo foreign key (cd_cargo) 
references tb_cargo (cd_cargo)

insert into tb_setor (cd_setor, setor) 
values 
(1, 'Enfermaria'),
(2, 'Administracao'),
(3, 'Informatica'),
(4, 'Engenharia'),
(5, 'Juridico'),
(6, 'Logistica'),
(7, 'Presidencia');

insert into tb_cargo 
(cd_cargo, cargo) 
values 
(1, 'Enfermeiro(a)'),
(2, 'Administrador(a)') ,
(3, 'Analista') ,
(4, 'Engenheiro(a)') ,
(5, 'Advogado(a)') ,
(6, 'Gerente') ,
(7, 'Executivo(a)') ;


insert into tb_funcionario  
(matricula, funcionario,  dt_nascimento, cd_setor, cd_cargo, salario)
Values  
(1,'Ana Clara', '1977-07-05',  5, 1, 3000),
(2,'Patricia Azevedo', '1944-07-04', 1, 1, 4000),
(3,'Jose Maria', '1971-05-10', 3, 1, 6000),
(4,'Sonia Abrantes', '1979-05-29',  4, 1, 7000), 
(5,'Valdir Reinaldo', '1960-09-22',  2, 2, 16000), 
(6,'Jose Alberto', '1955-01-13',  2, 2, 15000);

select * from tb_funcionario

-- Exercício

-- 1)  Listar  a cd_setor = 2  na tabela tb_funcionário
select * from tb_funcionario
where cd_setor = 2

-- 2)  Listar o cd_cargo = 1 na tabela tb_funcionário
select * from tb_funcionario
where cd_cargo = 1

-- 3)  Excluir cd_cargo  = 1 na tabela tb_cargo
delete from tb_cargo
where cd_cargo = 1

-- 4) Excluir cd_setor = 1 na tabela tb_setor
delete from tb_setor
where cd_setor = 1

-- 5)  Alterar na tabela tb_funcionario  matricula = 1  salario (6000)
select * from tb_funcionario
update tb_funcionario
set salario = 6000
where matricula = 1

-- 6)  Alterar – aumentar os salarios dos tb_funcionarios em 10%
update tb_funcionario
set salario = salario + (salario * 10/100)

-- 7)  Listar a tabela (tb_funcionario)  salario > 5000
select * from tb_funcionario
select * from tb_setor
select * from tb_cargo

-- 8)  Listar a tabela (tb_funcionario)   cd_cargo = 1
select * from tb_funcionario
where cd_cargo = 1
