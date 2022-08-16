-- Excluir o banco de dados
drop database bd_rh_qui_manha

-- Criar o Banco de dados
create database bd_rh_qui_manha

-- Usar o banco de dados
use bd_rh_qui_manha

/*
Criar tabela tb_cargo
*/

create table tb_cargo
(cd_cargo int not null primary key,
cargo char(30)
)

/* 
Criar tabela tb_setor
*/

create table tb_setor
(cd_setor int not null primary key,
setor char(30)
)

/*
Criar tabela tb_funcionario
*/

create table tb_funcionario
(matricula int not null primary key,
funcionario char(50),
dt_nascimento date,
cd_setor int,
cd_cargo int,
salario decimal(12,2)
)

/*
Deletar tabela tb_funcionario
*/
drop table tb_funcionario

/*
Relacionamento
*/
--cargo
alter table tb_funcionario
add constraint fk_cargo foreign key (cd_cargo)
references tb_cargo (cd_cargo)

--setor
alter table tb_funcionario
add constraint fk_setor foreign key (cd_setor)
references tb_setor (cd_setor)