package br.edu.infnet.appvinho;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import br.edu.infnet.appvinho.model.domain.Cliente;
import br.edu.infnet.appvinho.model.service.ClienteService;

@Component
public class ClienteLoader implements ApplicationRunner {
	
	@Autowired
	private ClienteService clienteService;
	
	@Override
	public void run(ApplicationArguments args) throws Exception{
		
		Cliente cliente = new Cliente("Primeiro Cliente", "99988877766", "primeirao@cliente.com");
		
		clienteService.incluir(cliente);
		
		System.out.println("Inclusão de Cliente xxx foi realizada com sucesso!!");
		
	}

}
