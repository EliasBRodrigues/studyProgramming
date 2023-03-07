create database descfunc;
use descfunc;

create table Empregado(
	cod_empregado int primary key auto_increment,
    nome varchar(50));
    
create table Pagamento(
	cod_pgt int primary key auto_increment,
    cod_emp int,
    valorpg decimal(10, 2),
    constraint fk_pagemp foreign key (cod_emp) references Empregado(cod_empregado));
    
create table Desconto(
	cod_desc int primary key auto_increment,
    codigo_empregado int,
    valordesc decimal(10, 2),
    constraint fk_descemp foreign key (codigo_empregado) references Empregado(cod_empregado));
    
insert into Empregado(nome)
	values ('Luis'),
		   ('Marina'),
           ('Leticia'),
           ('Gustavo'),
           ('Mateus');
           
insert into Pagamento(cod_emp, valorpg)
	values (1, 100),
           (1, 200),
           (3, 300),
           (5, 400),
           (5, 500);
           
insert into Desconto(codigo_empregado, valordesc)
		values (1, 50),
			   (2, 20),
               (5, 30);
               
	select e.nome, p.valorpg 
    from Empregado as e 
    inner join Pagamento as p 
    on e.cod_empregado = p.cod_emp
    where p.valorpg > 200;
	
    select e.nome, p.valorpg, d.valordesc
    from Empregado as e
    inner join Pagamento as p
    on e.cod_empregado = p.cod_emp
    inner join Desconto as d
    on e.cod_empregado = d.codigo_empregado
    where d.valordesc = 30;
    
    select * from Empregado;
    
    