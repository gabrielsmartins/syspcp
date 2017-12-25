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
import br.ifsp.edu.pcp.dao.SetorDAO;
import br.ifsp.edu.pcp.model.Setor;

@Controller
@Path("/setores")
public class SetorController {

	@Inject
	private Result result;
	@Inject
	private SetorDAO setorDAO;
	
	
	@Get("form")
	public void form(){
		
	}

	@Get({"/",""})
	public List<Setor> lista() {
		return setorDAO.listar();
	}

	@Post("/")
	public void adiciona(Setor setor) {
		setorDAO.salvar(setor);
		result.include("mensagem", "Setor Salvo com Sucesso");
		result.redirectTo(SetorController.class).lista();

	}

	@Get("/{setor.id}")
	public Setor busca(Setor setor) {
		return setorDAO.pesquisar(setor.getId());
	}

	@Put("/{setor.id}")
	public void atualiza(Setor setor) {
		setorDAO.atualizar(setor);
		result.include("mensagem", "Setor Alterado com Sucesso");
		result.redirectTo(SetorController.class).lista();
		 
	}

	@Delete("/{setor.id}")
	public void remove(Setor setor) {
		setorDAO.remover(setor.getId());
		result.include("mensagem", "Setor Excluido com Sucesso");
		result.redirectTo(SetorController.class).lista();

	}
}
