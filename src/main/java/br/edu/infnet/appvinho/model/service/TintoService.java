package br.edu.infnet.appvinho.model.service;

import java.util.Collection;

import br.edu.infnet.appvinho.model.domain.Rose;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appvinho.model.domain.Tinto;
import br.edu.infnet.appvinho.model.repository.TintoRepository;

@Service
public class TintoService {

	@Autowired
	private TintoRepository tintoRepository;
	
	public boolean incluir(Tinto tinto) {
		return tintoRepository.incluir(tinto);
	}
	
	public Tinto excluir(Integer key) {
		return tintoRepository.excluir(key);
	}	
	
	public Collection<Tinto> obterLista(){
		return tintoRepository.obterLista();
	}

	public Tinto retornaPorId(Integer id){
		int i = id;
		Tinto tinto = null;
		for(Tinto tinto1 : obterLista()){
			if(tinto1.getId() == 1){
				tinto = tinto1;
			}
		}
		return tinto;
	}
}
