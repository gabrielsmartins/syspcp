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
import br.ifsp.edu.pcp.dao.UnidadeMedidaDAO;
import br.ifsp.edu.pcp.model.UnidadeMedida;

@Controller
@Path("/unidades")
public class UnidadeController {

	@Inject
	private Result result;
	@Inject
	private UnidadeMedidaDAO unidadeMedidaDAO;
	
	
	@Get("form")
	public void form(){
		
	}

	@Get({"/",""})
	public List<UnidadeMedida> lista() {
		return unidadeMedidaDAO.listar();
	}

	@Post("/")
	public void adiciona(UnidadeMedida unidade) {
		unidadeMedidaDAO.salvar(unidade);
		result.include("mensagem", "Unidade Salva com Sucesso");
		result.redirectTo(UnidadeController.class).lista();

	}

	@Get("/{unidade.id}")
	public UnidadeMedida busca(UnidadeMedida unidade) {
		return unidadeMedidaDAO.pesquisar(unidade.getId());
	}

	@Put("/{unidade.id}")
	public void atualiza(UnidadeMedida unidade) {
		unidadeMedidaDAO.atualizar(unidade);
		result.include("mensagem", "Unidade Alterado com Sucesso");
		result.redirectTo(UnidadeController.class).lista();
		 
	}

	@Delete("/{unidade.id}")
	public void remove(UnidadeMedida unidade) {
		unidadeMedidaDAO.remover(unidade.getId());
		result.include("mensagem", "Unidade Excluída com Sucesso");
		result.redirectTo(UnidadeController.class).lista();

	}

}
