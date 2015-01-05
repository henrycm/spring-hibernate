package com.talos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.talos.backend.model.Preferencia;

public interface PreferenciaRepository extends JpaRepository<Preferencia, String> {

}
