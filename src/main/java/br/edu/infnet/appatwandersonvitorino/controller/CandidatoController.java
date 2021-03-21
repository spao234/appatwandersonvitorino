package br.edu.infnet.appatwandersonvitorino.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CandidatoController {
	
	@GetMapping(value = "/candidato")
	public String showDetalhe() {
		
		return "candidato/detalhe";
	}

}
