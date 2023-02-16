package br.edu.infnet.appvinho.model.repository;

import br.edu.infnet.appvinho.model.domain.Usuario;

public class AcessoRepository {
	
	public static Usuario autenticar(Usuario usuario) {
		if(usuario.getEmail().equalsIgnoreCase(usuario.getSenha())) {
			return new Usuario("Administrador", usuario.getEmail(), usuario.getSenha());	
		
	}
	
			return null;
	}
}
