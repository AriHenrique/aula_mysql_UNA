SHOW DATABASES; -- mostra os bancos de dados

USE world; -- usa o banco de dados world

SHOW TABLES; -- mostra as tabelas

DESC city; -- descrição da tabela "city"

DESC country; -- descrição da tabela "country"

\! cls -- limpa a tela

select * from city; -- mostra TODAS as cidades

select * from city
where CountryCode = 'BRA'; -- mostrar todas as cidades com o codigo "BRA"

select avg(population) from city; -- calcula a média aritimética da populacao

select max(population) from city; -- mostra a cidade com a maior populacao

select min(population) from city; -- mostra a cidade com a menor populacao

create schema empresa; -- cria um banco de dados "empresa"

create table vendedor(
id_vendedor INT,
nome_vendedor VARCHAR(100),   -- criar uma tabela "vendedor"
nascimento DATE,              -- com id, nome, nascimento e salario    
salario DECIMAL(10,2)
);

insert into vendedor values(
2,
'Feliz Lima',          -- inserindo dados na tabela vendedor
'1953-03-17',
5000
);

insert into vendedor values(
3,
'Feliz Henrique',
'1956-03-17',
3000
);

delete from vendedor
where id_vendedor = 3; -- deleta a linha com o ID "3"

UPDATE vendedor
set nome_vendedor = 'Lourenço da Mata'  -- atualiza a linha com o ID "1"
where id_vendedor = 1;

UPDATE vendedor
set nome_vendedor = 'Clara Lima'
where id_vendedor = 2;

create table produto(
id_produto INT,
nome_produto VARCHAR(100),   
preco DECIMAL(10,2),                  
quantidade int
);


-- PRATICA

insert into produto values(1,'memoria ram',350.00,4),(2,'gabinete',749.99,1),(
3,
'fan',
60.50,
3
),(
4,
'processador',
1119.99,
1
),(
5,
'placa mãe',
599.99,
1
),(
6,
'fonte',
550.00,
1
),(
7,
'ssd',
799.99,
2
);
