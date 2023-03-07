create database Estacionamento;
use Estacionamento;

create table Cliente(
	cpf int primary key not null,
    nome varchar(60),
    dtNasc date
);

create table Modelo(
	codMod int primary key auto_increment not null,
    desc_2 varchar(40)
);

create table Patio(
	num int primary key auto_increment not null,
    ender varchar(40),
    capacidade int
);


create table Veiculo(
	placa varchar(8) primary key not null,
    Modelo_codMod int,
    Cliente_cpf int,
    cor varchar(20),
    ano int(4),
    constraint fk_cpf foreign key (Cliente_cpf) references Cliente(cpf),
    constraint fk_mod foreign key (Modelo_codMod) references Modelo(codMod)
);
    

create table Estaciona(
	cod int primary key auto_increment not null,
    dtEntrada date,
    dtSaida date,
    hsEntrada time,
    hsSaida time,
    Patio_num int,
    Veiculo_placa varchar(8),
    constraint fk_patio foreign key (Patio_num) references Patio(num),
    constraint fk_placa foreign key (Veiculo_placa) references Veiculo(placa)
);

insert into Cliente(cpf, nome, dtNasc)
	values 
		(123321321, 'Luiz Claudio', '1983-06-08'),
        (234124242, 'Marcio Campos', '1972-08-07'),
        (731315271, 'Joao Batista', '1981-06-05'),
        (323131131, 'Juliana Marques', '1982-04-02'),
        (432242321, 'Fernanda Veiga', '1987-03-01');
        
        
 insert into Veiculo(placa, Modelo_codMod, Cliente_cpf, cor, ano)
	values 
		('JJJ-2020', 2, 123321321, 'branco', 1998),
        ('KMK-1020', 3, 234124242, 'preto', 2000),
        ('BOY-9898', 2, 731315271, 'azul metalico', 2009),
        ('SPS-1131', 1, 323131131, 'vinho', 1998),
        ('JEG-1010', 2, 432242321, 'prata', 2001);
        

insert into Modelo(desc_2)
	values 
		('SEDAN'),
        ('HATCH'),
        ('WAGON');        

insert into Patio(num, ender, capacidade)
	values 
		(1, 'RUA K', 5),
        (2, 'RUA L', 4),
        (3, 'RUA J', 6);         


 insert into Estaciona(Patio_num, Veiculo_placa, dtEntrada, dtSaida, hsEntrada, hsSaida)
	values 
		(3, 'JJJ-2020', '2023-03-02', '2023-03-02', '14:30:00', '16:00:00'),
        (2, 'KMK-1020', '2023-04-01', '2023-04-02', '12:00:00', '07:00:00'),
        (2, 'BOY-9898', '2023-05-10', '2023-05-10', '13:00:00', '14:00:00'),
        (1, 'SPS-1131', '2023-03-10', '2023-03-10', '08:00:00', '08:20:00'),
        (3, 'JEG-1010', '2022-02-07', '2023-02-10', '12:00:00', '17:35:00');        
        
        
       
       select c.nome, v.placa
       from Cliente as c
       inner join Veiculo as v
       on c.cpf = v.Cliente_cpf;
       
        
        select c.cpf, c.nome, v.placa
        from Cliente as c
        inner join Veiculo as v
        on c.cpf = v.Cliente_cpf
        where v.placa = 'JJJ-2020';
        
        select v.placa, v.cor, e.cod
        from Veiculo as v
		inner join Estaciona as e
        on v.placa = e.Veiculo_placa
        where e.cod = 1;
        
        select v.placa, v.ano, e.cod
        from Veiculo as v
        inner join Estaciona as e
        on v.placa = e.Veiculo_placa
        where e.cod = 3;
        
        select v.placa, v.ano, m.desc_2
        from Veiculo as v
        inner join Modelo as m
        on m.codMod = v.Modelo_codMod
        where v.ano = 2000;
        
        select v.placa, p.ender, e.dtEntrada, e.dtSaida
        from Patio as p
        inner join Estaciona as e
        on p.num = e.Patio_num
        inner join Veiculo as v
        on v.placa = e.Veiculo_placa
        where v.placa = 'JEG-1010';
        
        select v.cor, e.dtEntrada, e.dtSaida
        from Veiculo as v
        inner join Estaciona as e
        on v.placa = e.Veiculo_placa
        where count(v.cor) = 'vinho'
        group by cor;
        
        select c.nome, m.desc_2, v.Modelo_codMod, m.codMod
        from Veiculo as v
        inner join Modelo as m
        on m.codMod = v.Modelo_codMod
        inner join Cliente as c
        on c.cpf = v.Cliente_cpf
        where m.codMod = 1;
        
        select v.placa, e.hsEntrada, e.hsSaida
        from Veiculo as v
        inner join Estaciona as e
        on v.placa = e.Veiculo_placa
        where v.cor = 'preto';
        
        select v.placa, e.dtEntrada, e.dtSaida, e.hsEntrada, e.hsSaida
        from Veiculo as v
        inner join Estaciona as e
        on v.placa = e.Veiculo_placa
        where v.placa = 'JJJ-2020';
        
        select c.nome, v.placa, e.cod
        from Cliente as c
        inner join Veiculo as v
        on c.cpf = v.Cliente_cpf
        inner join Estaciona as e
        on v.placa = e.Veiculo_placa
        where e.cod = 2;
        
		select c.cpf, v.placa, e.cod
        from Cliente as c
        inner join Veiculo as v
        on c.cpf = v.Cliente_cpf
        inner join Estaciona as e
        on v.placa = e.Veiculo_placa
        where e.cod = 3;
        
        select c.nome, v.placa, e.cod, m.desc_2
        from Cliente as c
        inner join Veiculo as v
        on c.cpf = v.Cliente_cpf
        inner join Modelo as m
        on m.codMod = v.Modelo_codMod
        inner join Estaciona as e
        on v.placa = e.Veiculo_placa
        where e.cod = 3;
        
        
        select c.nome, v.placa, m.desc_2
        from Cliente as c
        inner join Veiculo as v
        on c.cpf = v.Cliente_cpf
        inner join Modelo as m
        on m.codMod = v.Modelo_codMod;
        
        select * from Estaciona; 