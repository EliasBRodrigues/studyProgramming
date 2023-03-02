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
        ('Carlos', '2002-01-09', 1000, 222),
        ('Bruno', '2008-11-09', 1500, 4),
        ('Daniela', '2009-12-09', 2200, 5),
        ('Fabio', '2003-10-08', 1900, 333),
        ('Elisa', '2015-10-05', 1300, 7),
        ('Gustavo', '2016-10-04', 3200, 6);
        
    /*1*/    
    select * from Servidor order by id_matricula;
    
    /*2*/
    select count(nome) from Servidor;
    
    /*3*/
    select nome
    from Servidor
    where datediff(curdate(), data_servico) between 3650 and 4380;
    
    /*4*/
    select nome, id_matricula, salario, min(salario)
    from Servidor
    where salario = 1000
    group by id_matricula;
    
    /*5*/
    select nome
    from Servidor
    where datediff(curdate(), data_servico) = 1825;
    
    /*6*/
    select nome, id_matricula, salario
    from Servidor
    order by nome;
    
    /*7*/
    select data_servico, id_matricula, nome, salario
    from Servidor 
    order by data_servico desc;
    
    /*8*/
	select nome, salario
    from Servidor
    group by id_matricula
    order by salario desc;
    
    /*9*/
    select nome, avg(salario)
    from Servidor
    group by id_matricula
    order by avg(salario);
    
    /*10*/
    select nome, min(salario) as menor_salario
    from Servidor
    group by id_matricula
    order by salario;
    
    /*11*/
    select id_matricula, nome, cod_org
    from Servidor
	group by id_matricula;
    
    /*12*/
	select sum(salario) as somatotal_salario
    from Servidor;
    
    /*13*/
    select cod_dept, nome_dept
    from Departamento
    where nome_dept = 'RH'
    group by cod_dept;
    ;
    
    /*14*/
    select id_matricula, min(salario), cod_org
    from Servidor 
    where cod_org = 222
    group by id_matricula;
    
    /*15*/
    select cod_org, avg(salario)
    from Servidor
    where cod_org = 333
    group by cod_org;
    
    /*16*/
    select nome, min(salario), max(salario)
    from Servidor
    group by nome;
    
    /*17*/
    select max(salario), nome_dept
    from Servidor, Departamento
    where data_servico >= '2004-03-03'
    group by nome_dept;
    
    /*18*/
    select nome_dept, avg(salario) as media_salario
    from Servidor, Departamento
    group by nome_dept
    having avg(salario) > 560;
    
    /*19*/
    select nome_dept, max(salario) 
    from Servidor, Departamento
    group by nome_dept
    having count(*) > 3;
    
    /*20*/
    select nome, salario * count(*) as total_salario
    from Servidor
    group by nome, salario;