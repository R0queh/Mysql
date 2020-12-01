-- criando o banco de dados
create database db_escola;
-- usando o banco criado
use db_escola;
-- 
create table tb_alunes(
	id bigint auto_increment,
    nome varchar(50),
    sala varchar(3),
    periodo varchar(10),
    matricula boolean,
    contato varchar(20),
    nota int,
    
    primary key(id)
);
-- populando 

insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Bruno Santos", "3C", "Noite",true, "19 99999-9999", 7);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Serjão berranteiro", "3B", "Tarde",true, "19 99999-9998", 6);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Tião riscafaca", "3C", "Noite",true, "19 99999-9997", 5);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Primo", "3B", "Tarde",true, "19 99999-9996", 7);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Camis", "3B", "Tarde",true, "19 99999-9995", 8);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Gustavo broch", "3A", "Manhã",true, "19 99999-9994",6);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("witer maria mendonça", "3C", "Noite",true, "19 99999-9993",5);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Beatriz Odorcik", "3C", "Noite",true, "19 99999-9992",7);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Ana carolina cruz", "3A", "Manhã",true, "19 99999-9991",8);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("REDS", "3C", "Noite",true, "19 99999-9990", 6);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Robyn Rihanna", "3A", "Manhã",true, "19 99999-9989", 5);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Machado de Assis", "3B", "Tarde",true, "19 99999-9988", 4);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Alana Rodrigues", "3B", "Tarde",true, "19 99999-9987", 9);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Oscar Nyemaier", "3A", "Manhã",true, "19 99999-9986", 6);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Juninho Play", "3A", "Manhã",true, "19 99999-9985", 8);
insert into tb_alunes (nome, sala, periodo, matricula, contato, nota) values("Jorge Amado", "3C", "Noite",true, "19 99999-9984", 5);
-- notas maiores que 7
select * from tb_alunes where nota > 7;
-- notas menores que 7
select * from tb_alunes where nota < 7;
-- deletando
delete from tb_alunes where id = 16;
-- atualizando
update tb_alunes set nota = 10 where id = 1;

select * from tb_alunes;


