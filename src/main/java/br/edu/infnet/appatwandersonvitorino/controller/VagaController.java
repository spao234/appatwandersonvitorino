package br.edu.infnet.appatwandersonvitorino.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appatwandersonvitorino.model.negocio.Vaga;
import br.edu.infnet.appatwandersonvitorino.model.service.VagaService;

@Controller
public class VagaController {
	
	@Autowired
	private VagaService vagaService;
	
	@GetMapping(value = "/vaga")
	public String showDetalhe(Model model) {
		
		model.addAttribute("lista", vagaService.obterLista());
		
		return "vaga/detalhe";
	}
	
	@PostMapping(value = "/vaga/incluir")
	public String incluir(Vaga vaga) {
		
		vagaService.incluir(vaga);
		
		return "redirect:/vaga";
	}

}
