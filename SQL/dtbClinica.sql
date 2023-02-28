create database Clinica;
use Clinica;

create table Ambulatorio(
	nroa integer not null auto_increment primary key,
    andar numeric(03) not null,
    capacidade smallint
    );
    
create table Medico(
	codm integer not null auto_increment primary key,
    nome varchar(40) not null,
    idade smallint(02) not null,
    especialidade varchar(20),
    cpf numeric(11) unique,
    cidade varchar(30)
    );
    
create table Paciente(
	codp integer not null auto_increment primary key,
    nome varchar(40) not null,
    idade smallint(02) not null,
    doença varchar(40) not null,
    cpf numeric(11) unique,
    cidade varchar(30)
    );
    
create table Funcionario(
	codf integer not null auto_increment primary key,
    nome varchar(40) not null,
    idade smallint(02) not null,
    cpf numeric(11) unique,
    cidade varchar(30),
	cargo varchar(20),
    salario decimal(10, 2) not null
    );
    
create table Consulta(
	dataCons date,
    hora time
    );

alter table Consulta add idCodm int;
alter table Consulta add constraint fk_idcodm foreign key (idCodm) references Medico(codm);

alter table Consulta add idCodp int;
alter table Consulta add constraint fk_idcodp foreign key (idCodp) references Paciente(codp);


