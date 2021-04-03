package br.edu.infnet.appatwandersonvitorino.model.repository;


import java.util.List;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatwandersonvitorino.model.negocio.Vaga;

@Repository
public interface IVagaRepository extends CrudRepository<Vaga, Integer>{
	
	@Query("from Vaga p where p.usuario.id =: id")
	List<Vaga>obterLista(Integer id, Sort by);

}

