--DDL
CREATE DATABASE db_devconnect_M;

USE db_devconnect_M;

CREATE TABLE tb_usuario(
	
	id               INT IDENTITY(1,1)        PRIMARY KEY
	,nome_completo   NVARCHAR(255)            NOT NULL
	,nome_usuario    NVARCHAR(50)  UNIQUE     NOT NULL
	,email           NVARCHAR(255) UNIQUE     NOT NULL
	,senha           NVARCHAR(50)             NOT NULL
	,foto_perfil_url NVARCHAR(150)            NULL
	);

	SELECT * FROM tb_usuario

CREATE TABLE tb_publicacao(
	 id               INT IDENTITY(1,1) PRIMARY KEY
	,descricao        NVARCHAR(250)      NOT NULL
	,imagemurl        NVARCHAR(150)      NULL
	,data_publicacao  DATETIME           NOT NULL
	,id_usuario	      INT                NOT NULL

	FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
	);
			
CREATE TABLE tb_comentario(
	 id               INT IDENTITY(1,1) PRIMARY KEY
	 ,texto           NVARCHAR(250)     NOT NULL
	,data_comentario  DATETIME          NOT NULL
	,id_usuario	      INT               NOT NULL
	,id_publicacao	  INT               NOT NULL

	
	,FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
	,FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
);

CREATE TABLE tb_curtida(
	 id             INT IDENTITY(1,1) PRIMARY KEY
	,id_usuario	    INT               NOT NULL
	,id_publicacao  INT               NOT NULL

	
	,FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
	,FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
);

CREATE TABLE tb_seguidor(
	 id_usuario_seguidor	INT	    NOT NULL
	,id_usuario_seguido	    INT     NOT NULL

	
	,PRIMARY KEY (id_usuario_seguidor, id_usuario_seguido)
	,FOREIGN KEY (id_usuario_seguidor) REFERENCES tb_usuario(id)
	,FOREIGN KEY (id_usuario_seguido) REFERENCES tb_usuario(id)
);