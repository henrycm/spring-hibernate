package com.talos.backend.service;

import java.util.Collection;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talos.backend.model.Comprador;
import com.talos.backend.model.Preferencia;
import com.talos.backend.repositories.CompradorRepository;
import com.talos.backend.repositories.PreferenciaRepository;

@Service
public class CompradorService {

	@Resource
	private CompradorRepository rcompra;
	@Resource
	private PreferenciaRepository rprefe;

	public Comprador load(String username) {
		return rcompra.findOne(username);
	}

	public Collection<Comprador> list() {
		return rcompra.findAll();
	}

	public Comprador save(Comprador c) {
		if (c.getPreferencias() != null) {
			/**
			 * Si no existe la entidad, guardamos en la tabla de preferencias.
			 */
			for (Preferencia p : c.getPreferencias())
				if (rprefe.findOne(p.getId()) == null)
					rprefe.save(p);
		}
		return rcompra.save(c);
	}

	public void delete(String comprador) {
		rcompra.delete(comprador);
	}

	public Preferencia savePref(Preferencia p) {
		return rprefe.save(p);
	}
}
