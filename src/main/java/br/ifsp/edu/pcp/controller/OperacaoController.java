package br.ifsp.edu.pcp.controller;

import static br.com.caelum.vraptor.view.Results.json;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.ifsp.edu.pcp.dao.OperacaoDAO;
import br.ifsp.edu.pcp.dao.SetorDAO;
import br.ifsp.edu.pcp.model.Operacao;

@Controller
@Path("/operacoes")
public class OperacaoController {
	

	@Inject
	private Result result;
	@Inject
	private OperacaoDAO operacaoDAO;
	@Inject
	private SetorDAO setorDAO;
	
	
	@Get("form")
	public void form(){
		result.include("setores", setorDAO.listar());
	}

	@Get({"/",""})
	public List<Operacao> lista() {
		return operacaoDAO.listar();
	}

	@Post("/")
	public void adiciona(Operacao operacao) {
		operacaoDAO.salvar(operacao);
		result.include("mensagem", "Operacaoo Salva com Sucesso");
		result.redirectTo(OperacaoController.class).lista();

	}

	@Get("/{operacao.id}")
	public Operacao busca(Operacao operacao) {
		result.include("setores", setorDAO.listar());
		return operacaoDAO.pesquisar(operacao.getId());
	}

	@Put("/{operacao.id}")
	public void atualiza(Operacao operacao) {
		operacaoDAO.atualizar(operacao);
		result.include("mensagem", "Operacaoo Alterada com Sucesso");
		result.redirectTo(OperacaoController.class).lista();
		 
	}

	@Delete("/{operacao.id}")
	public void remove(Operacao operacao) {
		operacaoDAO.remover(operacao.getId());
		result.include("mensagem", "Operacaoo Excluida com Sucesso");
		result.redirectTo(OperacaoController.class).lista();

	}
	

	@Get("/operacoes.json")
	public void operacoes() {
		 List<Operacao> operacoes = operacaoDAO.listar();
		 result.use(json()).withoutRoot().from(operacoes).serialize();   
    }
	
	@Post("/operacao.json")
	public void buscaOperacao(Long id) {
		 Operacao operacao = operacaoDAO.pesquisar(id);
		 result.use(json()).withoutRoot().from(operacao).serialize();   
    }

}
