DROP SCHEMA IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;

USE SpotifyClone;

CREATE TABLE SpotifyClone.artist(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100)
);

INSERT INTO SpotifyClone.`artist`(name)
VALUES ('Beyoncé'),
('Queen'),
('Elis Regina'),
('Baco Exu do Blues'),
('Blind Guardian'),
('Nina Simone');


CREATE TABLE SpotifyClone.cancoes(
cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
cancoes VARCHAR(100),
duracao_segundos INT
);

INSERT INTO SpotifyClone.`cancoes`(cancoes, duracao_segundos)
VALUES ('BREAK MY SOUL',279),
('VIRGO’S GROOVE', 369),
('ALIEN SUPERSTAR', 116),
('Don’t Stop Me Now', 203),
('Under Pressure', 152),
('Como Nossos Pais', 105),
('O Medo de Amar é o Medo de Ser Livre', 207),
('Samba em Paris', 267),
('The Bard’s Song', 244),
('Feeling Good', 100);

CREATE TABLE SpotifyClone.usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(100),
idade INT
);

INSERT INTO SpotifyClone.`usuario`(usuario, idade)
VALUES ('Barbara Liskov', 82),
('Robert Cecil Martin', 58),
('Ada Lovelace', 37),
('Martin Fowler', 46),
('Sandi Metz', 58),
('Paulo Freire', 19),
('Bell Hooks', 26),
('Christopher Alexander', 85),
('Judith Butler', 45),
('Jorge Amado', 58);

CREATE TABLE SpotifyClone.plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(100),
data_assinatura VARCHAR(100),
valor_plano VARCHAR(100)
);

INSERT INTO SpotifyClone.`plano`(plano, data_assinatura, valor_plano)
VALUES ('gratuito', '2019-10-20', '0.00'),
('gratuito', '2017-01-06', '0.00'),
('familiar', '2017-12-30', '7.99'),
('familiar', '2017-01-17', '7.99'),
('familiar', '2018-04-29', '7.99'),
('universitário', '2018-02-14', '5.99'),
('universitário', '2018-01-05', '5.99'),
('pessoal', '2019-06-05', '6.99'),
('pessoal', '2020-05-13', '6.99'),
('pessoal', '2017-02-17', '6.99');

CREATE TABLE SpotifyClone.album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(100),
artista_id INT,
ano_lancamento INT
);

INSERT INTO SpotifyClone.`album`(album, artista_id, ano_lancamento)
VALUES ('Renaissance', 1, 2022),
('Jazz', 2, 1978),
('Hot Space', 2, 1982),
('Falso Brilhante', 3, 1998),
('Vento de Maio', 3, 2001),
('QVVJFA?', 4, 2003),
('Somewhere Far Beyond?', 5, 2007),
('I Put A Spell On You', 6, 2012);

CREATE TABLE SpotifyClone.historico_de_reproducoes(
usuario_id INT,
cancoes_id INT,
data_reproducao VARCHAR(100),
PRIMARY KEY(usuario_id, cancoes_id)
);

INSERT INTO SpotifyClone.`historico_de_reproducoes`(usuario_id, cancoes_id, data_reproducao)
VALUES (1, 8, '2022-02-28 10:45:55'),
(1, 2, '2020-05-02 05:30:35'),
(1, 10, '2020-03-06 11:22:33'),
(2, 10, '2022-08-05 08:05:17'),
(2, 7, '2020-01-02 07:40:33'),
(3, 10, '2020-11-13 16:55:13'),
(3, 2, '2020-12-05 18:38:30'),
(4, 4, '2021-08-15 17:10:10'),
(5, 8, '2022-01-09 01:44:33'),
(5, 5, '2020-08-06 15:23:43'),
(6, 7, '2017-01-24 00:31:17'),
(6, 1, '2017-10-12 12:35:20'),
(7, 7, '2011-12-15 22:30:49'),
(8, 8, '2012-03-17 14:56:41'),
(9, 9, '2022-02-24 21:14:22'),
(10, 8, '2015-12-13 08:30:22');

CREATE TABLE SpotifyClone.cancoes_album(
cancoes_id INT AUTO_INCREMENT,
album_id INT,
PRIMARY KEY(cancoes_id, album_id)
);

INSERT INTO SpotifyClone.`cancoes_album`(album_id)
VALUES (1),
(1),
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);

CREATE TABLE SpotifyClone.seguindo_artistas(
usuario_id INT,
artist_id INT,
PRIMARY KEY(usuario_id, artist_id)
);

INSERT INTO SpotifyClone.`seguindo_artistas`(usuario_id, artist_id)
VALUES (1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(4, 4),
(5, 5),
(5, 6),
(6, 6),
(6, 1),
(7, 6),
(8, 0),
(9, 3),
(10, 2);
