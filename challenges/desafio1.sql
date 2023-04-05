 DROP DATABASE IF EXISTS SpotifyClone; 
 CREATE DATABASE IF NOT EXISTS SpotifyClone;
 USE SpotifyClone;
 
CREATE TABLE SpotifyClone.artistas(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.planos(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(50) NOT NULL,
    valor DOUBLE NOT NULL
) engine = InnoDB;

 CREATE TABLE SpotifyClone.usuario(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
	plano_id INT,
    data_de_assinatura DATE NOT NULL,
	FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(50),
    artista_id INT,
	FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.seguindo(
	usuario_id INT,
    artista_id INT,
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.musicas(
    musica_id INT PRIMARY KEY AUTO_INCREMENT,
    album_id INT,
    musica VARCHAR(50) NOT NULL,
    duracao INT NOT NULL,
    ano_lancamento YEAR NOT NULL,
    FOREIGN KEY(album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historico(
    usuario_id INT,
    musica_id INT,
    CONSTRAINT PRIMARY KEY(usuario_id, musica_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (musica_id) REFERENCES musicas (musica_id),
    data_de_reproducao DATETIME NOT NULL
) engine = InnoDB;

INSERT INTO artistas (artista_id, nome_artista) VALUES (1,'Beyoncé');
INSERT INTO artistas (artista_id, nome_artista) VALUES (2,'Queen');
INSERT INTO artistas (artista_id, nome_artista) VALUES (3,'Elis Regina');
INSERT INTO artistas (artista_id, nome_artista) VALUES (4,'Baco Exu do Blues');
INSERT INTO artistas (artista_id, nome_artista) VALUES (5,'Blind Guardian');
INSERT INTO artistas (artista_id, nome_artista) VALUES (6,'Nina Simone');

INSERT INTO planos (plano_id, plano, valor) VALUES ('1', 'gratuito', '0.00');
INSERT INTO planos (plano_id, plano, valor) VALUES ('2', 'familiar', '7.99');
INSERT INTO planos (plano_id, plano, valor) VALUES ('3', 'universitário', '5.99');
INSERT INTO planos (plano_id, plano, valor) VALUES ('4', 'pessoal', '6.99');

INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('1', 'Barbara Liskov', '82', '1', '2019-10-20');
INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('2', 'Robert Cecil Martin', '58', '1', '2017-01-06');
INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('3', 'Ada Lovelace', '37', '2', '2017-12-30');
INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('4', 'Martin Fowler', '46', '2', '2017-01-17');
INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('5', 'Sandi Metz', '58', '2', '2018-04-29');
INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('6', 'Paulo Freire', '19', '3', '2018-02-14');
INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('7', 'Bell Hooks', '26', '3', '2018-01-05');
INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('8', 'Christopher Alexander', '85', '4', '2019-06-05');
INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('9', 'Judith Butler', '45', '4', '2020-05-13');
INSERT INTO usuario (usuario_id, nome_usuario, idade, plano_id, data_de_assinatura) VALUES ('10', 'Jorge Amado', '58', '4', '2017-02-17');

INSERT INTO albuns (album_id, album) VALUES ('1', 'Renaissance');
INSERT INTO albuns (album_id, album) VALUES ('2', 'Jazz');
INSERT INTO albuns (album_id, album) VALUES ('3', 'Hot Space');
INSERT INTO albuns (album_id, album) VALUES ('4', 'Falso Brilhante');
INSERT INTO albuns (album_id, album) VALUES ('5', 'Vento de Maio');
INSERT INTO albuns (album_id, album) VALUES ('6', 'QVVJFA?');
INSERT INTO albuns (album_id, album) VALUES ('7', 'Somewhere Far Beyond');
INSERT INTO albuns (album_id, album) VALUES ('8', 'I Put A Spell On You');


INSERT INTO seguindo (usuario_id, artista_id) VALUES ('1', '1');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('1', '2');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('1', '3');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('2', '1');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('2', '3');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('3', '2');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('4', '4');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('5', '5');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('5', '6');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('6', '6');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('6', '1');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('7', '6');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('9', '3');
INSERT INTO seguindo (usuario_id, artista_id) VALUES ('10', '2');

INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (1,"BREAK MY SOUL", '279', '2022',1);
INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (2,"VIRGO\'S GROOVE",  '369', '2022',1);
INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (3,"ALIEN SUPERSTAR", '116', '2022',1);
INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (4,"Don\'t Stop Me Now", '203', '1978',2);
INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (5,"Under Pressure", '152', '1982',3);
INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (6,"Como Nossos Pais", '105', '1998',4);
INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (7,"O Medo de Amar é o Medo de Ser Livre", '207', '2001',5);
INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (8,"Samba em Paris", '267', '2003',6);
INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (9,"The Bard\'s Song", '244', '2007',7);
INSERT INTO musicas (musica_id, musica, duracao, ano_lancamento, album_id) VALUES (10,"Feeling Good", '100', '2012',8);


INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (1, 8, "2022-02-28 10:45:55");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (1, 2, "2020-05-02 05:30:35");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (1, 10, "2020-03-06 11:22:33");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (2, 10, "2022-08-05 08:05:17");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (2, 7, "2020-01-02 07:40:33");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (3, 10, "2020-11-13 16:55:13");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (3, 2, "2020-12-05 18:38:30");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (4, 8, "2021-08-15 17:10:10");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (5, 8, "2022-01-09 01:44:33");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (5, 5, "2020-08-06 15:23:43");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (6, 7, "2017-01-24 00:31:17");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (6, 1, "2017-10-12 12:35:20");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (7, 4, "2011-12-15 22:30:49");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (8, 4, "2012-03-17 14:56:41");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (9, 9, "2022-02-24 21:14:22");
INSERT INTO historico (usuario_id, musica_id, data_de_reproducao) VALUES (10, 3, "2015-12-13 08:30:22");