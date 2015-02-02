package com.dictionary.backend.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Entry implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	private String word;

	@OneToMany(mappedBy = "entry")
	private List<Meaning> meanings;

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public List<Meaning> getMeanings() {
		return meanings;
	}

	public void setMeanings(List<Meaning> meanings) {
		this.meanings = meanings;
	}

	@Override
	public boolean equals(Object obj) {
		Entry e = (Entry) obj;
		return this.getWord().equals(e.getWord());
	}

	@Override
	public int hashCode() {
		return getWord().hashCode();
	}

}
