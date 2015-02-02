package com.dictionary.view;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.dictionary.backend.model.Entry;
import com.dictionary.backend.model.Meaning;
import com.dictionary.backend.service.DictionaryService;

@Controller
public class DictionaryController {
	Logger logger = LoggerFactory.getLogger(DictionaryController.class);
	private final String URL_BASE = "https://glosbe.com/gapi/translate?from=eng&format=json&page=1&pretty=true";

	@Resource
	private DictionaryService ds;

	@RequestMapping(value = "/dictionary", method = RequestMethod.GET)
	@ResponseBody
	public String translate(@ModelAttribute("st_query") String st_query,
			@ModelAttribute("lang") String lang, ModelMap model) {

		try {
			List<Meaning> lst = ds.search(st_query);
			for (Meaning m : lst) {
				if (m.getLanguage().equals(lang)) {
					return m.getMeaning();
				}
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}

		RestTemplate rt = new RestTemplate();
		logger.info("Calling service...");
		String resp = rt.getForObject(URL_BASE + "&phrase=" + st_query
				+ "&dest=" + lang, String.class);

		if (resp != null) {
			Entry e = new Entry();
			e.setWord(st_query);
			Meaning m = new Meaning(e, lang);
			m.setMeaning(resp);
			m.setSource("glosbe");
			e.setMeanings(Arrays.asList(m));
			ds.save(e);
		}
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
