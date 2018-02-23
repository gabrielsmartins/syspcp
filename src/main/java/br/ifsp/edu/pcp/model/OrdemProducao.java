package br.ifsp.edu.pcp.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

public class OrdemProducao {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ord_id")
	private Long id;
	
	@Enumerated
	@Column(name="ord_status")
	private StatusOrdemProducao status = StatusOrdemProducao.EMITIDA;
	
	@OneToOne
	@Column(name="ord_id")
	private Produto produto;
	
	@Column(name="ord_dt_emi")
	
	private LocalDate dataEmissao = LocalDate.now();
	@Column(name="ord_prazo")
	private LocalDate prazo;
	
	@OneToOne
	@Column(name="ord_usr_id")
	private Usuario responsavel;
	
	@Column(name="ord_dt_concl")
	private LocalDate dataConclusao;

	

	public OrdemProducao(Produto produto, LocalDate prazo, Usuario responsavel) {
		this.produto = produto;
		this.prazo = prazo;
		this.responsavel = responsavel;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}



	public StatusOrdemProducao getStatus() {
		return status;
	}

	public void setStatus(StatusOrdemProducao status) {
		this.status = status;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
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
