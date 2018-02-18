package br.ifsp.edu.pcp.dao;

import java.io.Serializable;

import javax.enterprise.context.RequestScoped;

import br.ifsp.edu.pcp.model.Produto;

@RequestScoped
public class ProdutoDAO extends GenericDAO<Produto, Serializable> {

	public ProdutoDAO() {
		super(Produto.class);
	}
	

	
	
}
