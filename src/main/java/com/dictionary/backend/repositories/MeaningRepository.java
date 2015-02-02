package com.dictionary.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dictionary.backend.model.Meaning;

public interface MeaningRepository extends JpaRepository<Meaning, String> {

}
