package com.talos.backend.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Preferencia implements Serializable {
	private static final long serialVersionUID = 1L;

	public Preferencia() {
	}

	public Preferencia(String id) {
		super();
		this.id = id;
	}

	@Id
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
