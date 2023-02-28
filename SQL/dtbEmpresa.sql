create database Empresa;
use Empresa;

create table Empregado(
	cod int(3) not null primary key auto_increment,
    nome varchar(40) not null,
    salario decimal(9, 2),
    cargo varchar(30),
	coddept int(3),
    comissao decimal(9, 2)
    );
    
create table Requisicao(
	codreq int(3) not null primary key,
    codemp int(3),
    datareq date,
    constraint fk_reqEmp foreign key (codemp) references Empregado(cod)
    );
    
insert into Empregado(
	nome, salario, cargo, coddept, comissao)
	values
    ('Jao', 1000.00, 'Analista de sistemas', 111, 200.00),
    ('Ana', 2000.00, 'Vendedora', 222, 300.00),
    ('Luiz', 3000.00, 'Analista de sistemas', 111, 400.00),
    ('Luiz', 3000.00, 'Desenvolvedor', 333, 400.00);
    
insert into Requisicao(
	codreq, codemp, datareq)
    values
    (100, 1, '2022-02-12'),
    (200, 2, '2022-11-18'),
    (355, 1, '2023-02-04'),
    (132, 3, '2021-10-22');
    
    /*selecionar maior e menor salario dos analistas de cada departamento*/
    select coddept, min(salario), max(salario)
    from Empregado
    where cargo = 'Analista de sistemas'
    group by cargo
    having min(salario) > 200;
    
    /*selecionar maior e menor salario dos analistas de cada departamento e SOMAR*/
    select coddept, sum(salario)
    from Empregado
    where cargo = 'Analista de sistemas'
    group by cargo;
    
    /*selecionar maior e menor salario dos analistas de cada departamento e ver MEDIA*/
	select coddept, avg(salario)
    from Empregado
    group by coddept
    having avg(salario) > 1000;
    
     /*selecionar menor salario de cada departamento com mais de um empregado*/
	select coddept, min(salario)
    from Empregado
    group by coddept
    having count(*) > 1;
    
    
    