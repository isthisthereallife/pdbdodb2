package com.example.demo;

import com.example.demo.entity.BetygsutdragView;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.xml.crypto.Data;
import java.util.ArrayList;
import java.util.List;

@SpringBootApplication
public class Databasprojektv8Application {
    static List<BetygsutdragView> fullistan = new ArrayList<>();

    public static void main(String[] args) {
        SpringApplication.run(Databasprojektv8Application.class, args);
        ListBuilder.buildBetyglist();
        Menu.mainMenu();





    }




}


