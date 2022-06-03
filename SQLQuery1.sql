create database loja

create table clientes(
codcli int primary key identity(1,1),
nome varchar (50) not null,
endereco varchar (60) not null,
complemento varchar (30),
cep numeric (8) not null,
cpf char (11) not null,
rg varchar (12) not null,
tel_fixo numeric (12),
tel_cel numeric (13) not null,
salario numeric (7,2) not null,
)

create table produtos(
cod_prod int primary key identity(1,1),
descricao varchar (50) not null,
marca varchar (30) not null,
tipo varchar (30) not null,
ano_de_fabricacao numeric (4) not null
)

create table compras(
codcompra int primary key identity(1,1),
codcli int not null,
cod_prod int not null,
)

alter table compras
add constraint FK_cliente
foreign key (codcli)
references clientes(codcli)

alter table compras
add constraint FK_produtos
foreign key (cod_prod)
references produtos(cod_prod)

insert into clientes
values('Fulano','Rua Teste, 888 - Centro','Bloco A Ap 2',4585398,'58693475953','335677789415',163579635698,16988562436,2100.00)


insert into clientes values('Ciclano','Rua Tal, 8 - Centro','',9585398,'48693475953','835677789415',693579635698,84988562436,2800.00)        
insert into clientes  values('Bahianinho','Rua Casas Bahia, 798 - Centro','Bloco D Ap 8',3985398,'75869345953','125677789415',473579635698,36988562436,1100.00)
insert into clientes  values('Lu','Rua Magazine, 98 - Centro','Bloco C Ap 1',1585398,'75823475953','3735677789415',263579635698,26988562436,2500.00)

delete from clientes 
where codcli = 5

delete from clientes 
where codcli = 7

delete from clientes 
where codcli = 10

delete from clientes 
where codcli = 8

insert into produtos values('TV 42"','Sansung','Eletronico','2021')        
insert into produtos  values('TV 50"','Sony','Eletronico','2019')
insert into produtos  values('Celular"','Motorola','Eletronico','2021')

insert into compras values(4,3)

select *from clientes
select *from produtos
select *from compras