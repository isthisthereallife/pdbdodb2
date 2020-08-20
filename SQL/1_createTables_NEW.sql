CREATE DATABASE kompdb;
USE kompdb;

CREATE TABLE filial(
id INT NOT NULL AUTO_INCREMENT,
namn VARCHAR(50),
adress VARCHAR(50), 
ort VARCHAR(20),
PRIMARY KEY(id));

CREATE TABLE program(
id INT NOT NULL AUTO_INCREMENT,
namn VARCHAR(50),
PRIMARY KEY(id));

CREATE TABLE kurs(
id INT NOT NULL AUTO_INCREMENT,
namn VARCHAR(50),
poang INT,
PRIMARY KEY(id));


#hade jag fått välja så hade dessa två varit EN tabell, med en boolean för om de är aktiva
CREATE TABLE elev_aktiv(
namn VARCHAR(50) NOT NULL,
personnummer VARCHAR(12) NOT NULL,
PRIMARY KEY(personnummer));

CREATE TABLE elev_inaktiv(
namn VARCHAR(50) NOT NULL,
personnummer VARCHAR(12) NOT NULL,
PRIMARY KEY(personnummer));

CREATE TABLE yrkestitel(
id INT NOT NULL AUTO_INCREMENT,
befattning VARCHAR(50) NOT NULL,
PRIMARY KEY(id));


CREATE TABLE anstalld(
id INT NOT NULL AUTO_INCREMENT,
namn VARCHAR(50) NOT NULL,
yrkestitel_id INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(yrkestitel_id) REFERENCES yrkestitel(id));


#relationstabeller

CREATE TABLE filialprogram(
#ska jag ha med den här fp_id? det blir lättare att hitta specifik post då. men måste filial_id och program_id vara PK fortfarande då?
filialprogram_id INT NOT NULL AUTO_INCREMENT,
filial_id INT NOT NULL,
program_id INT NOT NULL,
datum_start DATE,
datum_slut DATE,
PRIMARY KEY(filialprogram_id, filial_id, program_id, datum_start, datum_slut));

CREATE TABLE filialprogramkurs(
filialprogramkurs_id INT NOT NULL AUTO_INCREMENT,
kurs_id INT NOT NULL,
filialprogram_id INT NOT NULL,
datum_start DATE,
datum_slut DATE,
PRIMARY KEY(filialprogramkurs_id, kurs_id, filialprogram_id, datum_start, datum_slut));

CREATE TABLE obligatorisktmoment(
id INT NOT NULL,
filialprogramkurs_id INT NOT NULL,
namn VARCHAR(100),
beskrivning VARCHAR(1000),
PRIMARY KEY(id),
FOREIGN KEY (filialprogramkurs_id) REFERENCES filialprogramkurs(filialprogramkurs_id));


CREATE TABLE betyg_aktiv(
elev VARCHAR(12) NOT NULL,
filialprogramkurs_id INT NOT NULL,
gradering VARCHAR(20),
graderingsdatum DATE,
PRIMARY KEY (elev, filialprogramkurs_id));

CREATE TABLE betyg_inaktiv(
elev VARCHAR(12) NOT NULL,
filialprogramkurs_id INT NOT NULL,
gradering VARCHAR(20),
graderingsdatum DATE,
PRIMARY KEY (elev, filialprogramkurs_id));

CREATE TABLE kursanstalld(
anstalld_id INT NOT NULL,
filialprogramkurs_id INT NOT NULL,
ansvarig bit(1) NOT NULL DEFAULT 0,
PRIMARY KEY (anstalld_id, filialprogramkurs_id));




