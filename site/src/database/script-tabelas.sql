
/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

create database ElasInspiram;
use ElasInspiram;

create table tbUsuario(
idUsuario int primary key auto_increment,
nomeUsuario varchar(45),
emailUsuario varchar(45) unique,
senhaUsuario  varchar(45)
);

CREATE TABLE aviso (
	idAviso INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
    dtCriacao datetime, 
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES tbUsuario(idUsuario)
);

SELECT 
		a.idAviso,
		a.titulo,
		a.descricao,
		a.fk_usuario,
		u.idUsuario,
		u.nomeUsuario,
		u.emailUsuario,
		u.senhaUsuario
	FROM aviso a
		INNER JOIN tbUsuario u
			ON a.fk_usuario = u.idUsuario ORDER BY a.idAviso desc;






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