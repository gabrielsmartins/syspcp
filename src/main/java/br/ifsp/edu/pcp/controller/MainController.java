package br.ifsp.edu.pcp.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
@Path("/main")
public class MainController {
	
	@Inject
	private Result result;
	


	@Get("/home")
	public void home() {
		
	}

}
