
create database improviment_cocoa;
use improviment_cocoa;
create table usuario(

idusuario int primary key auto_increment,
nome varchar(50),
email varchar(100),
senha varchar(40),
cpf varchar(14),
tel_Cell varchar(11)
);
create table empresa (
idEmpresa int primary key auto_increment,
cnpj varchar(14) not null,
razão_social  varchar(40),
responsavel varchar(50),
cidade varchar(20),
estado char(2),
cep char(8),
numero int,
complemento varchar(45),
tel_empresa varchar(11)
);
create table endereço(
idEndereço int primary key auto_increment,
cep char(8),
cidade varchar(20),
bairro varchar (50),
numero int,
complemento varchar (20)
);
create table sensor(
idsensor int primary key auto_increment,
sensor varchar (20),
status_setor char(10)
);

-- update: tabela abaixo foi acrescentado auto_increment p automatizar o processor
create table leitura(
idleitura int primary key auto_increment,
temperatura int,
umidade int,
data_da_leitura_hora datetime
);

create table relatorio (
idrelatorio int primary key auto_increment,
dadosUmidade varchar(20),
dadosTemperatura varchar(20),
data_hora datetime default current_timestamp);

insert into usuario (nome, email, senha, cpf, tel_Cell) values 
('will dantas','will.dantas@gmail.com','12345Will', 12417392012, 11960387699), 
('Diego Hessel','diegohessel@gmail.com','09876Hes', 12445678092, 11971195627),
('Ewerton lima','ewerton_lima@gmail.com','lima123', 44255100892, 11945474677),
('Natalia Fernandes','natalia_1fernandes@gemail.com','Natife123', 43215155897, 11974495712);

insert into empresa (cnpj, razão_social, responsavel, cidade, estado, cep, numero, complemento, tel_empresa) values 
(7201786800010, 'Cocoa Guard','will','São Paulo','sp', 07937020, 12, 'sitio',11974677234), 
(04634126000179,'Cocoa Saviors','Douglas','São Paulo','sp', 04751999, 76, 'fazenda', 11934211225),
(26390067000173,'Help Cacau','rayssa','campinas','sp', 01221880, 30, 'sitio', 11934542199),
(73457284000113,'cocoa alert','aline','sorocaba','sp', 04134660, 01, 'fazenda', 11934143291);

insert into endereço (cep, cidade, bairro, numero, complemento) values
(17021460,'Bauru','Jardim Nossa Lourdes', 12,'fazenda'),
(07141140,'Guarulhos','Jardim Santa Inês', 91,'sitio'),
(08620745,'Suzano','Jardim Mimosa', 344, 'fazenda'),
(13806078,'Mogi Mirim','Jardim Longatto', 245,'sitio');
    
insert into sensor (sensor, status_setor) values 
('Ativo', 1),
('Ativo', 2),
('Manutenço', 3),
('Inativo', 4);

insert into leitura (temperatura, umidade, data_da_leitura_hora) values 
('21.50', '50.5', '2023-03-01 12:30:00'),
('22.15', '50.5', '2023-03-01 11:00:00'),
('24.96', '50.5', '2023-03-02 16:30:00'),
('25.13', '50.5', '2023-03-01 17:00:00');

insert into relatorio (dadosUmidade, dadosTemperatura) values
('21.50', '50.5'),
('21.50', '50.5'),
('21.50', '50.5'),
('21.50', '50.5');

select * from usuario;
select * from empresa;
select * from endereço;
select * from sensor;
select* from leitura;
select* from relatorio;

