package br.edu.infnet.appvinho.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appvinho.model.domain.Usuario;

@Controller
public class UsuarioController {
	
//	@RequestMapping(value = "/usuario", method = RequestMethod.GET)
	@GetMapping(value = "/usuario")
	public String telaCadastro() {
		return "usuario/cadastro";
	}
	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) {
		System.out.println("Inclusão realizada com sucesso!!" + usuario);
		return "redirect:/";
	}
	
}
