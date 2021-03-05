DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(5,2) NOT NULL
);

CREATE TABLE historico(
historico_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_reproducao VARCHAR(50) NOT NULL
);

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_usuario VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
); 

CREATE TABLE usuario_historico(
usuario_id INT NOT NULL,
historico_id INT NOT NULL,
PRIMARY KEY(usuario_id, historico_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (historico_id) REFERENCES historico(historico_id)
);

CREATE TABLE artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_artista VARCHAR(50) NOT NULL,
sobrenome_artista VARCHAR(50) NOT NULL
);

CREATE TABLE usuario_artista(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

CREATE TABLE album(
album_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_album VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
); 

CREATE TABLE cancao(
cancao_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_cancao VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
); 

INSERT INTO plano (nome_plano, valor_plano) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO historico (nome_reproducao) VALUES
('Soul For Us'),
('Magic Circus'),
('Diamond Power'),
('Thang Of Thunder'),
('Home Forever'),
('Words Of Her Life'),
('Reflections Of Magic'),
("Honey, Let's Be Silly"),
('Troubles Of My Inner Fire'),
('Thang Of Thunder'),
('Magic Circus'),
('Dance With Her Own'),
('Without My Streets'),
('Celebration Of More');

INSERT INTO usuario (nome_usuario, idade, plano_id) VALUES
('Thati', 23, 1),
('Cintia', '35', 2),
('Bill', '20', 3),
('Roger', '45', 1);

INSERT INTO usuario_historico (usuario_id,historico_id) VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(2,5),
(2,6),
(2,7),
(2,8),
(3,9),
(3,10),
(3,11),
(4,12),
(4,13),
(4,14);

INSERT INTO artista (nome_artista, sobrenome_artista) VALUES
('Walter', 'Phoenix'),
('Freedie', 'Shannon'),
('Lance', 'Day'),
('Peter', 'Strong');

INSERT INTO usuario_artista (usuario_id, artista_id) VALUES
(1,1),
(1,2),
(1,3),
(2,1),
(2,3),
(3,4),
(3,1),
(4,2);

INSERT INTO album (nome_album, artista_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 4),
('Incandescent', 3),
('Temporary Culture', 2);

INSERT INTO cancao (nome_cancao, album_id) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);
