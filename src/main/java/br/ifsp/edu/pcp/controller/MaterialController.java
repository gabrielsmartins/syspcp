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
import br.ifsp.edu.pcp.dao.UnidadeMedidaDAO;
import br.ifsp.edu.pcp.model.Material;

@Controller
@Path("/materiais")	
public class MaterialController {
	
	@Inject
	private Result result;
	@Inject
	private MaterialDAO materialDAO;
	@Inject
	private UnidadeMedidaDAO unidadeMedidaDAO;
	
	
	@Get("form")
	public void form(){
		result.include("unidades", unidadeMedidaDAO.listar());
	}

	@Get({"/",""})
	public List<Material> lista() {
		return materialDAO.listar();
	}

	@Post("/")
	public void adiciona(Material material) {
		materialDAO.salvar(material);
		result.include("mensagem", "Material Salvo com Sucesso");
		result.redirectTo(MaterialController.class).lista();

	}

	@Get("/{material.id}")
	public Material busca(Material material) {
		result.include("mensagem", unidadeMedidaDAO.listar());
		return materialDAO.pesquisar(material.getId());
	}

	@Put("/{material.id}")
	public void atualiza(Material material) {
		materialDAO.atualizar(material);
		result.include("mensagem", "Material Alterado com Sucesso");
		result.redirectTo(MaterialController.class).lista();
		 
	}

	@Delete("/{material.id}")
	public void remove(Material material) {
		materialDAO.remover(material.getId());
		result.include("mensagem", "Material Excluído com Sucesso");
		result.redirectTo(MaterialController.class).lista();

	}

}
