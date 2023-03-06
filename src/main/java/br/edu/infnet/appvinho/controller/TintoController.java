package br.edu.infnet.appvinho.controller;

import br.edu.infnet.appvinho.model.domain.Rose;
import br.edu.infnet.appvinho.model.service.TintoService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appvinho.model.domain.Tinto;

@RequiredArgsConstructor
@Controller
public class TintoController {

    private String msg;
    private final TintoService tintoService;

    @GetMapping(value = "/tinto")
    public String telaCadastro() {
        return "tinto/cadastro";
    }

    @GetMapping(value = "/tinto/lista")
    public String telaLista(Model model) {

        model.addAttribute("tintos", tintoService.obterLista());

        model.addAttribute("mensagem", msg);

        msg = null;

        return "tinto/lista";
    }

    @PostMapping(value = "/tinto/incluir")
    public String incluir(Tinto tinto) {

        tintoService.incluir(tinto);

        msg = "A inclusão do vinho tinto " + tinto.getNome() + " foi realizada com sucesso!!";

        return "redirect:/tinto/lista";
    }

    @GetMapping(value = "/tinto/{id}/excluir")
    public String excluir(@PathVariable Integer id) {

		Tinto tinto = tintoService.retornaPorId(id);
		String nome = tinto.getNome();
		tintoService.excluir(id);
        msg = "A exclusão do cliente " + nome+ " foi realizada com sucesso!!";

        return "redirect:/tinto/lista";
    }
}
