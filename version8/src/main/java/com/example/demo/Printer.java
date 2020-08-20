package com.example.demo;

import com.example.demo.entity.BetygsutdragView;

import java.util.ArrayList;
import java.util.Scanner;

import static com.example.demo.Databasprojektv8Application.fullistan;

public class Printer {

    public static void printBetygsutdrag() {
        var personnummer = "";
        boolean ok = false;
        ArrayList<BetygsutdragView> betyglistan = new ArrayList<>();
        while (!ok) {

            System.out.print("Ange elevens personnummer (ååååmmddnnnn): ");
            personnummer = new Scanner(System.in).nextLine();
            if (personnummer.length() == 12) {
                for (BetygsutdragView i : fullistan) {
                    if (personnummer.equalsIgnoreCase(i.getPersonnummer())) {
                        betyglistan.add(i);
                    }
                }
                if (betyglistan.size() == 0) {
                    System.out.println("\nTyvärr, inga betyg hittades för elev med personnummer "+personnummer+"\n");
                } else {
                    System.out.println("\n----- Betygsutdrag för "+personnummer+"\n");
                    for (BetygsutdragView i : betyglistan) {
                        System.out.println(i.toString());
                    }
                    System.out.println("\n");
                }
                ok = true;
            } else {
                System.out.println("Felaktigt inmatat personnummer.\n");
            }

        }


    }
}
