package br.ifsp.edu.pcp.dao;

import java.io.Serializable;

import br.ifsp.edu.pcp.model.ProdutoComprado;

public class ProdutoCompradoDAO extends GenericDAO<ProdutoComprado, Serializable> {

 public ProdutoCompradoDAO() {
	 super(ProdutoComprado.class);
 }
	
}
