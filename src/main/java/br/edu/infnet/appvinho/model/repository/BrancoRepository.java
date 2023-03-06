package br.edu.infnet.appvinho.model.repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import br.edu.infnet.appvinho.model.domain.Branco;



@Repository
public class BrancoRepository {

private static Integer id = 1;
	
	private static Map<Integer, Branco> mapaBranco = new HashMap<Integer, Branco>();  
	
	public boolean incluir(Branco branco) {
		
	branco.setId(id++);
		
	try {
			mapaBranco.put(branco.getId(), branco);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

	public Branco excluir(Integer key) {
				
		return mapaBranco.remove(key);
	}
	
	
	public Collection<Branco> obterLista(){
		return mapaBranco.values();
		
	}

	public Branco retornaPorId(Integer id){
		int i = id;
		Branco branco = null;
		for(Branco branco1 : obterLista()){
			if(branco1.getId() == 1){
				branco = branco1;
			}
		}
		return branco;
	}
}

