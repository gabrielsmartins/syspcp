package br.ifsp.edu.pcp.model;

import java.io.Serializable;

public class Setor implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String descricao;
	
	public Setor(String descricao) {
		this.descricao = descricao;
	}
	
	

	public Setor() {
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


}
