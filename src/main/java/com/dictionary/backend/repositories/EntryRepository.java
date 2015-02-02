package com.dictionary.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dictionary.backend.model.Entry;

public interface EntryRepository extends JpaRepository<Entry, String> {

}
