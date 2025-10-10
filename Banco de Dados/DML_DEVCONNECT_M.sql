--DML
USE db_devconnect_M;


INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES
('Beatriz Andrade de Jesus', 'biia.cs', 'biawew@gmail.com', 'senai@123', 'https://www.fotodeperfil1.com'),
('Giovanna Lima', 'GibsBurra', 'giovanna@gmail.com', 'senai@134', 'https://www.fotodeperfil2.com');

INSERT INTO tb_publicacao(descricao, imagemurl, data_publicacao, id_usuario)
VALUES
('Essa imagem é muito lindaaa', 'https://www.fotopublicacao1.com', '2025-10-10 15:00:00', 1);

INSERT INTO tb_comentario(texto, data_comentario, id_usuario, id_publicacao)
VALUES
('Nossa realmente essa imagem é muito linda ne', '2025-10-10 16:00:00', 2, 1);

INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES
(2,1);

INSERT INTO tb_seguidor(id_usuario_seguidor, id_usuario_seguido)
VALUES
(1,2);

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES
('Nathalia Duarte', 'Natotaria', 'natiadm@gmail.com', 'senai@123', 'https://www.fotodeperfil3.com'),
('Marhia Paula', 'amapa123', 'Amapapapa@gmail.com', 'senai@134', 'https://www.fotodeperfil4.com');

INSERT INTO tb_publicacao(descricao, imagemurl, data_publicacao, id_usuario)
VALUES
('Esee jogo é mt ruim, pessimo', 'https://www.fotopublicacao2.com', '2025-10-10 12:00:00', 4);

INSERT INTO tb_comentario(texto, data_comentario, id_usuario, id_publicacao)
VALUES
('Nunca mais faco isso...', '2025-10-10 16:00:00', 3, 2);

INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES
(1, 2),
(2, 2);

INSERT INTO tb_seguidor(id_usuario_seguidor, id_usuario_seguido)
VALUES 
(3,4),
(4,2);


GO


DELETE FROM tb_curtida;
DELETE FROM tb_comentario;
DELETE FROM tb_publicacao;
DELETE FROM tb_seguidor;


DELETE FROM tb_usuario
WHERE nome_completo IN (
  'Felipe Gomes de Meneses',
  'Felipe Somera',
  'Rafael Moura',
  'Arthur Batista'
);
GO


SELECT * FROM tb_usuario;




