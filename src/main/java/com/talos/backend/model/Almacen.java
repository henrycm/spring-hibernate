package com.talos.backend.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Almacen implements Serializable {
	private static final long serialVersionUID = 1L;

	@NotEmpty
	@Id
	private String nit;

	@NotEmpty
	private String nombre;

	public String getNit() {
		return nit;
	}

	public void setNit(String nit) {
		this.nit = nit;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}
