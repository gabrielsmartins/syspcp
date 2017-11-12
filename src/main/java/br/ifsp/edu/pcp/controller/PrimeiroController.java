package br.ifsp.edu.pcp.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;



@Controller
public class PrimeiroController {
	
	@Inject 
	private Result result;

    @Get("/home")
    public void home() {
        result.include("mensagem", "Ol�, VRaptor 4!");
    }
	
	

}
