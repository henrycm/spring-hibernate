package com.talos.backend.service;

import java.util.Collection;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talos.backend.model.Almacen;
import com.talos.backend.repositories.AlmacenRepository;

@Service
public class AlmacenService {

	@Resource
	private AlmacenRepository ralmacen;

	public Almacen load(String username) {
		return ralmacen.findOne(username);
	}

	public Collection<Almacen> list() {
		return ralmacen.findAll();
	}

	public Almacen save(Almacen c) {
		return ralmacen.save(c);
	}

	public void delete(String Almacen) {
		ralmacen.delete(Almacen);
	}

}
