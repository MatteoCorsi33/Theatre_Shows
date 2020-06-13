USE theatre_shows;

INSERT INTO Cities VALUES(1, 'Verona');
INSERT INTO Cities VALUES(2, 'Legnago');
INSERT INTO Cities VALUES(3, 'San Bonifacio');

INSERT INTO Theatres VALUES(1, 'Teatro Romano' , 1, 'Rigaste Redentore, 2');
INSERT INTO Theatres VALUES(2, 'Teatro Nuovo' , 1, 'Piazza Francesco Viviani, 10');
INSERT INTO Theatres VALUES(3, 'Teatro Salieri' , 2, 'Via XX Settembre, 26');
INSERT INTO Theatres VALUES(4, 'Teatro Centrale' , 3, 'Via Guglielmo Marconi, 5');

INSERT INTO TheatreCompanies VALUES(1, 'Le borracce');
INSERT INTO TheatreCompanies VALUES(2, "L'arca di Noe");
INSERT INTO TheatreCompanies VALUES(3, 'Gli amici del teatro');

INSERT INTO Shows VALUES(1, 'Vita di un falegname', 2, "Spettacolo sulla vita di un falegname", '01:30:00', 10, 'vitadiunfalegname.png');
INSERT INTO Shows VALUES(2, 'La morte di Jason', 1, "Spettacolo sulla morte di Jason", '02:00:00', 7.50, 'lamortedijason.png');
INSERT INTO Shows VALUES(3, 'Lasciateci divertire', 3, "Spettacolo di persone che vogliono divertirsi", '01:15:00', 5.20, 'lasciatecidivertire.png');

INSERT INTO Events VALUES(1, 2, 1, '2020-07-12 20:30:00');
INSERT INTO Events VALUES(2, 1, 3, '2020-07-25 18:00:00');
INSERT INTO Events VALUES(3, 1, 3, '2020-08-07 17:30:00');
INSERT INTO Events VALUES(4, 3, 1, '2020-09-03 14:30:00');
INSERT INTO Events VALUES(5, 4, 1, '2020-08-07 17:30:00');
INSERT INTO Events VALUES(6, 4, 2, '2020-07-07 18:30:00');