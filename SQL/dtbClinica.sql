create database Clinica;
use Clinica;

create table Ambulatorio(
	nroa int not null auto_increment primary key,
    andar numeric(03) not null,
    capacidade smallint
    );
    
create table Medico(
	codm int not null auto_increment primary key,
    nome varchar(40) not null,
    idade smallint(02) not null,
    especialidade varchar(20),
    cpf numeric(11) unique,
    cidade varchar(30),
    num_amb int,
    constraint fk_namb foreign key (num_amb) 
    references Ambulatorio(nroa)
    );
    
    
create table Paciente(
	codp int not null auto_increment primary key,
    nome varchar(40) not null,
    idade smallint(02) not null,
    cidade varchar(30),
    cpf numeric(11) unique,
    doenca varchar(40) not null
    );


create table Funcionario(
	codf int not null 
    auto_increment primary key,
    nome varchar(40) not null,
    idade smallint(02) not null,
    cidade varchar(30),
    cpf numeric(11) unique,
    salario decimal(10, 2) not null,
	cargo varchar(20)
    );


create table Consulta(
	cod_med int,
    cod_pac int,
	data_cons date,
    hora time,
    constraint fk_codm foreign key (cod_med) references Medico(codm),
	constraint fk_codp foreign key (cod_pac) references Paciente(codp)
    );

insert into Ambulatorio(
	andar, capacidade)
    values 
		(1, 30),
        (1, 50),
        (2, 40);
        select * from Ambulatorio;
        
insert into Paciente(
	nome, idade, cidade, cpf, doenca)
	values 
		('Ana', 20, 'Florianopolis', 20000200000, 'gripe'),
        ('Paulo', 24, 'Palhoca', 20000220000, 'fratura'),
        ('Lucia', 30, 'Biguacu', 22000200000, 'tendinite'),
        ('Carlos', 28, 'Joinville', 11000110000, 'sarampo');
        select * from Paciente;
        
insert into Medico(
	nome, idade, especialidade, cpf, cidade, num_amb)
	values 
		('Joao', 40, 'Ortopedia', 10000100000, 'Florianopolis', 1),
        ('Maria', 42, 'Traumatologia', 10000110000, 'Blumenau', 2),
        ('Pedro', 51, 'Pediatria', 11000100000, 'São José', 2),
        ('Carlos', 28, 'Ortopedia', 11000110000, 'Joinville', 1),
        ('Marcia', 33, 'Neurologia', 11000111000, 'Biguacu', 3);
        select * from Medico;

insert into Funcionario(
	nome, idade, cidade, salario, cpf)
	values 
		('Rita', 32, 'São José', 1200, 20000100000),
        ('Maria', 55, 'Palhoca', 1220, 30000110000),
        ('Caio', 45, 'Florianopolis', 1100, 41000100000),
		('Carlos', 44, 'Florianopolis', 1200, 51000110000),
        ('Paula', 33, 'Florianopolis', 2500, 61000111000);
        
select * from Funcionario;
        
insert into Consulta(
	cod_med, cod_pac, data_cons, hora)
	values 
		(1, 1, '2022-06-12', '14:00'),
        (1, 4, '2022-06-13', '10:00'),
        (3, 3, '2022-06-12', '10:00'),
        (3, 4, '2022-06-19', '13:00'),
        (4, 4, '2022-06-20', '13:00'),
        (4, 4, '2022-06-22', '19:30');
        select * from Consulta;
       
update Paciente set cidade = "Ilhota" where nome = "Paulo";
update Paciente set cidade = "Ilhota" where codp = 2;
select * from Paciente;

update Consulta set hora = '12:00', data_cons = '2023-07-04' where cod_pac = 4;
select * from Consulta;

update Paciente set doenca = "sarampo" where nome = "Ana";
update Paciente set doenca = "sarampo" where codp = 1;

update Consulta set hora = '14:30' where cod_med = 3 and cod_pac = 4;

delete from Consulta where cod_pac = 4;
delete from Paciente where codp = 4;

delete from Consulta where hora = '19:30';

update Medico set especialidade = "Clino Geral" where nome = "Pedro";
select * from Medico;