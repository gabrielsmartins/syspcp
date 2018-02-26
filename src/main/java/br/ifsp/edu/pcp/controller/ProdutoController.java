package br.ifsp.edu.pcp.controller;

import static br.com.caelum.vraptor.view.Results.json;

import java.time.LocalTime;
import java.util.List;

import javax.inject.Inject;

import com.google.gson.Gson;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.ifsp.edu.pcp.dao.MaterialDAO;
import br.ifsp.edu.pcp.dao.OperacaoDAO;
import br.ifsp.edu.pcp.dao.ProdutoDAO;
import br.ifsp.edu.pcp.dao.UnidadeMedidaDAO;
import br.ifsp.edu.pcp.model.Material;
import br.ifsp.edu.pcp.model.Operacao;
import br.ifsp.edu.pcp.model.Produto;
import br.ifsp.edu.pcp.model.Roteiro;

@Controller
@Path("produtos")
public class ProdutoController {
	
	@Inject
	private Result result;
	
	@Inject
	private ProdutoDAO produtoDAO;
	
	@Inject
	private OperacaoDAO operacaoDAO;
	

	@Inject
	private MaterialDAO materialDAO;
	
	
	@Inject
	private UnidadeMedidaDAO unidadeMedidaDAO;
	
	 @Inject
	private Produto produto;
	
	
	
	
	@Get("form")
	public void form(){
		result.include("unidades", unidadeMedidaDAO.listar());
		result.include("produtos", produtoDAO.listar());
		result.include("materiais", materialDAO.listar());
		result.include("operacoes", operacaoDAO.listar());
	}

	@Get({"/",""})
	public List<Produto> lista() {
		return produtoDAO.listar();
	}

	@Post("/")
	public void adiciona(Produto produto) {
		produto.setEstrutura(this.produto.getEstrutura());
		produto.setRoteiros(this.produto.getRoteiros());
		produtoDAO.salvar(produto);
		result.include("mensagem", "Produto Salvo com Sucesso");
		produto = new Produto();
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

	@Post("/addRoteiro")
	public void adicionarRoteiro(Roteiro roteiro,String tempoSetup, String tempoProducao, String tempoFinalizacao) {
		Operacao operacao = operacaoDAO.pesquisar(roteiro.getOperacao().getId());
		roteiro.setOperacao(operacao);
		roteiro.setTempoSetup(LocalTime.parse(tempoSetup));
		roteiro.setTempoProducao(LocalTime.parse(tempoProducao));
		roteiro.setTempoFinalizacao(LocalTime.parse(tempoFinalizacao));
		roteiro.setSequencia(Long.parseLong(String.valueOf(this.produto.getRoteiros().size())+1));
		this.produto.adicionarRoteiro(roteiro);
		//result.redirectTo(ProdutoController.class).form();
		
	}
	
	
	
	
	@Post("/addProdutoJSON")
	public void adicionarProdutoJSON(Long produtoId, Double quantidade) {
		this.produto.adicionarComponente(produtoDAO.pesquisar(produtoId), quantidade);
		result.use(json()).withoutRoot().from(this.produto.getEstrutura()).include("componente").serialize();
	}
	
	
	@Post("/removeProdutoJSON")
	public void removerProdutoJSON(Long produtoId) {
		this.produto.removerComponente(produtoDAO.pesquisar(produtoId));
		result.use(json()).withoutRoot().from(this.produto.getEstrutura()).include("componente").serialize();
	}
	
	
	@Post("/addMaterialJSON")
	public void adicionarMaterialJSON(Long materialId, Double quantidade) {
		this.produto.adicionarComponente(materialDAO.pesquisar(materialId), quantidade);
		result.use(json()).withoutRoot().from(this.produto.getEstrutura()).serialize();
	}
	
	@Post("/removeMaterialJSON")
	public void removerMaterialJSON(Long materialId) {
		this.produto.removerComponente(materialDAO.pesquisar(materialId));
		result.use(json()).withoutRoot().from(this.produto.getEstrutura()).serialize();
	}
	
	
	
	

}
