-- criando o banco de dados
create database db_locadora;
-- usando o banco criado
use db_locadora;
-- 
create table tb_filmes(
	id bigint auto_increment,
    nome varchar(50) not null,
    genero varchar(50),
    saga boolean,
    disponivel boolean,
    qnt int(2),
    
    primary key(id)
);
-- populando 

insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("Senhor dos anéis: a sociedade do anél", "Fantasia",true,true, 2);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("Truque de mestre", "Ação",true,false, 0);
insert into tb_filmes(nome,genero,saga,disponivel,qnt) values("Senhor dos anéis: Duas torres", "fantasia",true,true, 1);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("divertidamente", "Animação",false,true, 1);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("Os incríveis", "Animação",true,false, 0);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("intocáveis", "Drama",false,false,0 );
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("o diabo veste prada", "Comédia",false,false, 0);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("Esposa de mentirinha", "Comédia",true,false, 2);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("Gente grande", "Comédia",true,true, 1);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("a procura da felicidade", "Drama",false,false, 0);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("Eu sou a lenda", "Ação", false, true, 1);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("Até que a sorte nos separe", "Comédia",true,false, 0);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("veloses e furiosos 1", "fantasia",true,true, 2);
insert into tb_filmes (nome,genero,saga,disponivel,qnt) values("O hobbit", "fantasia",true,true, 1);

select * from tb_filmes;
-- filmes com nome iniciando com S
select * from tb_filmes where nome like "S%";
-- filmes por categoria
select * from tb_filmes where genero = "Drama";
-- deletando
delete from tb_filmes where id = 13;
-- atualizando
update tb_filmes set qnt = 3 where id = 1;

select * from tb_filmes;