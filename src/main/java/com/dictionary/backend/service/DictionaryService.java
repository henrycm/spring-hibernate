package com.dictionary.backend.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dictionary.backend.model.Entry;
import com.dictionary.backend.model.Meaning;
import com.dictionary.backend.repositories.EntryRepository;
import com.dictionary.backend.repositories.MeaningRepository;

@Service
public class DictionaryService {

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

	public synchronized void save(Entry e) {
		List<Meaning> l = e.getMeanings();
		Entry en = er.findOne(e.getWord());
		if (en == null) {
			en = e;
			en.setMeanings(null);
			er.save(en);
		}

		for (Meaning m : l) {
			m.setEntry(en);
			mr.save(m);
		}
	}
}
