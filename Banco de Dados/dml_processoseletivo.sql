--DML
USE db_devconnect;

--TABELA USUARIO
INSERT INTO tb_usuario(nome_completo,nome_usuario ,email,senha,foto_perfil_url)
VALUES
('Gustavo Lima', 'limaguu', 'gustavo@gmail.com','12543','abcdef'),
('Luan Santana', 'santanaa', 'luan@gmail.com','10988','fghijk' );

SELECT * FROM tb_usuario

--TABELA PUBLI
INSERT INTO  tb_publicacao(descricao,imagem_url, data_publicacao)
VALUES
('3890','novo album', '1098', '2013/08/23'),
('1235','com a familia', '0889', '2025/01/23');

SELECT * FROM tb_publicacao

--TABELA CURTIDA
INSERT INTO tb_curtida(id_curtida, id_usuario, id_publicacao)
('1010',' 2020',' 3030'),
('4040', '5050', '6060');

SELECT * FROM tb_curtida

--TABELA COMENTARIO
INSERT INTO tb_comentario(id_comentario,id_usuario,id_publicacao,texto,data_comentario)
('8005', '3667', '2567', 'bom dia', '2009/08/28'),
('0829','1098','1234','boa tarde','2007/04/28');

SELECT * FROM tb_comentario

--TABELA SEGUIDOR
INSERT INTO tb_seguidor(id_seguidor, id_seguir,data_publicacao)
VALUES
('7001', '1010', '2020', '2023/05/14'),
('7002', '3030', '4040', '2024/11/30');

SELECT * FROM tb_seguidor;

