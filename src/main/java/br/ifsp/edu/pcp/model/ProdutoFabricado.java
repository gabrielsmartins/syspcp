package br.ifsp.edu.pcp.model;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.MapKeyJoinColumn;

@Entity
public class ProdutoFabricado extends Produto {

	
	@ElementCollection
    @JoinTable(name="estrutura_produto",
               joinColumns = @JoinColumn(name="prod_id"))
    @Column(name="prod_sub_qntd")
    @MapKeyJoinColumn(name="prod_sub_id",updatable=true)
	private Map<Produto, Double> estrutura;
	
	public ProdutoFabricado(String descricao,SituacaoProduto situacaoProduto, UnidadeMedida unidadeMedida, Double valorUnitario, Integer leadTime,
			Double quantidadeEstoque, Double quantidadeMinima) {
		super(descricao,situacaoProduto, unidadeMedida, valorUnitario, leadTime, quantidadeEstoque, quantidadeMinima);
		estrutura = new LinkedHashMap<>();
	}
	
	public ProdutoFabricado() {
		
	}
	
	public void adicionarMaterial(ProdutoComprado produto, Double quantidade) {
		estrutura.put(produto, quantidade);
	}

	public Map<Produto, Double> getEstrutura() {
		return this.estrutura;
	}
}
