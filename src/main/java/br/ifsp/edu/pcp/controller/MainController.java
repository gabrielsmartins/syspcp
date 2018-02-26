package br.ifsp.edu.pcp.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;

@Controller
public class MainController {
	
	@Inject
	private Result result;
	


	@Get("/dashboard")
	public void dashboard() {
		
	}
	
	
}
