USE Aerodrom2;


DROP TABLE Putnik;
DROP TABLE Karta;
DROP TABLE Let;
DROP TABLE Avion;
DROP TABLE Pasos;
DROP TABLE Sletanje;
DROP TABLE Poletanje;
DROP TABLE Prtljag;



CREATE TABLE Avion
(
	AvionID int auto_increment,
    Model nvarchar(100),
    BrojLeta nvarchar(50) not null,
    PutniciEconomy int,
    PutniciBusiness int,
    BrojClanovaPosade int,
    Vlasnik nvarchar(100),
    PRIMARY KEY (AvionID)

);

CREATE TABLE Pasos
(
	PasosID int auto_increment PRIMARY KEY,
    Viza boolean not null,
    Ime nvarchar(100),
    Drzava nvarchar(100) not null,
    Prezime nvarchar(100),
    Godine int
);

CREATE TABLE Poletanje
(
	PoletanjeID int auto_increment PRIMARY KEY,
    Grad nvarchar(100) not null,
    Datum nvarchar(100) not null,
    Gate nvarchar(50) not null
);

CREATE TABLE Sletanje
(
	SletanjeID int auto_increment PRIMARY KEY,
    Grad nvarchar(100) not null,
    Datum nvarchar(100) not null,
    Gate nvarchar(50) not null
);

CREATE TABLE Prtljag
(
	PrtljagID int auto_increment PRIMARY KEY,
    RucniPrtljag boolean not null,
    Tezina int not null,
    PredjenaKontrola boolean not null,
    SifraPrtljag nvarchar(50) not null
);

CREATE TABLE Let
(
	LetID int auto_increment PRIMARY KEY,
    NazivLinije nvarchar(50),
    SifraLeta nvarchar(50) not null,
    Avion int,
    Poletanje int,
    Sletanje int,
    FOREIGN KEY (Avion)
    REFERENCES Avion (AvionID) ON DELETE CASCADE,
    FOREIGN KEY (Poletanje)
    REFERENCES Poletanje (PoletanjeID) ON DELETE CASCADE,
    FOREIGN KEY (Sletanje)
    REFERENCES Sletanje (SletanjeID) ON DELETE CASCADE
       
);

CREATE TABLE Karta
(
	KartaID int auto_increment PRIMARY KEY,
    CenaKarte int,
    BrojKredKartice nvarchar(100),
    Klasa nvarchar(50),
    Sediste int,
    SifraKarte nvarchar(50) not null,
    Let int,
    FOREIGN KEY (Let)
    REFERENCES Let (LetID) ON DELETE CASCADE
);

CREATE TABLE Putnik
(
	PutnikID int auto_increment PRIMARY KEY,
    Ime nvarchar(100),
    Prezime nvarchar(100),
    BrojTel nvarchar(100),
    EMail nvarchar(100),
    Godine int not null,
    JMBG nvarchar(100),
    Prtljag int,
    Pasos int,
    Karta int,
    FOREIGN KEY (Prtljag)
    REFERENCES Prtljag (PrtljagID) ON DELETE CASCADE,
    FOREIGN KEY (Pasos)
    REFERENCES Pasos (PasosID) ON DELETE CASCADE,
    FOREIGN KEY (Karta)
    REFERENCES Karta (KartaID) ON DELETE CASCADE
);







