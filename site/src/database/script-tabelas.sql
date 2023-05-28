
/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

create database ElasInspiram;
use ElasInspiram;

create table tbUsuario(
idUsuario int primary key auto_increment,
nomeUsuario varchar(45),
emailUsuario varchar(45) unique,
senhaUsuario  varchar(45),
confirmacaoSenha varchar(45)
);


/*
comandos para criar usuário em banco de dados azure, sqlserver,
com permissão de insert + update + delete + select
*/

CREATE USER [usuarioParaAPIWebDataViz_datawriter_datareader]
WITH PASSWORD = '#Gf_senhaParaAPIWebDataViz',
DEFAULT_SCHEMA = dbo;

EXEC sys.sp_addrolemember @rolename = N'db_datawriter',
@membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';

EXEC sys.sp_addrolemember @rolename = N'db_datareader',
@membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';