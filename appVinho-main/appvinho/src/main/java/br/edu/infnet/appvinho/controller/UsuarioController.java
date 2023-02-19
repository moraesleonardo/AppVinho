package br.edu.infnet.appvinho.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appvinho.model.domain.Usuario;
import br.edu.infnet.appvinho.model.repository.UsuarioRepository;

@Controller
public class UsuarioController {
	
	private String msg;
	
	
	@GetMapping(value = "/usuario")
	public String telaCadastro() {
		return "usuario/cadastro";
	}
	
	@GetMapping(value = "/usuario/lista")
	public String telaLista(Model model) {
		
		model.addAttribute("usuarios", UsuarioRepository.obterLista());
		
		model.addAttribute("mensagem",msg);
		
		msg = null;
		
		return "usuario/lista";
	}
	
	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) {
			
		UsuarioRepository.incluir(usuario);
		
		msg = "A inclusão do usuário "+usuario.getNome()+" foi realizada com sucesso!!";
		
		return "redirect:/usuario/lista";
	}
	
}
