package com.example.demo.repository;

import com.example.demo.entity.BetygsutdragView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface BetygsutdragViewRepository extends JpaRepository<BetygsutdragView, String> {

    Optional<BetygsutdragView> findByPersonnummer(String personnummer);
    List<BetygsutdragView> findAll();
}