package br.edu.infnet.appvinho.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appvinho.model.domain.Rose;

@Controller
public class RoseController {

	private String msg;
	
	
	@GetMapping(value = "/rose")
	public String telaCadastro() {
		return "rose/cadastro";
	}
	
	@GetMapping(value = "/rose/lista")
	public String telaLista(Model model) {
		
	//	model.addAttribute("clientes", clienteService.obterLista());
		
		model.addAttribute("mensagem", msg);  
		
		msg = null;
		
		return "rose/lista";
	}
	
	@PostMapping(value = "/rose/incluir")
	public String incluir(Rose rose) {
		
		//clienteService.incluir(cliente);
		
		msg = "A inclusão do vinho rose "+rose.getNome()+" foi realizada com sucesso!!";
		
		return "redirect:/rose/lista";
	}
	
	@GetMapping(value = "/rose/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

	//	Cliente cliente = clienteService.excluir(id);
		
		msg = "A exclusão do vinho rose foi realizada com sucesso!!";
		//msg = "A exclusão do cliente "+cliente.getNome()+" foi realizada com sucesso!!";
		
		
		return "redirect:/rose/lista";
	}
}
