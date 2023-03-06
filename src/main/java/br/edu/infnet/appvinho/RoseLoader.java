package br.edu.infnet.appvinho;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import br.edu.infnet.appvinho.model.domain.Rose;
import br.edu.infnet.appvinho.model.service.RoseService;

@Component
public class RoseLoader implements ApplicationRunner {
	
	@Autowired
	private RoseService roseService;
	
	@Override
	public void run(ApplicationArguments args) throws Exception{
		
		Rose rose = new Rose("Primeiro Vinho Rose", "99988877766", 0, "primeirao@rose.com");
		
		roseService.incluir(rose);
		
		System.out.println("Inclusão do Vinho Rosé xxx foi realizada com sucesso!!");
		
	}

}
