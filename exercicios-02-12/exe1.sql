-- criando DB
create database db_rh2;
-- usando DB
use db_rh2;
-- criando tabelas
create table tb_cargo(
	id bigint auto_increment,
    cargo varchar(30),
    nivel varchar(30),
    turno varchar(15),
    
    primary key(id)
);

create table tb_func(
	id bigint auto_increment,
    nome varchar(50),
    admindata date,
    ferias boolean,
    salario double(10,2),
    id_cargo bigint,
    
    foreign key(id_cargo) references tb_cargo(id),
    primary key(id)
);
-- populando tabela tb_cargo
insert into tb_cargo(cargo, nivel, turno) values ("Dev", "Júnior", "Dia");
insert into tb_cargo(cargo, nivel, turno) values ("Dev", "Pleno", "Dia");
insert into tb_cargo(cargo, nivel, turno) values ("Dev", "Sênior", "Dia");
insert into tb_cargo(cargo, nivel, turno) values ("Projeto", "Scrum master", "Dia");
insert into tb_cargo(cargo, nivel, turno) values ("Projeto", "Product Owner", "Dia");

-- populando tabela tb_func
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Bruno Santos", "2010/10/02", false, 3000, 1);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Tião riscafaca", "2008/05/08", false, 5000, 2);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Robyn Rihanna", "2010/02/20", false, 8500, 4);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Oscar Nyemaier", "2015/05/04" , false, 7500, 3);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Jorge Amado", "2006/12/28", false, 5000, 2);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Snoop dog", "2012/12/28", false, 9000, 5);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Lionel Messi", "2017/12/28", false, 3000, 1);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Notorious big", "2019/12/28", false, 5000, 2);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Tupac", "2011/12/28", false, 5000, 2);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Neymar jr", "2012/12/28", false, 7500, 3);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Finneas", "2013/12/28", false, 5000, 2);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("CR7", "2012/12/28", false, 3000, 1);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Paulete", "2006/12/28", false, 3000, 1);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Salvador Dali", "2006/12/28", false, 7500, 3);
insert into tb_func(nome, admindata, ferias, salario, id_cargo) values ("Salvador Daqui", "2006/12/28", false, 7500, 3);

-- selecionando funcionarios com salários acima de 5k
select * from tb_func where salario > 5000;
-- selecionando funcionarios com salários entre 3k e 5k
select * from tb_func where salario <=5000 and salario >= 3000;
-- selecionando funcionários com a letra C 
select * from tb_func where nome like "C%";
-- fazendo um inner join 
select tb_func.nome, tb_cargo.cargo, tb_cargo.nivel, tb_func.salario from tb_func 
	inner join tb_cargo on tb_cargo.id = tb_func.id_cargo;
-- pedindo um cargo especifico 
select tb_func.nome, tb_func.salario  from tb_func
	inner join tb_cargo on tb_cargo.id = tb_func.id_cargo
    where tb_cargo.cargo = "Dev" and (tb_cargo.nivel = "Júnior" or tb_cargo.nivel = "Pleno") ;