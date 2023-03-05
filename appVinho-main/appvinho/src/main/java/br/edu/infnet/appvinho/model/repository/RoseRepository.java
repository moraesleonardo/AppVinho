package br.edu.infnet.appvinho.model.repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import br.edu.infnet.appvinho.model.domain.Rose;



@Repository
public class RoseRepository {

private static Integer id = 1;
	
	private static Map<Integer, Rose> mapaRose = new HashMap<Integer, Rose>();  
	
	public boolean incluir(Rose rose) {
		
	rose.setId(id++);
		
	try {
			mapaRose.put(rose.getId(), rose);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

	public Rose excluir(Integer key) {
				
		return mapaRose.remove(key);
	}
	
	
	public Collection<Rose> obterLista(){
		return mapaRose.values();
		
	}
}

