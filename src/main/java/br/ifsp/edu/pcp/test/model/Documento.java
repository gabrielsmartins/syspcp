package br.ifsp.edu.pcp.test.model;

import java.time.LocalDate;

import br.ifsp.edu.pcp.model.Usuario;

public class Documento {
	
	protected LocalDate dataEmissao;
	protected LocalDate prazo;
	protected Usuario responsavel;
	protected LocalDate dataConclusao;

	public Documento() {
		
	}
	
	public Documento(LocalDate dataEmissao, LocalDate prazo, Usuario responsavel) {
		this.dataEmissao = dataEmissao;
		this.prazo = prazo;
		this.responsavel = responsavel;
	}

	public LocalDate getDataEmissao() {
		return dataEmissao;
	}

	public void setDataEmissao(LocalDate dataEmissao) {
		this.dataEmissao = dataEmissao;
	}

	public LocalDate getPrazo() {
		return prazo;
	}

	public void setPrazo(LocalDate prazo) {
		this.prazo = prazo;
	}

	public Usuario getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(Usuario responsavel) {
		this.responsavel = responsavel;
	}

	public LocalDate getDataConclusao() {
		return dataConclusao;
	}

	public void setDataConclusao(LocalDate dataConclusao) {
		this.dataConclusao = dataConclusao;
	}
	
	
	

}
