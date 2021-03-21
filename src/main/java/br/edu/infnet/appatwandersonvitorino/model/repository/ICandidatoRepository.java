package br.edu.infnet.appatwandersonvitorino.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatwandersonvitorino.model.negocio.Candidato;

@Repository
public interface ICandidatoRepository extends CrudRepository<Candidato, Integer> {

}
