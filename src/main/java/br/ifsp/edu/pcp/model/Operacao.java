package br.ifsp.edu.pcp.model;

import java.io.Serializable;

public class Operacao implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String descricao;
	private String instrucao;
	private Setor setor;
	
	public Operacao(String descricao, String instrucao, Setor setor) {
		this.descricao = descricao;
		this.instrucao = instrucao;
		this.setor = setor;
	}

	public Operacao() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getInstrucao() {
		return instrucao;
	}

	public void setInstrucao(String instrucao) {
		this.instrucao = instrucao;
	}

	public Setor getSetor() {
		return setor;
	}

	public void setSetor(Setor setor) {
		this.setor = setor;
	}
	
	
	
	
	
	

}
