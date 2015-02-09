package test.services;

import static org.junit.Assert.assertTrue;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import test.config.TestConfigApp;

import com.dictionary.backend.model.Entry;
import com.dictionary.backend.model.Meaning;
import com.dictionary.backend.service.DictionaryService;
import com.dictionary.config.PersistenceJPAConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { PersistenceJPAConfig.class,
		TestConfigApp.class })
public class UniqueKeyTest {

	private Logger logger = LoggerFactory.getLogger(UniqueKeyTest.class);
	@Autowired
	private DictionaryService ds;

	@Test
	public void testNoErrorsWithKey() {
		String[] langs = { "es", "en", "pt", "fr" };
		final AtomicInteger numThreads = new AtomicInteger(langs.length);
		final AtomicInteger numErrors = new AtomicInteger(0);

		for (final String l : langs) {
			new Thread(new Runnable() {
				public void run() {
					Entry e = new Entry();
					e.setWord("test");
					Meaning m = new Meaning(e, l);
					m.setMeaning("Test");
					m.setSource("glosbe");
					e.setMeanings(Arrays.asList(m));
					logger.debug("Before saving :" + l);
					try {
						ds.save(e);
						logger.debug("After saving :" + l);
					} catch (Exception e1) {
						logger.error(e1.getMessage());
						numErrors.incrementAndGet();
					} finally {
						numThreads.decrementAndGet();
					}
				}
			}).start();
		}

		while (numThreads.get() > 0) {
			try {
				Thread.sleep(25);
			} catch (InterruptedException e) {
				logger.error(e.getMessage());
			}
		}

		logger.debug("All test finished!");
		assertTrue("Num errors saving must be 0", numErrors.get() == 0);
	}
}
