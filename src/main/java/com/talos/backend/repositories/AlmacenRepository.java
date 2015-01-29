package com.talos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.talos.backend.model.Almacen;

public interface AlmacenRepository extends JpaRepository<Almacen, String> {

}
