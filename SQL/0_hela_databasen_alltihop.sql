-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for kompdb
CREATE DATABASE IF NOT EXISTS `kompdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `kompdb`;

-- Dumping structure for table kompdb.anstalld
CREATE TABLE IF NOT EXISTS `anstalld` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namn` varchar(50) NOT NULL,
  `yrkestitel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `yrkestitel_id` (`yrkestitel_id`),
  CONSTRAINT `anstalld_ibfk_1` FOREIGN KEY (`yrkestitel_id`) REFERENCES `yrkestitel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.anstalld: ~5 rows (approximately)
/*!40000 ALTER TABLE `anstalld` DISABLE KEYS */;
INSERT INTO `anstalld` (`id`, `namn`, `yrkestitel_id`) VALUES
	(1, 'Ulla Utbled', 2),
	(2, 'Rebecka Reqtour', 3),
	(3, 'Lisa Lär', 1),
	(4, 'Tess Teachy', 1),
	(5, 'Ulrika Undervis', 2);
/*!40000 ALTER TABLE `anstalld` ENABLE KEYS */;

-- Dumping structure for view kompdb.betygsutdragsvy
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `betygsutdragsvy` (
	`Namn` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Personnummer` VARCHAR(12) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Kurs` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`YH-Poäng` INT(11) NULL,
	`Betyg` VARCHAR(20) NULL COLLATE 'utf8mb4_general_ci',
	`Graderingsdatum` DATE NULL,
	`Kursstart` DATE NOT NULL,
	`Kursslut` DATE NOT NULL,
	`Ansvarig Lärare` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Program` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`Programstart` DATE NOT NULL,
	`Programslut` DATE NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for table kompdb.betyg_aktiv
CREATE TABLE IF NOT EXISTS `betyg_aktiv` (
  `elev` varchar(12) NOT NULL,
  `filialprogramkurs_id` int(11) NOT NULL,
  `gradering` varchar(20) DEFAULT NULL,
  `graderingsdatum` date DEFAULT NULL,
  PRIMARY KEY (`elev`,`filialprogramkurs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.betyg_aktiv: ~8 rows (approximately)
/*!40000 ALTER TABLE `betyg_aktiv` DISABLE KEYS */;
INSERT INTO `betyg_aktiv` (`elev`, `filialprogramkurs_id`, `gradering`, `graderingsdatum`) VALUES
	('193012122830', 4, NULL, NULL),
	('195903238247', 4, NULL, NULL),
	('198508053905', 1, NULL, NULL),
	('198508053905', 2, NULL, NULL),
	('198508053905', 3, NULL, NULL),
	('199002033838', 1, NULL, NULL),
	('199002033838', 2, NULL, NULL),
	('199002033838', 3, NULL, NULL);
/*!40000 ALTER TABLE `betyg_aktiv` ENABLE KEYS */;

-- Dumping structure for table kompdb.betyg_inaktiv
CREATE TABLE IF NOT EXISTS `betyg_inaktiv` (
  `elev` varchar(12) NOT NULL,
  `filialprogramkurs_id` int(11) NOT NULL,
  `gradering` varchar(20) DEFAULT NULL,
  `graderingsdatum` date DEFAULT NULL,
  PRIMARY KEY (`elev`,`filialprogramkurs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.betyg_inaktiv: ~9 rows (approximately)
/*!40000 ALTER TABLE `betyg_inaktiv` DISABLE KEYS */;
INSERT INTO `betyg_inaktiv` (`elev`, `filialprogramkurs_id`, `gradering`, `graderingsdatum`) VALUES
	('192001013880', 5, 'VG', '2015-10-10'),
	('192001013880', 6, 'G', '2016-11-12'),
	('192001013880', 7, 'G', '2017-05-12'),
	('192506071234', 5, 'G', '2015-10-10'),
	('192506071234', 6, 'G', '2016-11-12'),
	('192506071234', 7, 'G', '2017-05-12'),
	('199712142830', 5, 'VG', '2015-10-10'),
	('199712142830', 6, 'VG', '2016-11-12'),
	('199712142830', 7, 'VG', '2017-05-12');
/*!40000 ALTER TABLE `betyg_inaktiv` ENABLE KEYS */;

-- Dumping structure for table kompdb.elev_aktiv
CREATE TABLE IF NOT EXISTS `elev_aktiv` (
  `namn` varchar(50) NOT NULL,
  `personnummer` varchar(12) NOT NULL,
  PRIMARY KEY (`personnummer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.elev_aktiv: ~6 rows (approximately)
/*!40000 ALTER TABLE `elev_aktiv` DISABLE KEYS */;
INSERT INTO `elev_aktiv` (`namn`, `personnummer`) VALUES
	('Cecilia Circumvent', '193012122830'),
	('Bonnie Basic', '195903238247'),
	('Dex Denial', '198508053905'),
	('Ada Akronym', '199002033838'),
	('Fanny Frenesi', '199304129540'),
	('Elli Entity', '199405034820');
/*!40000 ALTER TABLE `elev_aktiv` ENABLE KEYS */;

-- Dumping structure for table kompdb.elev_inaktiv
CREATE TABLE IF NOT EXISTS `elev_inaktiv` (
  `namn` varchar(50) NOT NULL,
  `personnummer` varchar(12) NOT NULL,
  PRIMARY KEY (`personnummer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.elev_inaktiv: ~4 rows (approximately)
/*!40000 ALTER TABLE `elev_inaktiv` DISABLE KEYS */;
INSERT INTO `elev_inaktiv` (`namn`, `personnummer`) VALUES
	('Helge Hax', '191002021337'),
	('Gun Gammal', '192001013880'),
	('Ite Isberg', '192506071234'),
	('Jo Juste', '199712142830');
/*!40000 ALTER TABLE `elev_inaktiv` ENABLE KEYS */;

-- Dumping structure for table kompdb.filial
CREATE TABLE IF NOT EXISTS `filial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namn` varchar(50) DEFAULT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `ort` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.filial: ~2 rows (approximately)
/*!40000 ALTER TABLE `filial` DISABLE KEYS */;
INSERT INTO `filial` (`id`, `namn`, `adress`, `ort`) VALUES
	(1, 'EC Malmö', 'Barkgatan 2', 'Malmö'),
	(2, 'EC Helsingborg', 'Storgatan 1', 'Helsingborg');
/*!40000 ALTER TABLE `filial` ENABLE KEYS */;

-- Dumping structure for table kompdb.filialprogram
CREATE TABLE IF NOT EXISTS `filialprogram` (
  `filialprogram_id` int(11) NOT NULL AUTO_INCREMENT,
  `filial_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `datum_start` date NOT NULL,
  `datum_slut` date NOT NULL,
  PRIMARY KEY (`filialprogram_id`,`filial_id`,`program_id`,`datum_start`,`datum_slut`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.filialprogram: ~9 rows (approximately)
/*!40000 ALTER TABLE `filialprogram` DISABLE KEYS */;
INSERT INTO `filialprogram` (`filialprogram_id`, `filial_id`, `program_id`, `datum_start`, `datum_slut`) VALUES
	(1, 1, 1, '2017-08-08', '2019-06-06'),
	(2, 1, 2, '2017-08-08', '2019-06-06'),
	(3, 2, 1, '2017-08-08', '2019-06-06'),
	(4, 2, 2, '2017-08-08', '2019-06-06'),
	(5, 1, 1, '2019-08-08', '2021-06-06'),
	(6, 1, 2, '2019-08-08', '2021-06-06'),
	(7, 2, 1, '2019-08-08', '2021-06-06'),
	(8, 2, 2, '2019-08-08', '2021-06-06'),
	(9, 1, 1, '2015-05-05', '2017-05-05');
/*!40000 ALTER TABLE `filialprogram` ENABLE KEYS */;

-- Dumping structure for table kompdb.filialprogramkurs
CREATE TABLE IF NOT EXISTS `filialprogramkurs` (
  `filialprogramkurs_id` int(11) NOT NULL AUTO_INCREMENT,
  `kurs_id` int(11) NOT NULL,
  `filialprogram_id` int(11) NOT NULL,
  `datum_start` date NOT NULL,
  `datum_slut` date NOT NULL,
  PRIMARY KEY (`filialprogramkurs_id`,`kurs_id`,`filialprogram_id`,`datum_start`,`datum_slut`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.filialprogramkurs: ~7 rows (approximately)
/*!40000 ALTER TABLE `filialprogramkurs` DISABLE KEYS */;
INSERT INTO `filialprogramkurs` (`filialprogramkurs_id`, `kurs_id`, `filialprogram_id`, `datum_start`, `datum_slut`) VALUES
	(1, 1, 1, '2017-08-08', '2017-09-09'),
	(2, 2, 1, '2017-09-10', '2018-10-09'),
	(3, 3, 1, '2018-10-10', '2019-06-06'),
	(4, 4, 2, '2017-08-08', '2019-06-06'),
	(5, 1, 9, '2015-05-05', '2015-10-10'),
	(6, 2, 9, '2015-11-11', '2016-05-05'),
	(7, 3, 9, '2016-05-06', '2017-05-05');
/*!40000 ALTER TABLE `filialprogramkurs` ENABLE KEYS */;

-- Dumping structure for event kompdb.flytta_till_elev_inaktiv_om_alla_betyg_satta
DELIMITER //
CREATE EVENT `flytta_till_elev_inaktiv_om_alla_betyg_satta` ON SCHEDULE EVERY 1 DAY STARTS '2020-08-20 00:00:01' ON COMPLETION PRESERVE ENABLE DO BEGIN
CALL kopiera_inaktiva_elever_till_ny_lista;
CALL ta_bort_inaktiva_elever;
END//
DELIMITER ;

-- Dumping structure for procedure kompdb.kopiera_inaktiva_elever_till_ny_lista
DELIMITER //
CREATE PROCEDURE `kopiera_inaktiva_elever_till_ny_lista`()
BEGIN
INSERT INTO elev_inaktiv SELECT * FROM elev_aktiv WHERE personnummer NOT IN (SELECT elev FROM betyg_aktiv);
END//
DELIMITER ;

-- Dumping structure for table kompdb.kurs
CREATE TABLE IF NOT EXISTS `kurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namn` varchar(50) DEFAULT NULL,
  `poang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.kurs: ~5 rows (approximately)
/*!40000 ALTER TABLE `kurs` DISABLE KEYS */;
INSERT INTO `kurs` (`id`, `namn`, `poang`) VALUES
	(1, 'Praktisk Databasdesign', 25),
	(2, 'Webbutveckling i Java', 20),
	(3, 'Grundläggande Javautveckling', 15),
	(4, 'Javascript för testare', 5),
	(5, 'Seleniumtestning', 30);
/*!40000 ALTER TABLE `kurs` ENABLE KEYS */;

-- Dumping structure for table kompdb.kursanstalld
CREATE TABLE IF NOT EXISTS `kursanstalld` (
  `anstalld_id` int(11) NOT NULL,
  `filialprogramkurs_id` int(11) NOT NULL,
  `ansvarig` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`anstalld_id`,`filialprogramkurs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.kursanstalld: ~9 rows (approximately)
/*!40000 ALTER TABLE `kursanstalld` DISABLE KEYS */;
INSERT INTO `kursanstalld` (`anstalld_id`, `filialprogramkurs_id`, `ansvarig`) VALUES
	(3, 1, b'1'),
	(3, 2, b'1'),
	(3, 3, b'1'),
	(3, 4, b'0'),
	(4, 1, b'0'),
	(4, 2, b'0'),
	(4, 3, b'0'),
	(4, 4, b'1'),
	(4, 9, b'1');
/*!40000 ALTER TABLE `kursanstalld` ENABLE KEYS */;

-- Dumping structure for table kompdb.obligatorisktmoment
CREATE TABLE IF NOT EXISTS `obligatorisktmoment` (
  `id` int(11) NOT NULL,
  `filialprogramkurs_id` int(11) NOT NULL,
  `namn` varchar(100) DEFAULT NULL,
  `beskrivning` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filialprogramkurs_id` (`filialprogramkurs_id`),
  CONSTRAINT `obligatorisktmoment_ibfk_1` FOREIGN KEY (`filialprogramkurs_id`) REFERENCES `filialprogramkurs` (`filialprogramkurs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.obligatorisktmoment: ~1 rows (approximately)
/*!40000 ALTER TABLE `obligatorisktmoment` DISABLE KEYS */;
INSERT INTO `obligatorisktmoment` (`id`, `filialprogramkurs_id`, `namn`, `beskrivning`) VALUES
	(1, 1, 'Designa och bygga en säker databas.', 'G:\r\n\r\n    Redovisning av modeller (innan db byggs)\r\n    Säker databas, redovisas i ett dokument med den kod du använt för att bygga db\r\n    Användargränssnitt\r\n    Det ska finnas, redovisas med kod;\r\n        Minst 2 procedurer\r\n        Triggers\r\n        Constraints\r\n        Vyer\r\n        Frågor som innehåller join, group by, having m.m\r\n\r\nVG:\r\n    G\r\n    I enskriftlig rapport självständigt reflektera över och kritiskt granska de valda lösningarna i projektet \r\n');
/*!40000 ALTER TABLE `obligatorisktmoment` ENABLE KEYS */;

-- Dumping structure for table kompdb.program
CREATE TABLE IF NOT EXISTS `program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.program: ~2 rows (approximately)
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` (`id`, `namn`) VALUES
	(1, 'Javautvecklare'),
	(2, 'Mjukvarutestare');
/*!40000 ALTER TABLE `program` ENABLE KEYS */;

-- Dumping structure for procedure kompdb.ta_bort_inaktiva_elever
DELIMITER //
CREATE PROCEDURE `ta_bort_inaktiva_elever`()
BEGIN
DELETE FROM elev_aktiv WHERE personnummer NOT IN (SELECT elev FROM betyg_aktiv);
END//
DELIMITER ;

-- Dumping structure for table kompdb.yrkestitel
CREATE TABLE IF NOT EXISTS `yrkestitel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `befattning` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table kompdb.yrkestitel: ~3 rows (approximately)
/*!40000 ALTER TABLE `yrkestitel` DISABLE KEYS */;
INSERT INTO `yrkestitel` (`id`, `befattning`) VALUES
	(1, 'Lärare'),
	(2, 'Utbildningsledare'),
	(3, 'Rektor');
/*!40000 ALTER TABLE `yrkestitel` ENABLE KEYS */;

-- Dumping structure for view kompdb.betygsutdragsvy
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `betygsutdragsvy`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `betygsutdragsvy` AS SELECT e.namn AS Namn, e.personnummer AS Personnummer, k.namn AS Kurs, k.poang AS 'YH-Poäng',b.gradering AS Betyg, b.graderingsdatum AS Graderingsdatum, fpk.datum_start AS Kursstart, fpk.datum_slut AS Kursslut, a.namn AS 'Ansvarig Lärare', p.namn AS Program,
fp.datum_start AS Programstart, fp.datum_slut AS Programslut
FROM betyg_inaktiv b 

INNER JOIN elev_inaktiv e ON e.personnummer = b.elev
INNER JOIN filialprogramkurs fpk ON fpk.filialprogramkurs_id = b.filialprogramkurs_id


INNER JOIN filialprogram fp ON fpk.filialprogram_id = fp.filialprogram_id
INNER JOIN filial f ON fp.filial_id = f.id
INNER JOIN kurs k ON fpk.kurs_id = k.id
INNER JOIN program p ON fp.program_id = p.id
INNER JOIN kursanstalld ka ON (fpk.kurs_id = ka.filialprogramkurs_id) AND (ka.ansvarig = 1)
INNER JOIN anstalld a ON ka.anstalld_id = a.id ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
