--Dados Utilizando MySQL:

-- Criar a base de dados
CREATE DATABASE Filmes;

-- Utilizar a base de dados criada
USE Filmes;

-- Criar a tabela Atores
CREATE TABLE Atores (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    PrimeiroNome VARCHAR(20),
    UltimoNome VARCHAR(20),
    Genero VARCHAR(1)
);

-- Criar a tabela ElencoFilme
CREATE TABLE ElencoFilme (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdAtor INT NOT NULL,
    IdFilme INT,
    Papel VARCHAR(30),
    FOREIGN KEY (IdAtor) REFERENCES Atores(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

-- Criar a tabela Filmes
CREATE TABLE Filmes (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Ano INT,
    Duracao INT
);

-- Criar a tabela Generos
CREATE TABLE Generos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Genero VARCHAR(20)
);

-- Criar a tabela FilmesGenero
CREATE TABLE FilmesGenero (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdGenero INT,
    IdFilme INT,
    FOREIGN KEY (IdGenero) REFERENCES Generos(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

-- Inserir dados na tabela Atores
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (1, 'James', 'Stewart', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (2, 'Deborah', 'Kerr', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (3, 'Peter', 'OToole', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (4, 'Robert', 'DeNiro', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (6, 'Harrison', 'Ford', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (7, 'Stephen', 'Baldwin', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (8, 'Jack', 'Nicholson', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (9, 'Mark', 'Wahlberg', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (10, 'Woody', 'Allen', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (11, 'Claire', 'Danes', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (12, 'Tim', 'Robbins', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (13, 'Kevin', 'Spacey', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (14, 'Kate', 'Winslet', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (15, 'Robin', 'Williams', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (16, 'Jon', 'Voight', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (17, 'Ewan', 'McGregor', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (18, 'Christian', 'Bale', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (19, 'Maggie', 'Gyllenhaal', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (20, 'Dev', 'Patel', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (21, 'Sigourney', 'Weaver', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (22, 'David', 'Aston', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (23, 'Ali', 'Astin', 'F');

-- Inserir dados na tabela Filmes
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (1, 'Um Corpo que Cai', 1958, 128);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (2, 'Os Inocentes', 1961, 100);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (3, 'Lawrence da Arábia', 1962, 216);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (4, 'O Franco Atirador', 1978, 183);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (5, 'Amadeus', 1984, 160);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (6, 'Blade Runner', 1982, 117);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (7, 'De Olhos Bem Fechados', 1999, 159);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (8, 'Os Suspeitos', 1995, 106);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (9, 'Chinatown', 1974, 130);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (10, 'Boogie Nights - Prazer Sem Limites', 1997, 155);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (11, 'Noivo Neurótico, Noiva Nervosa', 1977, 93);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (12, 'Ponyo - Uma Amizade que Veio do Mar', 2008, 101);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (13, 'Um Sonho de Liberdade', 1994, 142);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (14, 'Beleza Americana', 1999, 122);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (15, 'Titanic', 1997, 195);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (16, 'Gênio Indomável', 1997, 126);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (17, 'Fogo Contra Fogo', 1995, 170);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (18, 'Trainspotting - Sem Limites', 1996, 94);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (19, 'Donnie Darko', 2001, 113);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (20, 'Quem Quer Ser um Milionário?', 2008, 120);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (21, 'Alien - O 8º Passageiro', 1979, 117);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (22, 'Matrix', 1999, 136);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (23, 'Além do Mar', 2004, 118);

-- Inserir dados na tabela ElencoFilme
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (1, 1, 1, 'John Scottie Ferguson');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (2, 2, 2, 'Miss Giddens');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (3, 3, 3, 'T.E. Lawrence');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (4, 4, 4, 'Michael');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (5, 6, 6, 'Rick Deckard');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (6, 7, 8, 'McManus');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (7, 9, 10, 'Eddie Adams');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (8, 10, 11, 'Alvy Singer');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (9, 11, 12, 'San');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (10, 12, 13, 'Andy Dufresne');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (11, 13, 14, 'Lester Burnham');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (12, 14, 15, 'Rose DeWitt Bukater');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (13, 15, 16, 'Sean Maguire');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (14, 16, 17, 'Ed');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (15, 17, 18, 'Renton');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (16, 19, 20, 'Elizabeth Darko');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (17, 20, 21, 'Older Jamal');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (18, 21, 22, 'Ripley');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (19, 13, 23, 'Bobby Darin');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (20, 8, 9, 'J.J. Gittes');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (21, 18, 19, 'Alfred Borden');

-- Inserir dados na tabela Generos
INSERT INTO Generos (Id, Genero) VALUES (1, 'Drama');
INSERT INTO Generos (Id, Genero) VALUES (2, 'Suspense');
INSERT INTO Generos (Id, Genero) VALUES (3, 'Comédia');
INSERT INTO Generos (Id, Genero) VALUES (4, 'Aventura');
INSERT INTO Generos (Id, Genero) VALUES (5, 'Romance');

-- Inserir dados na tabela FilmesGenero
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (1, 1, 1);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (2, 1, 2);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (3, 2, 3);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (4, 2, 4);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (5, 3, 5);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (6, 1, 6);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (7, 2, 7);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (8, 1, 8);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (9, 4, 9);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (10, 2, 10);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (11, 4, 11);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (12, 2, 12);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (13, 5, 13);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (14, 5, 14);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (15, 2, 15);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (16, 4, 16);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (17, 1, 17);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (18, 4, 18);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (19, 4, 19);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (20, 1, 20);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (21, 2, 21);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (22, 2, 22);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (23, 5, 23);


Queries MySQL:

1 - Buscar o nome e ano dos filmes:
SELECT Nome, Ano FROM Filmes;

2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano:
SELECT Nome, Ano FROM Filmes ORDER BY Ano;

3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração:

