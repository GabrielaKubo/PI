-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
CREATE DATABASE ma;
USE ma;
CREATE TABLE Filmes(
idFilmes int primary key auto_increment,
nomeFilme VARCHAR(50),
dtLancamento INT,
diretor VARCHAR(100)
);

CREATE TABLE Personagens(
 idPersonagem int auto_increment,
 nomePersonagem VARCHAR(50),
 genero VARCHAR(50),
 constraint chkgen CHECK (genero in('feminino', 'masculino','criatura mágica')),
 ax_filmes INT,
 foreign key (ax_filmes) references Filmes(idfilmes),
 primary key (idPersonagem, ax_filmes)
 );
 
CREATE TABLE Distribuidora(
idDis int primary key auto_increment,
nomeDis VARCHAR(50),
receita VARCHAR(20),
ay_filme INT,
foreign key (ay_Filme) references Filmes (idFilmes)  
);

CREATE TABLE Usuario(
idUsuario INT auto_increment primary key,
nomeUser VARCHAR (50),
email VARCHAR(50),
senha VARCHAR(20),
fkFilmes INT,
foreign key (fkFilmes) references Filmes(idFilmes),
fkPersonagem INT,
foreign key (fkPersonagem) references Personagens(idPersonagem)
);
 



 
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
 (null, 'Seita', 'masculino', 3),
 (null, 'Setsuko', 'feminino', 3),
 (null, 'Jiji', 'criatura mágica', 5),
 (null, 'Tombo', 'masculino', 5),
 (null, 'Ursula', 'feminino', 5),
 (null, 'Kiki', 'feminino', 5),
 (null, 'Gina', 'feminino', 6),
 (null, 'Porco Rosso', 'masculino', 6),
 (null, 'Fio Piccolo', 'feminino', 6),
 (null, 'Ashitaka', 'masculino', 7),
 (null, 'San', 'feminino', 7),
 (null, 'Moro', 'criatura mágica', 7),
 (null, 'Lady Eboshi', 'feminino', 7),
 (null, 'Chihiro Ogino', 'feminino', 8),
 (null, 'Haku', 'masculino', 8),
 (null, 'Lin', 'feminino', 8),
 (null, 'Sem Rosto', 'criatura mágica', 8),
 (null, 'Sophie Hatter', 'feminino', 9),
 (null, 'Howl', 'masculino', 9),
 (null, 'Calcifer', 'criatura mágica', 9),
 (null, 'Cabeça de Nabo', 'criatura mágica', 9),
 (null, 'Markl', 'masculino', 9),
 (null, 'Sosuke', 'masculino', 10),
 (null, 'Ponyo', 'feminino', 10),
 (null, 'Lisa', 'feminino', 10),
 (null, 'Fujimoto', 'masculino', 10),
 (null, 'Granmamare', 'criatura mágica', 10),
 (null, 'Nahoko Satomi', 'masculino', 11),
 (null, 'Jiro Horikoshi', 'masculino', 11),
 (null, 'Honjo', 'masculino', 11);
 
 INSERT INTO Distribuidora VALUES
(null, 'Toei Company','	¥ 180 milhões', 1),
(null, 'Toei Company','US$ 15,5milhões', 2),
(null,'Toei Company','US$ 45,1milhões', 3),
(null, 'Toho','US$ 516,9milhões',4),
(null, 'Toei Company','¥ 800 milhões',5),
(null, 'Toho','	US$ 59 milhões',6),
(null, 'Toho','US$ 159,4 milhões',7),
(null, 'Toho','US$ 347,7 milhões',8),
(null, 'Toho', 'US$ 236 milhões',9),
(null, 'Toho', 'US$ 202,5 milhões',10),
(null, 'Toho', 'US$ 136.454.220', 11);

INSERT INTO Usuario (idUsuario, nomeUser, email, senha, fkFilmes, fkPersonagem) Values
 (null, 'Gabriela','gabriela@email','123',7 , 23);
 
 
 select * from Filmes;
 select * from Personagens;
 select * from Distribuidora;
 
 select * from Filmes JOIN Personagens ON Filmes.idFilmes = Personagens.ax_filmes JOIN Usuario ON Filmes.idFilmes = Usuario.fkFilmes;
 select * from Usuario as u JOIN Filmes as f on u.fkFilmes=f.idFilmes JOIN Personagens as p ON u.fkPersonagem=p.idPersonagem WHERE idUsuario = 1;
 select * from Usuario as u JOIN Filmes as f on u.fkFilmes=f.idFilmes JOIN Personagens as p ON u.fkPersonagem=p.idPersonagem WHERE idUsuario = 1;