package br.ifsp.edu.pcp.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.MapKeyJoinColumn;


@SessionScoped
@Named("produtoSession")
@Entity
public class Produto extends Componente implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@ElementCollection
	@JoinTable(name = "estrutura_produto", joinColumns = @JoinColumn(name = "prod_id"))
	@Column(name = "prod_sub_qntd")
	@MapKeyJoinColumn(name = "prod_sub_id", updatable = true)
	private Map<Componente, Double> estrutura = new LinkedHashMap<>();

	 @ElementCollection
	  @CollectionTable(
	        name="roteiro",
	        joinColumns=@JoinColumn(name="rot_prod_id")
	  )
	private List<Roteiro> roteiros = new ArrayList<>();
	 
	 

	public Produto(String descricao, SituacaoProduto situacaoProduto, UnidadeMedida unidadeMedida, Double valorUnitario,
			Integer leadTime, Double quantidadeEstoque, Double quantidadeMinima) {
		super(descricao, situacaoProduto, unidadeMedida, valorUnitario, leadTime, quantidadeEstoque, quantidadeMinima);
	}

	public Produto() {

	}

	public void adicionarMaterial(Material produto, Double quantidade) {
		estrutura.put(produto, quantidade);
	}

	public Map<Componente, Double> getEstrutura() {
		return this.estrutura;
	}

	public void adicionarRoteiro(Roteiro roteiro) {
		this.roteiros.add(roteiro);
	}

	public List<Roteiro> getRoteiros() {
		return roteiros;
	}

	public void setEstrutura(Map<Componente, Double> estrutura) {
		this.estrutura = estrutura;
	}

	public void setRoteiros(List<Roteiro> roteiros) {
		this.roteiros = roteiros;
	}
	
	
	
	
}
