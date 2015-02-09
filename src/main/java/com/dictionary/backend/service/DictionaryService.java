package com.dictionary.backend.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.dictionary.backend.model.Entry;
import com.dictionary.backend.model.Meaning;
import com.dictionary.backend.repositories.EntryRepository;
import com.dictionary.backend.repositories.MeaningRepository;

@Service
public class DictionaryService {

	private Logger logger = LoggerFactory.getLogger(DictionaryService.class);

	@Resource
	private EntryRepository er;

	@Resource
	private MeaningRepository mr;

	public List<Meaning> search(String word) {
		Entry e = er.findOne(word);
		if (e != null) {
			List<Meaning> l = new ArrayList<Meaning>();
			for (Meaning m : e.getMeanings())
				l.add(m);
			return l;
		} else
			return new ArrayList<Meaning>();
	}

	public void save(Entry e) {
		logger.debug("Saving entity: " + e.getWord());
		List<Meaning> l = e.getMeanings();
		Entry en = er.findOne(e.getWord());
		if (en == null) {
			logger.debug("Entity not found... creating: " + e.getWord());
			en = e;
			en.setMeanings(null);
			en = er.save(en);
			logger.debug("After saving:" + en.getWord() + ", hash:"
					+ en.hashCode());
		}

		for (Meaning m : l) {
			m.setEntry(en);
			mr.save(m);
		}
	}
}
