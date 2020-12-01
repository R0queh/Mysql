-- criando o banco de dados
create database db_petshop;
-- usando o banco criado
use db_petshop;
-- 
create table tb_anime(
	id bigint auto_increment,
    nome varchar(50) not null,
    tipo varchar(50),
    raça varchar(10) not null,
    peso int,
    dono varchar(20) not null,
    
    primary key(id)
);
-- populando 

insert into tb_anime (nome, tipo, raça, peso, dono) values("Pombaldo", "pomba","pomba",2, "estevão");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Rex", "Dog", "salsicha", 5,"gu broch");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Zé jacaré","jacaré","aligator", 28,"Tião riscafaca");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Estônio", "cabra", "montesa", 15,"Primo");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Garfield", "Gato","Siamês",8, "Camis");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Scooby","Dog", "Dalmata",39,"Gustavo broch");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Pegasus","cavalo","mangalarga", 250,"witer maria mendonça");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Furacão","furão","furão",6,"Beatriz Odorcik");
insert into tb_anime (nome, tipo, raça, peso, dono) values("New armstrong","Dog", "Pug", 4,"Ana carolina cruz");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Psyro","Ave", "Calopsita", 1,"REDS");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Tigrão", "felino", "Tigre",180,"Robyn Rihanna");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Felix", "Ave", "dodo",3,"Machado de Assis");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Bolinha","Anfibio","Sapo", 2,"Alana Rodrigues");
insert into tb_anime (nome, tipo, raça, peso, dono) values("Floquinho", "casco", "Antílope", 220,"Oscar Nyemaier");

select * from tb_anime;
-- animais com nome iniciando com b
select * from tb_anime where nome like "B%";
-- peso maior que 20 kg 
select * from tb_anime where peso > 20;
-- deletando
delete from tb_anime where id = 2;
-- atualizando
update tb_anime set peso = 0.8 where id = 13;

select * from tb_anime;
