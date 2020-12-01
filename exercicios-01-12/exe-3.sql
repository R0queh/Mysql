-- criando o banco de dados;
create database db_rh;
-- entrando no banco 
use db_rh;
-- criando uma tabela
create table tb_funcionario(
	id bigint auto_increment,
    nome varchar(50) not null,
    dataNacimento date not null,
    setor varchar(20) not null,
    cargo varchar(20),
    salario double(9,2),
    ativo boolean, 
    
    primary key (id)
);
-- população da tabela

insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Bruno Santos", "2000/12/28", "desenvolvimento","dev júnior", 4000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Serjão berranteiro", "1980/08/15", "segurança","porteiro", 1800, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Tião riscafaca", "1990/05/08", "limpeza","faxineiro", 1500, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Primo", "1900/1/25", "desenvolvimento","especialista", 12000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Camis", "1993/06/19", "desenvolvimento","Scrum master", 10000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Gustavo broch", "1993/08/07", "desenvolvimento","dev júnior", 4000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("witer maria mendonça", "1990/05/31", "desenvolvimento","dev júnior", 4000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Beatriz Odorcik", "1995/11/20", "desenvolvimento","dev júnior", 4000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Ana carolina cruz", "1995/06/14", "desenvolvimento","dev júnior", 4000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("REDS", "1995/05/04", "desenvolvimento","dev júnior", 4000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Robyn Rihanna", "1988/02/20", "marketing","diretora", 8000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Machado de Assis", "1950/05/08", "marketing","escritor", 1800, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Alana Rodrigues", "2000/12/28", "desenvolvimento","revisora", 6000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Oscar Nyemaier", "0001/05/04", "infraestrutura","engenheiro chefe", 10000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Juninho Play", "2002/04/18", "desenvolvimento","estagiário", 2000, true);
insert into tb_funcionario (nome, dataNacimento, setor, cargo, salario, ativo) values("Jorge Amado", "2000/12/28", "desenvolvimento","dev júnior", 4000, false);

-- pedindo os funcionários que ganham mais do que 2000
select nome, salario from tb_funcionario where salario > 2000;

-- pedindo os funcionários que ganham menos do que 2000
select nome, salario from tb_funcionario where salario < 2000;

-- atualizando os dados de alguém 
update tb_funcionario set setor = "marketing" where id = 14;

-- deletando um dados da tabela
delete from tb_funcionario where id=1;

select * from tb_funcionario