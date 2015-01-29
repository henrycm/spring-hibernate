package test.services;

import static org.junit.Assert.assertNotNull;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import test.config.TestConfigApp;

import com.talos.backend.model.Comprador;
import com.talos.backend.service.CompradorService;
import com.talos.config.PersistenceJPAConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { PersistenceJPAConfig.class, TestConfigApp.class })
public class CompradorTest {

	@Autowired
	private CompradorService compService;

	@Test
	public void testComprador() {
		Comprador c = new Comprador();
		c.setUsername("test");
		c.setNombre("nombre prueba");
		c.setApellido("Prueba test");
		c.setFecha(new Date());
		c.setEmail("henrycm@gmail.com");
		c = compService.save(c);
		c = compService.load("test");
		assertNotNull("Comprador no es nulo", c);
		compService.delete(c.getUsername());
	}
}
