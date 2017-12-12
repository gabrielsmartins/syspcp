package br.ifsp.edu.pcp.model;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.ifsp.edu.pcp.model.Usuario;

@SessionScoped
@Named("session")
public class Sessao implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Usuario usuario;

	public void login(Usuario usuario) {
		this.usuario = usuario;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public boolean isLogado() {
		return this.usuario != null;
	}

}
