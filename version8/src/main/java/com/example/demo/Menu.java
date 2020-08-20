package com.example.demo;

import java.util.Scanner;

public class Menu {

    public static void mainMenu() {
        Scanner scan = new Scanner(System.in);
        char whatDo = 'x';
        System.out.print("Välkommen till ECs Databashanterarsystem!\n");
        do {
            System.out.println("Gör ditt val: \n1. Starta nytt program\n2. Starta ny kurs\n3. Lägg till elev\n4. Lägg till elev till kurs\n5. Betygsutdrag\n0. Quit");
            whatDo = scan.nextLine().concat("quickfix").charAt(0);
            switch (whatDo) {
                case '1':
                    ProgramFactory.createNewProgram();
                    break;
                case '2':
                    //createNewKurs();
                    break;
                case '3':
                    //createNewElev();
                    System.out.println("\n***^^^~~~TODO~~~^^^***\n");
                    break;
                case '4':
                    //assignElevToProgram();
                    System.out.println("\n***^^^~~~ TODO ~~~^^^***\n");
                    break;
                case '5':
                    //betygsutdrag
                    System.out.println("\n***^^^~~~TODO~~~^^^***\n");
                    Printer.printBetygsutdrag();
                    break;
                case 'q':
                    System.out.println("\nGör ditt val\n");
                    break;
                case '0':
                    break;
                default:
                    System.out.println("Felaktigt val. Försök igen. Skriv en siffra.\n");
            }
        } while (!String.valueOf(whatDo).equals("0"));

        String s = "hh";

    }
}
