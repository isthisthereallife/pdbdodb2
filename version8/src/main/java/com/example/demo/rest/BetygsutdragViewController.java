package com.example.demo.rest;

import com.example.demo.entity.BetygsutdragView;
import com.example.demo.repository.BetygsutdragViewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;


@RestController
public class BetygsutdragViewController {
    @Autowired
    private BetygsutdragViewRepository betygsutdragViewRepository;


    public Optional<BetygsutdragView> findByPersonnummer(String personnummer) {
        Optional<BetygsutdragView> onePersonnummer = betygsutdragViewRepository.findByPersonnummer(personnummer);
        return onePersonnummer;
    }
    public List<BetygsutdragView> findAll(){
        List<BetygsutdragView> allaBetyg = betygsutdragViewRepository.findAll();
        return allaBetyg;
    }

}
