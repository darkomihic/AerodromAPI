USE Aerodrom2;

TRUNCATE TABLE  Putnik;
TRUNCATE TABLE  Karta;
TRUNCATE TABLE Let;
TRUNCATE TABLE  Avion;
TRUNCATE TABLE  Pasos;
TRUNCATE TABLE  Poletanje;
TRUNCATE TABLE  Sletanje;
TRUNCATE TABLE  Prtljag;



INSERT INTO Avion(Model,BrojLeta, PutniciEconomy, PutniciBusiness, BrojClanovaPosade, Vlasnik) values('Boing 747','MUN703',103,50,20,'Turkish Airlines');
INSERT INTO Avion(Model,BrojLeta, PutniciEconomy, PutniciBusiness, BrojClanovaPosade, Vlasnik)  values('Boing 737','BER533',123,47,22,'Etihad Airlines');

INSERT INTO Pasos(Viza, Ime, Drzava, Prezime, Godine) values(true,'Gojko','Srbija','Zemunac',47);
INSERT INTO Pasos(Viza, Ime, Drzava, Prezime, Godine) values(false,'Sofronije','Bugarska','Aziv',32);

INSERT INTO Poletanje(Grad, Datum, Gate) values('Minhen','30-05-2023','L7');
INSERT INTO Poletanje(Grad, Datum, Gate) values('Berlin','30-05-2023','P3');

INSERT INTO Sletanje(Grad, Datum, Gate) values('Paris','30-05-2023','G7');
INSERT INTO Sletanje(Grad, Datum, Gate) values('Budapest','30-05-2023','N2');

INSERT INTO Prtljag(RucniPrtljag, Tezina, PredjenaKontrola, SifraPrtljag) values(false,19,true,'AEF23');
INSERT INTO Prtljag(RucniPrtljag, Tezina, PredjenaKontrola, SifraPrtljag) values(false,18,true,'GEF87');

INSERT INTO Let(NazivLinije, SifraLeta, Avion, Poletanje, Sletanje) values('MUNPAR332','54729232',1,1,1);
INSERT INTO Let(NazivLinije, SifraLeta, Avion, Poletanje, Sletanje) values('BERBUD602','48237843',2,2,2);

INSERT INTO Karta(CenaKarte, BrojKredKartice, Klasa, Sediste, SifraKarte, Let) values(130,'8398938457684728','Economy',33,'SFT484',1);
INSERT INTO Karta(CenaKarte, BrojKredKartice, Klasa, Sediste, SifraKarte, Let) values(340,'1432960580674768','Business',2,'BTR132',2);

INSERT INTO Putnik(Ime, Prezime, BrojTel, EMail, Godine, JMBG, Prtljag, Pasos, Karta) values('Gojko','Zemunac','0695548874','gojkomunzekonza@gmail.com',47,'300182957237391',1,1,1);
INSERT INTO Putnik(Ime, Prezime, BrojTel, EMail, Godine, JMBG, Prtljag, Pasos, Karta) values('Sofronije','Aziv','06348593923','azivkralj@gmail.com',32,'20194123498345',2,2,2);

