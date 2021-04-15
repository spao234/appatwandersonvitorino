package br.edu.infnet.appatwandersonvitorino.model.negocio;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TVaga")
public class Vaga {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nome;
	private String descricao;
	private String observacao;
	
	@OneToOne (cascade = CascadeType.DETACH)
	@JoinColumn(name = "idCandidato")
	private Candidato candidato;
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;
	
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Candidato getCandidato() {
		return candidato;
	}
	public void setCandidato(Candidato candidato) {
		this.candidato = candidato;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	

}
