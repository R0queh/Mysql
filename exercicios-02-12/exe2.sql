-- criando data base
create database db_ecommerce2;
-- usando o data base
use db_ecommerce2;
-- criando tabela
create table tb_categoria(
	id bigint auto_increment,
    departamento varchar(30),
    categoria varchar(30),
    marca varchar(30),
    
    primary key(id)
);

create table tb_produto(
	id bigint auto_increment,
    nome varchar(30),
    preco double(10,2),
    ativo boolean,
    quantidade int,
    promo boolean,
    cat_id bigint,
    
    foreign key(cat_id) references tb_categoria(id),
    primary key(id)
);

-- populando tabela
insert into tb_categoria (departamento, categoria, marca) values("Vídeo games", "Consoles","Sony"); 
insert into tb_categoria (departamento, categoria, marca) values("Vídeo games", "Consoles","Xbox");
insert into tb_categoria (departamento, categoria, marca) values("Vídeo games", "Consoles","Nintendo");
insert into tb_categoria (departamento, categoria, marca) values("Vídeo games", "Consoles","Google");
insert into tb_categoria (departamento, categoria, marca) values("Vídeo games", "Consoles","Sony");
insert into tb_categoria (departamento, categoria, marca) values("Vídeo games", "Periféricos","Sony");
insert into tb_categoria (departamento, categoria, marca) values("Vídeo games", "Periféricos","Xbox");
insert into tb_categoria (departamento, categoria, marca) values("Vídeo games", "Jogos",null);
insert into tb_categoria (departamento, categoria, marca) values("Fones de ouvido", "Headset",null);


insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("PS5", 4500, true, 50, false,1);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("Xbox series X", 4200, true, 80, false,2);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("PS4", 2200, true, 180, true,1);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("Xbox one", 1900, true, 200, true,2);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("Fifa 21", 300, true, 500, true,8);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("NBA 2K21", 280, true, 400, false,8);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("COD Coldwar", 290, true, 250, false,8);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("controle ps5", 500, true, 20, false,6);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("controle xbox series x", 450, true, 40, false,7);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("JBL Quantum 100", 220, true, 15, true,9);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("Headset series ouro", 540, true, 10, false,9);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("Controle de PS4", 290, true, 20, false,6);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("Controle de Xone", 250, true, 30, false,7);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("Nintendo switch", 3000, true, 20, true,3);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("Google stadia", 2000, true, 50, false,4);
insert into tb_produto (nome, preco, ativo, quantidade,promo, cat_id) values("Cyberpunk 2077", 300, true, 200, false,8);

-- pedindo produtos acima de 2000 R$
select * from tb_produto where preco > 2000;

-- pedindo produtos entre 1000 R$ e 2000 R$
select * from tb_produto where preco between 1000 and 2000;

-- produtos que começa com "c"
select * from tb_produto where nome like "%C%";

-- inner join 
select tb_produto.nome, tb_produto.preco, tb_categoria.categoria, tb_categoria.marca  from tb_produto 
	inner join tb_categoria on tb_categoria.id = tb_produto.cat_id;
    
-- selecionando os mesmos produtos
select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.cat_id
    where tb_categoria.marca like "Sony";
