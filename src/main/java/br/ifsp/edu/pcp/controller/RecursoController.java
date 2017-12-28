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
import br.ifsp.edu.pcp.dao.RecursoDAO;
import br.ifsp.edu.pcp.dao.SetorDAO;
import br.ifsp.edu.pcp.model.Recurso;


@Controller
@Path("/recursos")
public class RecursoController {
	
	@Inject
	private Result result;
	@Inject
	private RecursoDAO recursoDAO;
	@Inject
	private SetorDAO setorDAO;
	
	
	@Get("form")
	public void form(){
		result.include("setores", setorDAO.listar());
	}

	@Get({"/",""})
	public List<Recurso> lista() {
		return recursoDAO.listar();
	}

	@Post("/")
	public void adiciona(Recurso recurso) {
		recursoDAO.salvar(recurso);
		result.include("mensagem", "Recurso Salvo com Sucesso");
		result.redirectTo(RecursoController.class).lista();

	}

	@Get("/{recurso.id}")
	public Recurso busca(Recurso recurso) {
		result.include("setores", setorDAO.listar());
		return recursoDAO.pesquisar(recurso.getId());
	}

	@Put("/{recurso.id}")
	public void atualiza(Recurso recurso) {
		recursoDAO.atualizar(recurso);
		result.include("mensagem", "Recurso Alterado com Sucesso");
		result.redirectTo(RecursoController.class).lista();
		 
	}

	@Delete("/{recurso.id}")
	public void remove(Recurso recurso) {
		recursoDAO.remover(recurso.getId());
		result.include("mensagem", "Recurso Excluido com Sucesso");
		result.redirectTo(RecursoController.class).lista();

	}
	

}
