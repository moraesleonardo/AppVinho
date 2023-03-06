package br.edu.infnet.appvinho.controller;

import br.edu.infnet.appvinho.model.service.RoseService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appvinho.model.domain.Rose;

@RequiredArgsConstructor
@Controller
public class RoseController {

	private String msg;
	private final RoseService roseService;
	
	
	@GetMapping(value = "/rose")
	public String telaCadastro() {
		return "rose/cadastro";
	}
	
	@GetMapping(value = "/rose/lista")
	public String telaLista(Model model) {
		
		model.addAttribute("roses", roseService.obterLista());
		
		model.addAttribute("mensagem", msg);  
		
		msg = null;
		
		return "rose/lista";
	}
	
	@PostMapping(value = "/rose/incluir")
	public String incluir(Rose rose) {

		roseService.incluir(rose);
		
		msg = "A inclusão do vinho rose "+rose.getNome()+" foi realizada com sucesso!!";
		
		return "redirect:/rose/lista";
	}
	
	@GetMapping(value = "/rose/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Rose rose = roseService.retornaPorId(id);
		String nome = rose.getNome();
		roseService.excluir(id);
		msg = "A exclusão do cliente "+nome+" foi realizada com sucesso!!";
		
		return "redirect:/rose/lista";
	}
}
