CREATE DATABASE ma;
USE ma;
CREATE TABLE Usuario(
idUsuario int primary key auto_increment,
nomeUser VARCHAR(50),
email VARCHAR(20),
senha VARCHAR(20),
fkFavoritos INT,
foreign key (fkFavoritos) references Favoritos (idFavorito)  
);

CREATE TABLE Favoritos(
idFavorito INT auto_increment,
nomeFilme VARCHAR (50),
nomepersFAV VARCHAR(50),
fkFilmes INT,
foreign key (fkFilmes) references Filmes(idFilmes),
primary key (idFavorito, fkFilmes)
);

CREATE TABLE Filmes(
idFilmes int primary key auto_increment,
nomeFilme VARCHAR(50),
dtLancamento INT,
diretor VARCHAR(100)
);
drop table Filmes;
INSERT INTO Filmes VALUES
(null, 'Nausicaä do Vale do Vento', '1984', 'Hayao Miyazaki'),
(null, 'O Castelo no Céu', '1986', 'Hayao Miyazaki'),
(null, 'Meu Amigo Totoro', '1988', 'Hayao Miyazaki'),
(null, 'Túmulo dos Vagalumes', '1988', 'Hayao Miyazaki'),
(null, 'O Serviço de Entregas da Kiki', '1989', 'Hayao Miyazaki'),
(null, 'Porco Rosso: O Último Herói Romântico', '1992', 'Hayao Miyazaki'),
(null, 'Princesa Mononoke', '1997', 'Hayao Miyazaki'),
(null, 'A Viagem de Chihiro', '2001', 'Hayao Miyazaki'),
(null, 'O Castelo Animado', '2004', 'Hayao Miyazaki'),
(null, 'Ponyo: Uma Amizade Que Veio do Mar ', '2008', 'Hayao Miyazaki'),
(null, 'Vidas ao Vento', '2013', 'Hayao Miyazaki');
TRUNCATE table Filmes;
select * from Filmes;
 CREATE TABLE Personagens(
 idPersonagem int auto_increment,
 nomePersonagem VARCHAR(50),
 genero char(10),
 constraint chkgen CHECK (genero in('feminino', 'masculino','criatura mágica')),
 ax_filmes INT,
 foreign key (ax_filmes) references Filmes(idfilmes),
 primary key (idPersonagem, ax_filmes)
 );
 drop table Personagens;
 INSERT INTO Personagens VALUES
 (null, 'Kushana', 'feminino', 1),
 (null, 'Nausicaa', 'feminino', 1),
 (null, 'Asbel', 'masculino', 1),
 (null, 'Yupa', 'masculino', 1),
 (null, 'Sheeta', 'feminino', 2),
 (null, 'Dola', 'feminino', 2),
 (null, 'Pazu', 'masculino', 2),
 (null, 'Muska', 'masculino', 2),
 (null, 'Totoro', 'criatura mágica', 3),
 (null, 'Mei Kusakabe', 'feminino', 3),
 (null, 'Satsuki Kusakabe', 'feminino', 3),
 (null, 'Catbus', 'criatura mágica', 3),
 (null, 'Jiji', 'criatura mágica', 4),
 (null, 'Tombo', 'masculino', 4),
 (null, 'Ursula', 'feminino', 4),
 (null, 'Kiki', 'feminino', 4),
 (null, 'Gina', 'feminino', 5),
 (null, 'Porco Rosso', 'masculino', 5),
 (null, 'Fio Piccolo', 'feminino', 5),
 (null, 'Nausicaa', 'masculino', 9),
 (null, 'Nausicaa', 'masculino', 9),
 (null, 'Nausicaa', 'masculino', 9),
 (null, 'Nausicaa', 'masculino', 9),
 (null, 'Nausicaa', 'masculino', 10),
 (null, 'Nausicaa', 'masculino', 10),
 (null, 'Nausicaa', 'masculino', 10),
 (null, 'Nausicaa', 'masculino', 10),
 (null, 'Nausicaa', 'masculino', 11),
 (null, 'Nausicaa', 'masculino', 11),
 (null, 'Nausicaa', 'masculino', 11),
 (null, 'Nausicaa', 'masculino', 11);