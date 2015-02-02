package test.services;

import java.util.Arrays;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import test.config.TestConfigApp;

import com.dictionary.backend.model.Entry;
import com.dictionary.backend.model.Meaning;
import com.dictionary.backend.service.DictionaryService;
import com.dictionary.config.PersistenceJPAConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { PersistenceJPAConfig.class, TestConfigApp.class })
public class UniqueKeyTest {

	@Autowired
	private DictionaryService ds;
	
	@Test
	public void testComprador() {
		Entry e = new Entry();
		e.setWord("test");
		Meaning m = new Meaning(e, "es");
		m.setMeaning("Test");
		m.setSource("glosbe");
		e.setMeanings(Arrays.asList(m));
		ds.save(e);
	}
}
