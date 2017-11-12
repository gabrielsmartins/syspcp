package br.ifsp.edu.pcp.test.dao;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.persistence.EntityManager;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import br.ifsp.edu.pcp.dao.HibernateUtil;
import br.ifsp.edu.pcp.dao.ProdutoCompradoDAO;
import br.ifsp.edu.pcp.dao.UnidadeMedidaDAO;
import br.ifsp.edu.pcp.model.ProdutoComprado;
import br.ifsp.edu.pcp.model.SituacaoProduto;
import br.ifsp.edu.pcp.model.UnidadeMedida;

public class ProdutoCompradoDAOTest {

	private static UnidadeMedidaDAO unidadeMedidaDAO;
	private static ProdutoCompradoDAO produtoCompradoDAO;
	private static UnidadeMedida unidadeMedida;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		produtoCompradoDAO = new ProdutoCompradoDAO();
		unidadeMedidaDAO = new UnidadeMedidaDAO();
		unidadeMedida = new UnidadeMedida("Unidade", "UN");
		unidadeMedidaDAO.salvar(unidadeMedida);
	}

	@Test
	public void salvarProdutoComprado() {

		ProdutoComprado produtoComprado = new ProdutoComprado("CHAPA AÇO INOX #20", SituacaoProduto.ATIVO,
				unidadeMedida, 75.00, 5, 100.00, 85.00);

		produtoComprado.setPeso(0.2);
		produtoComprado.setAltura(0.2);
		produtoComprado.setComprimento(200.00);
		produtoComprado.setLargura(200.00);
		produtoComprado.setSituacao(SituacaoProduto.ATIVO);
		assertNotNull(produtoCompradoDAO.salvar(produtoComprado));
	}

	@Test
	public void alterarProdutoComprado() {
		ProdutoComprado produtoComprado = new ProdutoComprado("CHAPA AÇO INOX #18", SituacaoProduto.ATIVO,
				unidadeMedida, 65.00, 7, 75.00, 55.00);
		produtoComprado.setPeso(0.35);
		produtoComprado.setAltura(0.2);
		produtoComprado.setComprimento(300.00);
		produtoComprado.setLargura(250.00);
		produtoComprado.setSituacao(SituacaoProduto.ATIVO);
		produtoCompradoDAO.salvar(produtoComprado);
		ProdutoComprado produtoCompradoAlterado = new ProdutoComprado("CHAPA AÇO INOX #10", SituacaoProduto.ATIVO,
				unidadeMedida, 95.00, 3, 15.00, 5.00);
		produtoCompradoAlterado.setPeso(0.3);
		produtoCompradoAlterado.setAltura(0.2);
		produtoCompradoAlterado.setComprimento(350.00);
		produtoCompradoAlterado.setLargura(150.00);
		produtoCompradoAlterado.setSituacao(SituacaoProduto.ATIVO);

		produtoCompradoAlterado.setId(produtoComprado.getId());
		produtoCompradoDAO.atualizar(produtoCompradoAlterado);
	}

	@Test
	public void removerProdutoComprado() {
		ProdutoComprado produtoComprado = new ProdutoComprado("PARAFUSO 3/8 \"\" x 100mm", SituacaoProduto.ATIVO,
				unidadeMedida, 95.00, 3, 15.00, 5.00);
		produtoCompradoDAO.salvar(produtoComprado);
		produtoCompradoDAO.remover(produtoComprado.getId());
	}

	@Test
	public void pesquisarProdutoComprado() {
		ProdutoComprado produtoComprado = new ProdutoComprado("ARRUELA 1/2 \"\" x 100mm", SituacaoProduto.ATIVO,
				unidadeMedida, 95.00, 3, 15.00, 5.00);
		produtoCompradoDAO.salvar(produtoComprado);
		ProdutoComprado produtoCompradoEncontrado = produtoCompradoDAO.pesquisar(produtoComprado.getId());
		assertNotNull(produtoCompradoEncontrado);
	}

	@Test
	public void listarProdutoComprado() {
		List<ProdutoComprado> produtos = produtoCompradoDAO.listar();
		assertNotNull(produtos);
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		EntityManager entityManager = HibernateUtil.getInstance();
		entityManager.getTransaction().begin();
		entityManager.createNativeQuery("TRUNCATE TABLE produto CASCADE").executeUpdate();
		entityManager.createNativeQuery("TRUNCATE TABLE unidade CASCADE").executeUpdate();
		entityManager.flush();
		entityManager.getTransaction().commit();

	}

}
