package br.edu.infnet.appatwandersonvitorino.model.service;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatwandersonvitorino.model.negocio.Usuario;
import br.edu.infnet.appatwandersonvitorino.model.negocio.Vaga;
import br.edu.infnet.appatwandersonvitorino.model.repository.IVagaRepository;

@Service
public class VagaService {
	
	@Autowired
	private IVagaRepository vagaRepository;
	
	public void incluir(Vaga vaga) {
		
		vagaRepository.save(vaga);
		
	}
	
	public void excluir(Integer id) {
		vagaRepository.deleteById(id);
		
	}
	
	public List<Vaga> obterLista(Usuario usuario) {
		return (List<Vaga>)vagaRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "vaga"));
		
	}

	
	public List<Vaga> obterLista(){
		
		return (List<Vaga>)vagaRepository.findAll();
	}

}
