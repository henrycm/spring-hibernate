package com.dictionary.backend.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

@Entity
public class Meaning implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	@ManyToOne
	private Entry entry;
	@Lob
	private String meaning;
	private String language;
	private String source;
	private Date updated;

	public Meaning() {
	}

	public Meaning(Entry entry, String language) {
		super();
		this.id = entry.getWord() + "_" + language;
		this.entry = entry;
		this.language = language;
	}

	public String getId() {
		return id;
	}

	public Entry getEntry() {
		return entry;
	}

	public void setEntry(Entry entry) {
		this.entry = entry;
	}

	public String getMeaning() {
		return meaning;
	}

	public void setMeaning(String meaning) {
		this.meaning = meaning;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public Date getUpdated() {
		return updated;
	}

}
