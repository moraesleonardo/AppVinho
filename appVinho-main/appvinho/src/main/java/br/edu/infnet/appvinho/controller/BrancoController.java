package br.edu.infnet.appvinho.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appvinho.model.domain.Branco;

@Controller
public class BrancoController {

	private String msg;
	
	
	@GetMapping(value = "/branco")
	public String telaCadastro() {
		return "branco/cadastro";
	}
	
	@GetMapping(value = "/branco/lista")
	public String telaLista(Model model) {
		
	//	model.addAttribute("clientes", clienteService.obterLista());
		
		model.addAttribute("mensagem", msg);  
		
		msg = null;
		
		return "branco/lista";
	}
	
	@PostMapping(value = "/branco/incluir")
	public String incluir(Branco branco) {
		
		//clienteService.incluir(branco);
		
		msg = "A inclusão do vinho branco "+branco.getNome()+" foi realizada com sucesso!!";
		
		return "redirect:/branco/lista";
	}
	
	@GetMapping(value = "/branco/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

	//	Cliente cliente = clienteService.excluir(id);
		
		msg = "A exclusão do vinho branco foi realizada com sucesso!!";
		//msg = "A exclusão do cliente "+cliente.getNome()+" foi realizada com sucesso!!";
		
		
		return "redirect:/branco/lista";
	}
}
