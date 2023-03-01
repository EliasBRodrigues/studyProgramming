create database Prefeitura;
use Prefeitura;

create table Departamento(
	cod_dept int not null primary key,
    localizacao varchar(30),
    nome_dept varchar(35)
    );
    
create table Servidor(
	id_matricula int not null primary key auto_increment,
    nome varchar(50),
    data_servico date,
    salario real,
    cod_org int,
    constraint fk_codOrgao foreign key (cod_org) references Departamento(cod_dept)
    );
    
    insert into Departamento(
		cod_dept, localizacao, nome_dept)
    values
		(1, 'primeiro andar', 'RH'),
        (222, 'segundo andar', 'TI'),
        (4, 'quarto andar', 'TRI'),
        (5, 'quinto andar', 'MUL'),
        (333,'terceiro andar', 'CAR'),
        (7, 'setimo andar', 'DIR'),
        (6, 'sexto andar', 'SERV');
    
    insert into Servidor(
		nome, data_servico, salario, cod_org)
    values
		('Ana', '2003-10-09', 1200, 1),
        ('Bruno', '2002-01-09', 1000, 222),
        ('Carlos', '2008-11-09', 1500, 4),
        ('Daniela', '2009-12-09', 2200, 5),
        ('Elisa', '2003-10-08', 1900, 333),
        ('Fabio', '2015-10-05', 1300, 7),
        ('Gustavo', '2016-10-04', 3200, 6);
        

    select * from Servidor order by id_matricula;
    select count(nome) from Servidor;
    
    select nome, data_servico, min(10), max(12) from Servidor;
    
    select nome, id_matricula, salario, min(salario)
    from Servidor
    where salario = 1000;
    
    select nome, data_servico, min(05) from Servidor;
    
    select nome, id_matricula, salario, min(salario)
    from Servidor
    order by nome;
    
    select data_servico, id_matricula, nome, salario
    from Servidor 
    order by data_servico desc;
    
	select nome, salario, max(salario)
    from Servidor
    having count(*) > 1;
    
    select nome, avg(salario)
    from Servidor
    having avg(salario);
    
    select nome, min(salario)
    from Servidor;
    
    select nome, id_matricula, cod_org
    from Servidor;
    
	select cod_org, sum(salario)
    from Servidor;
    
    select nome 
    from Servidor
    group by cod_org;
    
    select id_matricula, min(salario)
    from Servidor group by cod_org = 222;
    
    select cod_org, avg(salario)
    from Servidor group by cod_org = 333;
    
    select cod_org, min(salario), max(salario)
    from Servidor
    group by nome;
    
    select nome, max(salario) 
    from Servidor
    where data_servico = '2004-03-03'
    group by data_servico;
    
    select avg(salario) from Servidor
    group by cod_org
    having avg(salario) > 560;
    
    select nome, max(salario) from Servidor
    group by cod_org
    having nome >= 3;
    
    select nome, salario * qtd_Servidor
    from Servidor;