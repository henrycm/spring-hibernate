package com.talos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.talos.backend.model.Entry;

public interface EntryRepository extends JpaRepository<Entry, String> {

}
