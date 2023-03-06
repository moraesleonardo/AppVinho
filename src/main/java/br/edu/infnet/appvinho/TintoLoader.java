package br.edu.infnet.appvinho;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import br.edu.infnet.appvinho.model.domain.Tinto;
import br.edu.infnet.appvinho.model.service.TintoService;

@Component
public class TintoLoader implements ApplicationRunner {
	
	@Autowired
	private TintoService tintoService;
	
	@Override
	public void run(ApplicationArguments args) throws Exception{
		
		Tinto tinto = new Tinto("Primeiro Vinho Tinto", "99988877766", 0, "primeirao@cliente.com");
		
		tintoService.incluir(tinto);
		
		System.out.println("Inclusão do Vinho Tinto xxx foi realizada com sucesso!!");
		
	}

}
