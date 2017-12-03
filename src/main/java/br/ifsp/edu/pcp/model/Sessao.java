package br.ifsp.edu.pcp.model;

import br.ifsp.edu.pcp.model.Usuario;


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
