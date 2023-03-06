package br.edu.infnet.appvinho.controller;

import br.edu.infnet.appvinho.model.domain.Rose;
import br.edu.infnet.appvinho.model.service.BrancoService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appvinho.model.domain.Branco;

@RequiredArgsConstructor
@Controller
public class BrancoController {

	private String msg;
	private final BrancoService brancoService;
	
	@GetMapping(value = "/branco")
	public String telaCadastro() {
		return "branco/cadastro";
	}
	
	@GetMapping(value = "/branco/lista")
	public String telaLista(Model model) {
		
		model.addAttribute("brancos", brancoService.obterLista());
		
		model.addAttribute("mensagem", msg);  
		
		msg = null;
		
		return "branco/lista";
	}
	
	@PostMapping(value = "/branco/incluir")
	public String incluir(Branco branco) {

		brancoService.incluir(branco);
		
		msg = "A inclusão do vinho branco "+branco.getNome()+" foi realizada com sucesso!!";
		
		return "redirect:/branco/lista";
	}
	
	@GetMapping(value = "/branco/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Branco branco = brancoService.retornaPorId(id);
		String nome = branco.getNome();
		brancoService.excluir(id);
		msg = "A exclusão do cliente "+nome+" foi realizada com sucesso!!";
		
		
		return "redirect:/branco/lista";
	}

}
