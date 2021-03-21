package br.edu.infnet.appatwandersonvitorino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AcessoController {
	
	@GetMapping(value = "/")
	public String init(Model model) {
		
		model.addAttribute("nome", "Wanderson Vitorino");
		model.addAttribute("email", "wang@gmail.com" );
		model.addAttribute("git", "www.github.com");
			
		
		
		
		return "index";
	}

}
