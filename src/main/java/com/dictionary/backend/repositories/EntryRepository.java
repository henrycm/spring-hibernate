package com.dictionary.backend.repositories;

import javax.persistence.LockModeType;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Lock;

import com.dictionary.backend.model.Entry;

public interface EntryRepository extends JpaRepository<Entry, String> {

	@Lock(LockModeType.PESSIMISTIC_READ)
	public Entry findOne(String id);
}
