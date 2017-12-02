package br.ifsp.edu.pcp.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.ifsp.edu.pcp.dao.UsuarioDAO;
import br.ifsp.edu.pcp.model.Usuario;

@Controller
@Path("/session")	
public class SessionController {
	
	@Inject
	private Result result;
	
	@Inject
	private UsuarioDAO usuarioDAO;
	
	@Path("/login")
	public void login() {
		
	}
	
	@Post("/autenticar")
	public Usuario home(Usuario usuario) {
		Usuario user = usuarioDAO.pesquisarPorLoginESenha(usuario.getLogin(), usuario.getSenha());
		if(user != null) {
			result.include("usuario",user.getNome());
			return user;
		}else {
			result.redirectTo(SessionController.class).login();;
		}
	  return null;
		
	}

}
