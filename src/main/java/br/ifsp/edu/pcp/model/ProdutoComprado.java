package br.ifsp.edu.pcp.model;

import javax.persistence.Entity;

@Entity
public class ProdutoComprado extends Produto {

	public ProdutoComprado(String descricao, SituacaoProduto situacaoProduto,UnidadeMedida unidadeMedida, Double valorUnitario, Integer leadTime,
			Double quantidadeEstoque, Double quantidadeMinima) {
		super(descricao, situacaoProduto,unidadeMedida, valorUnitario, leadTime, quantidadeEstoque, quantidadeMinima);
	}

	
	public ProdutoComprado() {
		
	}

}
