USE kompdb;

INSERT INTO filial VALUES (1, 'EC Malmö','Barkgatan 2','Malmö');
INSERT INTO filial VALUES (2, 'EC Helsingborg', 'Storgatan 1', 'Helsingborg');

INSERT INTO program VALUES (1,'Javautvecklare');
INSERT INTO program VALUES (2,'Mjukvarutestare');

INSERT INTO kurs VALUES (1, 'Praktisk Databasdesign',25);
INSERT INTO kurs VALUES (2, 'Webbutveckling i Java',20);
INSERT INTO kurs VALUES (3, 'Grundläggande Javautveckling',15);
INSERT INTO kurs VALUES (4, 'Javascript för testare',5);
INSERT INTO kurs VALUES (5, 'Seleniumtestning',30);

INSERT INTO elev_aktiv VALUES ('Ada Akronym','199002033838');
INSERT INTO elev_aktiv VALUES ('Bonnie Basic','195903238247');
INSERT INTO elev_aktiv VALUES ('Cecilia Circumvent','193012122830');
INSERT INTO elev_aktiv VALUES ('Dex Denial','198508053905');
INSERT INTO elev_aktiv VALUES ('Elli Entity','199405034820');
INSERT INTO elev_aktiv VALUES ('Fanny Frenesi','199304129540');

INSERT INTO elev_inaktiv VALUES ('Gun Gammal','192001013880');
INSERT INTO elev_inaktiv VALUES ('Helge Hax','191002021337');
INSERT INTO elev_inaktiv VALUES ('Ite Isberg','192506071234');
INSERT INTO elev_inaktiv VALUES ('Jo Juste','199712142830');

INSERT INTO yrkestitel VALUES (1, 'Lärare');
INSERT INTO yrkestitel VALUES (2, 'Utbildningsledare');
INSERT INTO yrkestitel VALUES (3, 'Rektor');

INSERT INTO anstalld VALUES (1, 'Ulla Utbled',2);
INSERT INTO anstalld VALUES (2, 'Rebecka Reqtour', 3);
INSERT INTO anstalld VALUES (3, 'Lisa Lär', 1);
INSERT INTO anstalld VALUES (4, 'Tess Teachy',1);
INSERT INTO anstalld VALUES (5, 'Ulrika Undervis',2);


#RELATIONSTABELLER

INSERT INTO filialprogram VALUES (1,1,1,'2017-08-08','2019-06-06');
INSERT INTO filialprogram VALUES (2,1,2,'2017-08-08','2019-06-06');
INSERT INTO filialprogram VALUES (3,2,1,'2017-08-08','2019-06-06');
INSERT INTO filialprogram VALUES (4,2,2,'2017-08-08','2019-06-06');
INSERT INTO filialprogram VALUES (5,1,1,'2019-08-08','2021-06-06');
INSERT INTO filialprogram VALUES (6,1,2,'2019-08-08','2021-06-06');
INSERT INTO filialprogram VALUES (7,2,1,'2019-08-08','2021-06-06');
INSERT INTO filialprogram VALUES (8,2,2,'2019-08-08','2021-06-06');
INSERT INTO filialprogram VALUES (9,1,1,'2015-05-05','2017-05-05');

INSERT INTO filialprogramkurs VALUES (1,1,1,'2017-08-08','2017-09-09');
INSERT INTO filialprogramkurs VALUES (2,2,1,'2017-09-10','2018-10-09');
INSERT INTO filialprogramkurs VALUES (3,3,1,'2018-10-10','2019-06-06');
INSERT INTO filialprogramkurs VALUES (4,4,2,'2017-08-08','2019-06-06');
INSERT INTO filialprogramkurs VALUES (5,1,9,'2015-05-05','2015-10-10');
INSERT INTO filialprogramkurs VALUES (6,2,9,'2015-11-11','2016-05-05');
INSERT INTO filialprogramkurs VALUES (7,3,9,'2016-05-06','2017-05-05');

INSERT INTO kursanstalld VALUES (3,1,1);
INSERT INTO kursanstalld VALUES (3,2,1);
INSERT INTO kursanstalld VALUES (3,3,1);
INSERT INTO kursanstalld VALUES (3,4,0);
INSERT INTO kursanstalld VALUES (4,1,0);
INSERT INTO kursanstalld VALUES (4,2,0);
INSERT INTO kursanstalld VALUES (4,3,0);
INSERT INTO kursanstalld VALUES (4,4,1);
INSERT INTO kursanstalld VALUES (4,9,1);

INSERT INTO betyg_aktiv VALUES ('199002033838',1,NULL,NULL);
INSERT INTO betyg_aktiv VALUES ('199002033838',2,NULL,NULL);
INSERT INTO betyg_aktiv VALUES ('199002033838',3,NULL,NULL);
INSERT INTO betyg_aktiv VALUES ('195903238247',4,NULL,NULL);
INSERT INTO betyg_aktiv VALUES ('193012122830',4,NULL,NULL);
INSERT INTO betyg_aktiv VALUES ('198508053905',1,NULL,NULL);
INSERT INTO betyg_aktiv VALUES ('198508053905',2,NULL,NULL);
INSERT INTO betyg_aktiv VALUES ('198508053905',3,NULL,NULL);

INSERT INTO betyg_inaktiv VALUES ('192001013880',5,'VG','2015-10-10');
INSERT INTO betyg_inaktiv VALUES ('192506071234',5,'G','2015-10-10');
INSERT INTO betyg_inaktiv VALUES ('199712142830',5,'VG','2015-10-10');
INSERT INTO betyg_inaktiv VALUES ('192001013880',6,'G','2016-11-12');
INSERT INTO betyg_inaktiv VALUES ('192506071234',6,'G','2016-11-12');
INSERT INTO betyg_inaktiv VALUES ('199712142830',6,'VG','2016-11-12');
INSERT INTO betyg_inaktiv VALUES ('192001013880',7,'G','2017-05-12');
INSERT INTO betyg_inaktiv VALUES ('192506071234',7,'G','2017-05-12');
INSERT INTO betyg_inaktiv VALUES ('199712142830',7,'VG','2017-05-12');








INSERT INTO obligatorisktmoment VALUES (1,1,'Designa och bygga en säker databas.', 'G:

    Redovisning av modeller (innan db byggs)
    Säker databas, redovisas i ett dokument med den kod du använt för att bygga db
    Användargränssnitt
    Det ska finnas, redovisas med kod;
        Minst 2 procedurer
        Triggers
        Constraints
        Vyer
        Frågor som innehåller join, group by, having m.m

VG:
    G
    I enskriftlig rapport självständigt reflektera över och kritiskt granska de valda lösningarna i projektet 
');


