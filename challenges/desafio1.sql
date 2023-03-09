DROP DATABASE IF EXISTS SpotifyClone;

 CREATE DATABASE IF NOT EXISTS SpotifyClone;

 CREATE TABLE SpotifyClone.plano(
   plano_id INT PRIMARY KEY AUTO_INCREMENT,
   plano_name VARCHAR(15) NOT NULL,
   plano_valor DECIMAL(5, 2) NOT NULL,
) engine = InnoDB;

 CREATE TABLE SpotifyClone.usuarios(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_name VARCHAR(70) NOT NULL, 
    usuario_idade INT NOT NULL,
    plano_id INT NOT NULL
    FOREIGN KEY (plano_id) REFERENCES plano(plano_id),
) engine = InnoDB;

  CREATE TABLE SpotifyClone.artistas(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_name VARCHAR(30) NOT NULL
) engine = InnoDB;

 CREATE TABLE SpotifyClone.albuns(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(30) NOT NULL,
    artista_id INT PRIMARY KEY AUTO_INCREMENT
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
    cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
    cancoes_name VARCHAR(40) NOT NULL
    album_id INT AUTO_INCREMENT,
    FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo_artistas(
    usuario_id INT AUTO_INCREMENT,
    artista_id INT AUTO_INCREMENT
    PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historico(
   usuario_id INT AUTO_INCREMENT,
   cancoes_id INT AUTO_INCREMENT
   PRIMARY KEY(usuario_id, cancoes_id),
   FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
   FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id)
) engine = InnoDB;

INSERT INTO
    SpotifyClone.plano (plano_id, plano_name, plano_valor)
VALUES
    (1, 'gratuito', 0.00),
    (2, 'familiar', 7.99),
    (3, 'universitário', 5.99),
    (4, 'pessoal', 6.99);

INSERT INTO
    SpotifyClone.usuarios (usuario_id, usuario_name, usuario_idade, plano_id)
VALUES
    (1, 'Barbara Liskov', 82, 1),
    (2, 'Robert Cecil Martin', 58, 1),
    (3, 'Ada Lovelace', 37, 4),
    (4, 'Martin Fowler', 46, 4),
    (5, 'Sandi Metz', 58, 4),
    (6, 'Paulo Freire', 19, 2),
    (7, 'Bell Hooks', 26, 2),
    (8, 'Christopher Alexander', 85, 3),
    (9, 'Judith Butler', 45, 3),
    (10, 'Jorge Amado', 58, 3);

INSERT INTO
    SpotifyClone.artistas (artista_id, artista_name)
VALUES
    (1, 'Beyoncé'),
    (2, 'Queen'),
    (3, 'Elis Regina'),
    (4, 'Baco Exu do Blues'),
    (5, 'Blind Guardian'),
    (6, 'Nina Simone');

INSERT INTO
    SpotifyClone.albuns (album_id, album_name, artist_id)
VALUES
    (1, 'Renaissance', 1),
    (2, 'Jazz', 2),
    (3, 'Hot Space', 2),
    (4, 'Falso Brilhante', 3),
    (5, 'Vento de Maio', 3),
    (6, 'QVVJFA?', 4),
    (7, 'Somewhere Far Beyond', 5),
    (8, 'I Put A Spell On You', 6);

INSERT INTO
    SpotifyClone.cancoes (cancoes_id, cancoes_name, album_id)
VALUES
    (1, 'BREAK MY SOUL', 1),
    (2, "VIRGO\'S GROOVE", 1),
    (3, 'ALIEN SUPERSTAR', 1),
    (4, "Don\'t Stop Me Now", 2),
    (5, 'Under Pressure', 2),
    (6, 'Como Nossos Pais', 3),
    (7, 'O Medo de Amar é o Medo de Ser Livre', 3),
    (8, 'Samba em Paris', 4),
    (9, "The Bard's Song", 5),
    (10, 'Feeling Good', 6);

INSERT INTO
    SpotifyClone.seguindo_artistas (usuario_id, artista_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 1),
    (6, 6),
    (7, 6),
    (9, 3),
    (10, 2);

INSERT INTO
    SpotifyClone.historico (usuario_id, cancoes_id)
VALUES
    (1, 8),
    (1, 2),
    (1, 10),
    (2, 10),
    (2, 7),
    (3, 10),
    (3, 2),
    (4, 8),
    (5, 8),
    (5, 5),
    (6, 7),
    (6, 1),
    (7, 4),
    (8, 4),
    (9, 9),
    (10, 3);