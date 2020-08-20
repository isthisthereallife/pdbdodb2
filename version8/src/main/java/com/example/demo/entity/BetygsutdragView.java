package com.example.demo.entity;

import javax.annotation.processing.Generated;
import javax.persistence.*;

@Entity
@Table(name = "betygsutdragsvy")
public class BetygsutdragView {

/*
SELECT Namn, Kurs, 'YH-Poäng', Betyg, Graderingsdatum,
* Kursstart,  Kursslut,  'Ansvarig Lärare', Program,
 Programstart,  Programslut
FROM betyg_aktiv....*/
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        long id;

        @Column(name = "Namn")
        String namn;
        @Column(name = "Personnummer")
        String personnummer;
        public String getPersonnummer(){
                return personnummer;
        }

        public String getNamn() {
                return namn;
        }

        @Column(name ="Kurs")
        String kurs;
        @Column(name= "YH-Poäng")
        String poang;
        @Column(name = "Betyg")
        String betyg;
        @Column(name = "Graderingsdatum")
        String graderingsdatum;
        @Column(name = "Kursstart")
        String kursstart;
        @Column(name="Kursslut")
        String kursslut;
        @Column(name="Ansvarig Lärare")
        String ansvarigLarare;
        @Column(name = "Program")
        String program;
        @Column(name = "Programstart")
        String programstart;
        @Column(name = "Programslut")
        String programslut;

        public BetygsutdragView(){}

        public BetygsutdragView(String namn, String personnummer, String kurs, String poang, String betyg, String graderingsdatum,
                                String kursstart, String kursslut, String ansvarigLarare, String program,
                                String programstart, String programslut) {
                this.namn = namn;
                this.personnummer = personnummer;
                this.kurs = kurs;
                this.poang = poang;
                this.betyg = betyg;
                this.graderingsdatum = graderingsdatum;
                this.kursstart = kursstart;
                this.kursslut = kursslut;
                this.ansvarigLarare = ansvarigLarare;
                this.program = program;
                this.programstart = programstart;
                this.programslut = programslut;
        }

        @Override
        public String toString(){
                return ("Namn:"+ namn+" | Personnummer: "+personnummer+" | Kurs: "+kurs+" | YH-Poäng: "+poang+" | Betyg: "+betyg+" | Graderingsdatum: "+graderingsdatum+
                        " | Kursstart: "+kursstart+" | Kursslut: "+kursslut+" | Ansvarig lärare: "+ansvarigLarare+" | Program: "+program+" | Programstart: "+programstart+" | Programslut: "+programslut);
        }

}
