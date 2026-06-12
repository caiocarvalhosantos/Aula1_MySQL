create database db_estacionamento;
use db_estacionamento;

create table tb_proprietario(
cpf_proprietario bigint primary key not null,
nm_proprietario varchar (45) not null,
data_nascimento date not null);

create table tb_veiculo(
	cd_placa varchar(7) primary key not null,
    nm_marca varchar(45) not null,
    nm_modelo varchar(45) not null,
    ds_cor varchar(45),
    fk_cpf_proprietario bigint not null,
    foreign key (fk_cpf_proprietario) 
    references tb_proprietario(cpf_proprietario)
    );
    
insert into tb_proprietario values
(94601256008 , 'Joao' , '2000-10-10'),
(91082135003 , 'Alberto' , '2001-11-11');
    
insert into tb_veiculo values
('EFQ8367', 'FORD' ,'FUSION' , 'AZUL' , 94601256008),
('FAC1323', 'FORD' , 'FOCUS' , 'LILAS' , 91082135003);

INSERT INTO tb_proprietario values(
'97677577835' , 'CAIO' , '1998-10-10'),
('45379172884' , 'OSMAR' , '1999-11-11'),
('42240415883' , 'ELBER' , '1997-12-12'),
('45379172882' , 'CLAUS' , '1996-11-11'),
('42240415881' , 'SCOTT' , '1995-12-12'
);

insert into tb_veiculo values
('KLP7X42' , 'HONDA' , 'CIVIC' , 'PRETA' , 45379172884),
('QWE9J58' , 'FORD' ,'RANGER' , 'BRANCA' , 94601256008),
('ZMX4T73' , 'CHEVROLET' , 'ONIX' , 'AZUL', 94601256008),
('HTR6P21' , 'VOLKSWAGEN' , 'GOLF' , 'BRANCA' , 45379172882),
('YUI3L90' , 'HYUNDAI' , 'HB20' , 'VERMELHA' , 42240415881),
('NBM8C64' , 'BMW' , '320i' , 'BRANCA', 45379172882),
('RFD5V87' , 'MERCEDES' , 'CLASSE-C' , 'VERMELHA' , 45379172884),
('TGH2M36' , 'NISSAN' , 'KICKS' , 'BRANCA' , 42240415883),
('FAC1723' , 'RENAULT' , 'DUSTER' , 'VERMELHA' , 42240415881);

delete from tb_veiculo
where fk_cpf_proprietario = 45379172884;

DROP DATABASE IF EXISTS db_estacionamento;

CREATE DATABASE db_estacionamento;
USE db_estacionamento;

CREATE TABLE tb_proprietario (
    cpf_proprietario BIGINT PRIMARY KEY NOT NULL,
    nm_proprietario VARCHAR(45) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE tb_veiculo (
    cd_placa VARCHAR(7) PRIMARY KEY NOT NULL,
    nm_marca VARCHAR(45) NOT NULL,
    nm_modelo VARCHAR(45) NOT NULL,
    ds_cor VARCHAR(45),
    fk_cpf_proprietario BIGINT NOT NULL,
    FOREIGN KEY (fk_cpf_proprietario) 
    REFERENCES tb_proprietario(cpf_proprietario)
);

ALTER TABLE tb_veiculo
ADD ano_veiculo INT;

INSERT INTO tb_proprietario VALUES
(94601256008, 'Joao', '2000-10-10'),
(91082135003, 'Alberto', '2001-11-11');

INSERT INTO tb_veiculo 
(cd_placa, nm_marca, nm_modelo, ds_cor, fk_cpf_proprietario, ano_veiculo)
VALUES
('EFQ8367', 'FORD', 'FUSION', 'AZUL', 94601256008, 2020),
('FAC1323', 'FORD', 'FOCUS', 'LILAS', 91082135003, 2018);

INSERT INTO tb_proprietario VALUES
(97677577835, 'CAIO', '1998-10-10'),
(45379172884, 'OSMAR', '1999-11-11'),
(42240415883, 'ELBER', '1997-12-12'),
(45379172882, 'CLAUS', '1996-11-11'),
(42240415881, 'SCOTT', '1995-12-12');

INSERT INTO tb_veiculo
(cd_placa, nm_marca, nm_modelo, ds_cor, fk_cpf_proprietario, ano_veiculo)
VALUES
('KLP7X42', 'HONDA', 'CIVIC', 'PRETA', 45379172884, 2021),
('QWE9J58', 'FORD', 'RANGER', 'BRANCA', 94601256008, 2022),
('ZMX4T73', 'CHEVROLET', 'ONIX', 'AZUL', 94601256008, 2019),
('HTR6P21', 'VOLKSWAGEN', 'GOLF', 'BRANCA', 45379172882, 2017),
('YUI3L90', 'HYUNDAI', 'HB20', 'VERMELHA', 42240415881, 2020),
('NBM8C64', 'BMW', '320i', 'BRANCA', 45379172882, 2023),
('RFD5V87', 'MERCEDES', 'CLASSE-C', 'VERMELHA', 45379172884, 2022),
('TGH2M36', 'NISSAN', 'KICKS', 'BRANCA', 42240415883, 2021),
('FAC1723', 'RENAULT', 'DUSTER', 'VERMELHA', 42240415881, 2018);

UPDATE tb_veiculo
SET ds_cor = 'CINZA'
WHERE cd_placa = 'QWE9J58';

DELETE FROM tb_veiculo
WHERE fk_cpf_proprietario = 45379172884;

SELECT * FROM tb_proprietario;
SELECT * FROM tb_veiculo;
