-- criando banco de dados
create database db_ecommerce;
-- usando novo banco de dados
use db_ecommerce;
-- criando tabela
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(100) not null,
    preco double(10,2) not null,
    categoria varchar(50) not null,
    ativo boolean not null,
    quantidade bigint,

	primary key(id)
);

-- populando tabela
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("PS5", 4500, "Vídeo games", true, 50);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("Xbox series X", 4200, "Vídeo games", true, 80);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("PS4", 2200, "Vídeo games", true, 180);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("Xbox one", 1900, "Vídeo games", true, 200);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("Fifa 21", 300, "jogos", true, 500);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("NBA 2K21", 280, "Jogos", true, 400);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("COD Coldwar", 290, "Jogos", true, 250);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("controle ps5", 500, "Periféricos", true, 20);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("controle xbox series x", 450, "Periféricos", true, 40);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("JBL Quantum 100", 220, "Periféricos", true, 15);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("Headset series ouro", 540, "Periféricos", true, 10);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("Controle de PS4", 290, "Periféricos", true, 20);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("Controle de Xone", 250, "Periféricos", true, 30);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("Nintendo switch", 3000, "Periféricos", true, 20);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("Google stadia", 2000, "Vídeo games", true, 50);
insert into tb_produtos (nome, preco, categoria, ativo, quantidade) values("Cyberpunk 2077", 300, "Jogos", true, 200);

-- pedindo só os mais caros que 500 reais
select * from tb_produtos where preco > 500;
-- pedindo só os mais baratos que 500 reais
select * from tb_produtos where preco < 500;
-- pedindo só os produtos entre 700 e 900 reais
select * from tb_produtos where preco >= 700 and preco <=900;
-- deletando algum 
delete from tb_produtos where id=9;
-- atualizando
update tb_produtos set quantidade = 20 where id=1;
