package com.talos.view;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
public class DictionaryController {
	private final String URL_BASE = "https://glosbe.com/gapi/translate?from=eng&format=json&page=1&pretty=true";

	@RequestMapping(value = "/dictionary", method = RequestMethod.GET)
	@ResponseBody
	public String translate(@ModelAttribute("st_query") String st_query,
			@ModelAttribute("lang") String lang, ModelMap model) {
		RestTemplate rt = new RestTemplate();
		String resp = rt.getForObject(URL_BASE + "&phrase=" + st_query
				+ "&dest=" + lang, String.class);
		return resp;
	}

	@RequestMapping(value = "/proxy", method = RequestMethod.GET)
	@ResponseBody
	public String proxy(@ModelAttribute("st_url") String st_url, ModelMap model) {
		RestTemplate rt = new RestTemplate();
		String resp = rt.getForObject(st_url, String.class);
		return resp;
	}

}
