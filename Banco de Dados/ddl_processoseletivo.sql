--DDL
CREATE DATABASE db_devconnect;

USE db_devconnect

CREATE TABLE tb_usuario(
id      INT          IDENTITY(1,1)      PRIMARY KEY
,nome_completo       NVARCHAR(255)                    NOT NULL
,nome_usuario        NVARCHAR(50)       UNIQUE        NOT NULL    
,email               NVARCHAR(255)      UNIQUE        NOT NULL
,senha               NVARCHAR(50)                     NOT NULL
,foto_perfil_url     NVARCHAR(50)                     NULL
,id_usuario          INT                              NOT NULL
);
  
  SELECT * FROM tb_usuario

 CREATE TABLE tb_publicacao(
 id     INT           IDENTITY(1,1)   PRIMARY KEY
 ,id_publicacao     INT 
 ,descricao         NVARCHAR(255)                     
 ,imagem_url        NVARCHAR(150)                      NULL
 ,data_publicacao   DATE                               NOT NULL
 );
  
   SELECT * FROM tb_publicacao

   CREATE TABLE tb_curtida(
   id         INT    IDENTITY(1,1)   PRIMARY KEY
   ,id_curtida       INT                                  NOT NULL
   ,id_usuario      INT                                   NOT NULL
   ,id_publicacao   INT                                   NOT NULL
   );

   SELECT * FROM tb_curtida

   CREATE TABLE tb_comentario(
   id         INT    IDENTITY(1,1)   PRIMARY KEY
   ,id_comentario    INT                                  NOT NULL
   ,id_usuario      INT                                   NOT NULL
   ,id_publicacao   INT                                   NOT NULL
   ,texto           VARCHAR(255)                         
   ,data_comentario DATE                                  NOT NULL
   );

   SELECT * FROM tb_comentario

   CREATE TABLE tb_seguidor(
   id         INT    IDENTITY(1,1)   PRIMARY KEY
   ,id_seguir       INT                                   NOT NULL
   ,id_seguidor    INT                                    NOT NULL
   );

   SELECT * FROM tb_seguidor