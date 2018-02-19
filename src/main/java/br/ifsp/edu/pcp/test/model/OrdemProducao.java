package br.ifsp.edu.pcp.test.model;

import java.time.LocalDate;

import br.ifsp.edu.pcp.model.Produto;
import br.ifsp.edu.pcp.model.Usuario;

public class OrdemProducao extends Documento {

	private StatusOrdem status = StatusOrdem.EMITIDA;
	private Produto produto;
	
	public OrdemProducao(LocalDate dataEmissao, LocalDate prazo, Usuario responsavel,Produto produto) {
		super(dataEmissao,prazo,responsavel);
		this.produto = produto;
	
	}

	public StatusOrdem getStatus() {
		return status;
	}

	public void setStatus(StatusOrdem status) {
		this.status = status;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}
	
	
	
	
	


	
	
	

}
