package com.example.demo;

import java.time.LocalDate;
import java.util.Scanner;

public class ProgramFactory {

    /**
     * 3# : skapa nytt program
     * Även andra anställdas, tex utbildningsledare, uppgifter ska registreras.
     */
    public static void createNewProgram() {
        Scanner scan = new Scanner(System.in);

        char whatDo = '0';
        String filial;
        boolean ok = false;
        String input;
        String name;

        do {
            System.out.print("Namnge nytt Program: ");
            input = scan.nextLine();
            System.out.print("Namn på nytt Program: " + input + "\n\nGodkänt? (Y/N): ");
            if (scan.nextLine().equalsIgnoreCase("Y")) {
                name = input;
                ok = true;
            }
        } while (!ok);


        do {
            ok = false;
            //TODO hämta detta från daatabasen istället
            System.out.println("Välj filial:\n 1. Malmö\n2. Helsingborg");
            whatDo = scan.nextLine().concat("quickfix").charAt(0);
            switch (whatDo) {
                case '1':
                    filial = "Malmö";
                    ok = true;
                    break;
                case '2':
                    filial = "Helsingborg";
                    ok = true;
                    break;
                case 'q':
                    System.out.println("Booya");
                default:
                    System.out.println("Okej, Malmö, whatever.\n");
                    ok = true;
            }
        } while (!ok);

        LocalDate startdate = LocalDate.now().plusDays(1);


        System.out.println("Kursen startar " + startdate.toString() + "? (Y/N): ");
        if (!scan.nextLine().equalsIgnoreCase("Y")) {
            startdate = startdate.plusYears(1).plusDays(1);
        }
        LocalDate enddate = startdate.plusMonths(20);
        System.out.println("Okej. Kursen startar " + startdate + " och slutar " + enddate + ".");


        //nu har jag
        // name
        // Filial
        // startdate
        // enddate
        //
        // TODO skicka detta med spring till databasen i en put (post?)




    }
}
