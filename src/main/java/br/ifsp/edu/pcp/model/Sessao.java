package br.ifsp.edu.pcp.model;

import javax.enterprise.context.SessionScoped;

import br.ifsp.edu.pcp.model.Usuario;


@SessionScoped
public class Sessao {
	
	private Usuario usuario;
	
	 public void login(Usuario usuario) {
		    this.usuario = usuario;
		  }
		  
		  public String getNome() {
		    return usuario.getNome();
		  }
		  
		  public boolean isLogado() {
		    return this.usuario != null;
		  }

}
