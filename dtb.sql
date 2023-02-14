create database Escolas;
use Escolas;

create table displina(
	id_disciplina int(5) not null auto_increment primary key,
    nome_disciplina varchar(50),
    nome_professor varchar(60));
    
create table aluno_disciplina(
	matricula int not null primary key,
    nome_aluno varchar(60),
    sexo char(1),
    endereco varchar(50));
    
rename table displina to disciplina;

alter table disciplina add qtd_hora int;

alter table disciplina change qtd_hora qtd_horas int;

alter table aluno_disciplina add id_disciplina int(5);
alter table aluno_disciplina add constraint fk_idAluno foreign key(id_disciplina) references disciplina(id_disciplina);

insert into disciplina (nome_disciplina, nome_professor, qtd_horas) 
	values
		('Banco de dados II', 'Luiz', 60),
        ('Redes I', 'Diego', 55),
        ('Algoritmo', 'Ramon', 70);
        
insert into aluno_disciplina(matricula, nome_aluno, sexo, endereco, id_disciplina)
	values
		(1, 'Zezinho', 'M', 'Rua 1', 1),
        (2, 'Charlin', 'M', 'Rua 2', 2),
        (3, 'Chaplin', 'M', 'Rua 3', 3);


update aluno_disciplina set nome_aluno = "fernandin" where matricula = 1;

select * from aluno_disciplina;
select * from disciplina;

delete from aluno_disciplina where matricula = 3;
delete from disciplina where id_disciplina = 3;

alter table aluno_disciplina drop column endereco;

drop table aluno_disciplina;