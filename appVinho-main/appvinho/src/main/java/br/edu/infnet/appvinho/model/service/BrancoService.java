package br.edu.infnet.appvinho.model.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appvinho.model.domain.Branco;
import br.edu.infnet.appvinho.model.repository.BrancoRepository;

@Service
public class BrancoService {

	@Autowired
	private BrancoRepository brancoRepository;
	
	public boolean incluir(Branco branco) {
		return brancoRepository.incluir(branco);
	}
	
	public Branco excluir(Integer key) {
		return brancoRepository.excluir(key);
	}	
	
	public Collection<Branco> obterLista(){
		return brancoRepository.obterLista();
	}
}
