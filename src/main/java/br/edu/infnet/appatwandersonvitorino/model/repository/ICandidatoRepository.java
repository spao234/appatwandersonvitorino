package br.edu.infnet.appatwandersonvitorino.model.repository;

import java.util.List;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatwandersonvitorino.model.negocio.Candidato;

@Repository
public interface ICandidatoRepository extends CrudRepository<Candidato, Integer> {
	
	@Query("from Candidato c where c.usuario.id=:id")
	List<Candidato> obterLista(Integer id, Sort by);
}
