package br.edu.infnet.appatwandersonvitorino.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appatwandersonvitorino.model.negocio.Usuario;
import br.edu.infnet.appatwandersonvitorino.model.negocio.Vaga;
import br.edu.infnet.appatwandersonvitorino.model.service.CandidatoService;
import br.edu.infnet.appatwandersonvitorino.model.service.UsuarioService;
import br.edu.infnet.appatwandersonvitorino.model.service.VagaService;

@Controller
public class VagaController {
	
	@Autowired
	private VagaService vagaService;
	
	@Autowired
	private CandidatoService candidatoService;
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping(value = "/vaga")
	public String showDetalhe(Model model, @SessionAttribute("user") Usuario usuario) {
		
		model.addAttribute("lista", vagaService.obterLista());
		model.addAttribute("candidatos", candidatoService.obterLista());
		model.addAttribute("usuarios", usuarioService.obterLista());
		
		return "vaga/detalhe";
	}
	
	@PostMapping(value = "/vaga/incluir")
	public String incluir(Vaga vaga, @SessionAttribute("user") Usuario usuario) {
		
		vaga.setUsuario(usuario);
		
		vagaService.incluir(vaga);
		
		return "redirect:/vaga";
	}
	
	@GetMapping (value = "/vaga/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		
		vagaService.excluir(id);
		
		return "redirect:/vaga";
	}

}
