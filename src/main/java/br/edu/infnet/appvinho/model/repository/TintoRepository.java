package br.edu.infnet.appvinho.model.repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import br.edu.infnet.appvinho.model.domain.Tinto;



@Repository
public class TintoRepository {

private static Integer id = 1;
	
	private static Map<Integer, Tinto> mapaTinto = new HashMap<Integer, Tinto>();  
	
	public boolean incluir(Tinto tinto) {
		
	tinto.setId(id++);
		
	try {
			mapaTinto.put(tinto.getId(), tinto);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

	public Tinto excluir(Integer key) {
				
		return mapaTinto.remove(key);
	}
	
	
	public Collection<Tinto> obterLista(){
		return mapaTinto.values();
		
	}
}

