package com.talos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.talos.backend.model.Comprador;

public interface CompradorRepository extends JpaRepository<Comprador, String> {

}
