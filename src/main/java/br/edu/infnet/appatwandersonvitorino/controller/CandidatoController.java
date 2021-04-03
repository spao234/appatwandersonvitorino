package br.edu.infnet.appatwandersonvitorino.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appatwandersonvitorino.model.negocio.Candidato;
import br.edu.infnet.appatwandersonvitorino.model.service.CandidatoService;

@Controller
public class CandidatoController {
	
	@Autowired
	private CandidatoService candidatoService;
	
	@GetMapping(value = "/candidato")
	public String showDetalhe(Model model) {
		
		model.addAttribute("lista", candidatoService.obterLista());
		
		return "candidato/detalhe";
	}
		
	@PostMapping(value = "/candidato/incluir")
	public String incluir(Candidato candidato) {
		
		candidatoService.incluir(candidato);
		
		return "redirect:/candidato";
	}
	
	@GetMapping (value = "/candidato/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		try {
			candidatoService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("mensagem", "Não é possível excluir o candidato: " + e.getMessage());
			return showDetalhe(model);
		}
		return "redirect:/candidato";
		
	}
	
}
