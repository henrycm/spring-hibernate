package com.talos.view;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.talos.backend.model.Comprador;
import com.talos.backend.service.CompradorService;

@Controller
public class CompradorController {

	@Resource
	private CompradorService compservice;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		dateFormat.setLenient(false);
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@RequestMapping(value = "/comprador", method = RequestMethod.GET)
	public String inicio(ModelMap model) {
		model.addAttribute("comprador", new Comprador());
		return "registrarComprador";
	}

	@RequestMapping(value = "/comprador/save", method = RequestMethod.POST)
	public String save(@Valid Comprador c, BindingResult result, ModelMap model) {
		if (!result.hasErrors()) {
			compservice.save(c);
			model.addAttribute("comprador", new Comprador());
		} else {
			model.addAttribute("comprador", c);
		}
		return "registrarComprador";
	}

	@RequestMapping(value = "/comprador/list")
	public String ver(ModelMap model) {
		model.addAttribute("compradores", compservice.list());
		return "lista";
	}

	@RequestMapping(value = "/comprador/ver")
	public String ver(@ModelAttribute("username") String username, ModelMap model) {
		model.addAttribute("comprador", compservice.load(username));
		return "registrarComprador";
	}
}
