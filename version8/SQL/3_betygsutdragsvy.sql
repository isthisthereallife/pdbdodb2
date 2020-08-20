
CREATE VIEW betygsutdragsvy AS 
SELECT e.namn AS Namn, e.personnummer AS Personnummer, k.namn AS Kurs, k.poang AS 'YH-Poäng',b.gradering AS Betyg, b.graderingsdatum AS Graderingsdatum, fpk.datum_start AS Kursstart, fpk.datum_slut AS Kursslut, a.namn AS 'Ansvarig Lärare', p.namn AS Program,
fp.datum_start AS Programstart, fp.datum_slut AS Programslut
FROM betyg_inaktiv b 

INNER JOIN elev_inaktiv e ON e.personnummer = b.elev
INNER JOIN filialprogramkurs fpk ON fpk.filialprogramkurs_id = b.filialprogramkurs_id


INNER JOIN filialprogram fp ON fpk.filialprogram_id = fp.filialprogram_id
INNER JOIN filial f ON fp.filial_id = f.id
INNER JOIN kurs k ON fpk.kurs_id = k.id
INNER JOIN program p ON fp.program_id = p.id
INNER JOIN kursanstalld ka ON (fpk.kurs_id = ka.filialprogramkurs_id) AND (ka.ansvarig = 1)
INNER JOIN anstalld a ON ka.anstalld_id = a.id 