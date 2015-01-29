package com.talos.view;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.talos.backend.model.Almacen;
import com.talos.backend.service.AlmacenService;

@Controller
public class AlmacenController {

	@Resource
	private AlmacenService alamcenService;

	@RequestMapping(value = "/almacen", method = RequestMethod.GET)
	public String inicio(ModelMap model) {
		model.addAttribute("almacen", new Almacen());
		return "registrarAlmacen";
	}

	@RequestMapping(value = "/almacen/save", method = RequestMethod.POST)
	public String save(@Valid Almacen a, BindingResult result, ModelMap model) {
		if (!result.hasErrors()) {
			alamcenService.save(a);
			model.addAttribute("almacen", new Almacen());
		} else {
			model.addAttribute("almacen", a);
		}
		return "registrarAlmacen";
	}

	@RequestMapping(value = "/almacen/list")
	public String list(ModelMap model) {
		model.addAttribute("almacenes", alamcenService.list());
		return "listaAlmacen";
	}

	@RequestMapping(value = "/almacen/ver")
	public String ver(@ModelAttribute("nit") String nit, ModelMap model) {
		model.addAttribute("almacen", alamcenService.load(nit));
		return "registrarAlmacen";
	}
}
