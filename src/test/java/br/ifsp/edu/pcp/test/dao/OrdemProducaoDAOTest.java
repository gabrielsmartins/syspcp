package br.ifsp.edu.pcp.test.dao;

import static org.junit.Assert.*;

import java.time.LocalDate;
import java.time.format.SignStyle;
import java.util.List;

import javax.persistence.EntityManager;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import br.ifsp.edu.pcp.dao.HibernateUtil;
import br.ifsp.edu.pcp.dao.OrdemProducaoDAO;
import br.ifsp.edu.pcp.dao.PerfilDAO;
import br.ifsp.edu.pcp.model.OrdemProducao;
import br.ifsp.edu.pcp.model.Perfil;
import br.ifsp.edu.pcp.model.Produto;
import br.ifsp.edu.pcp.model.SituacaoProduto;
import br.ifsp.edu.pcp.model.UnidadeMedida;
import br.ifsp.edu.pcp.model.Usuario;

public class OrdemProducaoDAOTest {
	
	private static OrdemProducaoDAO ordemProducaoDAO;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		ordemProducaoDAO = new OrdemProducaoDAO();
	}


	@Test
	public void salvarOrdemProducao() {
		Perfil perfil = new Perfil("PCP");
		Usuario usuario = new Usuario("Admin", "admin", "12345", perfil);
		UnidadeMedida unidadeMedida = new UnidadeMedida("UNIDADE", "UN");
		Produto produto = new Produto("CADEIRA", SituacaoProduto.ATIVO, unidadeMedida, 50.50, 2, 10.00, 5.00);
		OrdemProducao ordemProducao = new OrdemProducao(produto , LocalDate.parse("25/03/2018"), usuario);
		assertNotNull(ordemProducaoDAO.salvar(ordemProducao));
	}
	
	@Test
	public void alterarOrdemProducao() {
		Perfil perfil = new Perfil("PROGRAMADOR PCP");
		perfilDAO.salvar(perfil);
		Perfil alterado = new Perfil("PRODUCAO");
		alterado.setId(perfil.getId());
		perfilDAO.atualizar(alterado);
	}
	
	@Test
	public void removerPerfil() {
		Perfil perfil = new Perfil("GERENTE PCP");
		perfilDAO.salvar(perfil);
        perfilDAO.remover(perfil.getId());
	}
	
	@Test
	public void pesquisarPerfil() {
		Perfil perfil = new Perfil("PROGRAMADOR PCP");
		perfilDAO.salvar(perfil);
       Perfil encontrado = perfilDAO.pesquisar(perfil.getId());
       assertNotNull(encontrado);
	}
	
	@Test
	public void listarPerfil() {
		List<Perfil> perfis = perfilDAO.listar();
		assertNotNull(perfis);
	}
	
	
	
	
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		EntityManager entityManager = HibernateUtil.getInstance();
		entityManager.getTransaction().begin();
		entityManager.createNativeQuery("TRUNCATE TABLE perfil CASCADE").executeUpdate();
		entityManager.flush();
		entityManager.getTransaction().commit();
		
	}

}
