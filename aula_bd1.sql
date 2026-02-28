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

