package com.talos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.talos.backend.model.Meaning;

public interface MeaningRepository extends JpaRepository<Meaning, String> {

}
