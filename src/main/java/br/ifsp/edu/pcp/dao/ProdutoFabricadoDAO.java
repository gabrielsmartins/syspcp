package br.ifsp.edu.pcp.dao;

import java.io.Serializable;

import br.ifsp.edu.pcp.model.ProdutoFabricado;

public class ProdutoFabricadoDAO extends GenericDAO<ProdutoFabricado, Serializable> {

	public ProdutoFabricadoDAO() {
		super(ProdutoFabricado.class);
	}
}
