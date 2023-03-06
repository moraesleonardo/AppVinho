package br.edu.infnet.appvinho;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import br.edu.infnet.appvinho.model.domain.Branco;
import br.edu.infnet.appvinho.model.service.BrancoService;

@Component
public class BrancoLoader implements ApplicationRunner {
	
	@Autowired
	private BrancoService brancoService;
	
	@Override
	public void run(ApplicationArguments args) throws Exception{
		
		Branco branco = new Branco("Primeiro Vinho Rose", "99988877766", 0, "primeirao@rose.com");
		
		brancoService.incluir(branco);
		
		System.out.println("Inclusão do Vinho Branco xxx foi realizada com sucesso!!");
		
	}

}
