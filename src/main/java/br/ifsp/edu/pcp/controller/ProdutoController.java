package br.ifsp.edu.pcp.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.ifsp.edu.pcp.dao.MaterialDAO;
import br.ifsp.edu.pcp.dao.ProdutoDAO;
import br.ifsp.edu.pcp.dao.UnidadeMedidaDAO;
import br.ifsp.edu.pcp.model.Produto;

@Controller
@Path("produtos")
public class ProdutoController {
	
	@Inject
	private Result result;
	
	@Inject
	private ProdutoDAO produtoDAO;
	
	@Inject
	private MaterialDAO materialDAO;
	
	
	
	
	
	@Inject
	private UnidadeMedidaDAO unidadeMedidaDAO;
	
	
	@Get("form")
	public void form(){
		result.include("unidades", unidadeMedidaDAO.listar());
		result.include("produtos", produtoDAO.listar());
		result.include("materiais", materialDAO.listar());
	}

	@Get({"/",""})
	public List<Produto> lista() {
		return produtoDAO.listar();
	}

	@Post("/")
	public void adiciona(Produto produto) {
		produtoDAO.salvar(produto);
		result.include("mensagem", "Produto Salvo com Sucesso");
		result.redirectTo(ProdutoController.class).lista();

	}

	@Get("/{produto.id}")
	public Produto busca(Produto produto) {
		result.include("unidades", unidadeMedidaDAO.listar());
		result.include("produtos", produtoDAO.listar());
		result.include("materiais", materialDAO.listar());
		return produtoDAO.pesquisar(produto.getId());
	}

	@Put("/{produto.id}")
	public void atualiza(Produto produto) {
		produtoDAO.atualizar(produto);
		result.include("mensagem", "Produto Alterado com Sucesso");
		result.redirectTo(ProdutoController.class).lista();
		 
	}

	@Delete("/{produto.id}")
	public void remove(Produto produto) {
		produtoDAO.remover(produto.getId());
		result.include("mensagem", "Produto Excluido com Sucesso");
		result.redirectTo(ProdutoController.class).lista();

	}

	
	
	
	

}
