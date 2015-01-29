package com.talos.backend.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Comprador implements Serializable {

	private static final long serialVersionUID = 1L;
	@NotEmpty
	@Id
	private String username;
	@NotEmpty
	private String nombre;
	private String apellido;
	private Date fecha;
	@NotEmpty
	private String email;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "comp_pref", joinColumns = { @JoinColumn(name = "com_id", referencedColumnName = "username") }, inverseJoinColumns = { @JoinColumn(name = "pref_id", referencedColumnName = "id") })
	private List<Preferencia> preferencias;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Transient
	public String[] getPref() {
		if (preferencias != null) {
			String[] ret = new String[preferencias.size()];
			int i = 0;
			for (Preferencia p : preferencias)
				ret[i++] = p.getId();
			return ret;
		} else
			return null;
	}

	@Transient
	public void setPref(String[] pref) {
		List<Preferencia> l = new ArrayList<Preferencia>();
		for (int i = 0; i < pref.length; i++)
			l.add(new Preferencia(pref[i]));
		this.preferencias = l;
	}

	public List<Preferencia> getPreferencias() {
		return preferencias;
	}

	public void setPreferencias(List<Preferencia> preferencias) {
		this.preferencias = preferencias;
	}
}
