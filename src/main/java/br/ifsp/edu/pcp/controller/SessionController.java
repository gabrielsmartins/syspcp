package br.ifsp.edu.pcp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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
	public void autenticar(Usuario usuario,HttpSession session) {
		Usuario user = usuarioDAO.pesquisarPorLoginESenha(usuario.getLogin(), usuario.getSenha());
		if(user != null) {
			session.setAttribute("usuarioLogado", user);
			result.redirectTo(MainController.class).home();;
		}else {
			result.redirectTo(SessionController.class).login();
		}

		
	}
	
	
	@Post("/logout")
	public void logout(HttpSession session) {
		session.invalidate();
		result.redirectTo(SessionController.class).login();
	}
	
	
	

}
