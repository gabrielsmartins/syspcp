package br.ifsp.edu.pcp.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.ifsp.edu.pcp.dao.UsuarioDAO;
import br.ifsp.edu.pcp.model.Usuario;
import br.ifsp.edu.pcp.util.Sessao;



@Controller
@Path("/session")	
public class SessionController {
	
	@Inject
	private Result result;
	
	@Inject
	private UsuarioDAO usuarioDAO;
	
	@Inject
	private Sessao sessao;
	

	
	@Post("/autenticar")
	public void autenticar(Usuario usuario) {
		Usuario user = this.usuarioDAO.pesquisarPorLoginESenha(usuario.getLogin(), usuario.getSenha());
		if(user != null) {
			sessao.login(user);
			result.redirectTo(MainController.class).dashboard();
		}else {
			result.include("error", "Usu�rio ou Senha Inv�lidos");
			result.redirectTo(IndexController.class).index();
		}
		
	}
	
	
	@Get("/logout")
	public void logout() {	
		sessao.logout();
		result.include("mensagem", "Obrigado por Utilizar o Sistema");
		result.redirectTo(IndexController.class).index();
	}
	
	
	

}
