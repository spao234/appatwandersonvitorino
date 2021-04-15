package br.edu.infnet.appatwandersonvitorino.model.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Sort;

import br.edu.infnet.appatwandersonvitorino.model.negocio.Candidato;
import br.edu.infnet.appatwandersonvitorino.model.negocio.Usuario;
import br.edu.infnet.appatwandersonvitorino.model.repository.ICandidatoRepository;


@Service
public class CandidatoService {
	
	@Autowired
	private ICandidatoRepository candidatoRepository;
	
	public void incluir(Candidato candidato) {
		
		candidatoRepository.save(candidato);
		
	}
	
	public void excluir(Integer id) {
		
		candidatoRepository.deleteById(id);
		
	}
	
	public List<Candidato> obterLista(){
		return (List<Candidato>)candidatoRepository.findAll();
	}
	
	public List<Candidato> obterLista(Usuario usuario) {
		return (List<Candidato>)candidatoRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "nome"));
	}
	
	

}