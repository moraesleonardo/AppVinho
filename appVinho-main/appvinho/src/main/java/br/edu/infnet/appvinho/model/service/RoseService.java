package br.edu.infnet.appvinho.model.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appvinho.model.domain.Rose;
import br.edu.infnet.appvinho.model.repository.RoseRepository;

@Service
public class RoseService {

	@Autowired
	private RoseRepository roseRepository;
	
	public boolean incluir(Rose rose) {
		return roseRepository.incluir(rose);
	}
	
	public Rose excluir(Integer key) {
		return roseRepository.excluir(key);
	}	
	
	public Collection<Rose> obterLista(){
		return roseRepository.obterLista();
	}
}
