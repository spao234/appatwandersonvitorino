package br.edu.infnet.appatwandersonvitorino.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatwandersonvitorino.model.negocio.Vaga;

@Repository
public interface IVagaRepository extends CrudRepository<Vaga, Integer> {

}
