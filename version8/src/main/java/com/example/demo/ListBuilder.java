package com.example.demo;

import com.example.demo.entity.BetygsutdragView;

import java.sql.*;

import static com.example.demo.Databasprojektv8Application.fullistan;

public class ListBuilder {

    public static void buildBetyglist() {
        String dbURL = "jdbc:mysql://localhost:3306/kompdb";
        String username = "root";
        String password = "";

        try (Connection myConnection = DriverManager.getConnection(dbURL, username, password)) {

            // code to execute SQL queries goes here...


            //jag är inte nöjd med denna lösning. TODO kom på nått bättre
            String sql = "SELECT * FROM betygsutdragsvy";

            Statement statement = myConnection.createStatement();
            ResultSet result = statement.executeQuery(sql);

            int count = 1;

            while (result.next()) {
                String namn = "";
                String personnummer = "";
                String kurs = "";
                String poang = "";
                String betyg = "";
                String graderingsdatum = "";
                String kursstart = "";
                String kursslut = "";
                String ansvarigLarare = "";
                String program = "";
                String programstart = "";
                String programslut = "";


                namn = result.getString(1);
                personnummer = result.getString(2);
                kurs = result.getString(3);
                poang = result.getString(4);
                betyg = result.getString(5);
                graderingsdatum = result.getString(6);
                kursstart = result.getString(7);
                kursslut = result.getString(8);
                ansvarigLarare = result.getString(9);
                program = result.getString(10);
                programstart = result.getString(11);
                programslut = result.getString(12);

                fullistan.add(new BetygsutdragView(namn, personnummer, kurs, poang, betyg, graderingsdatum, kursstart, kursslut, ansvarigLarare, program, programstart, programslut));

                count++;


            }


        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }
}
