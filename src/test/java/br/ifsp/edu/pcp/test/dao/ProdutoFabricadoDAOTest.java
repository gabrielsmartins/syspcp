package br.ifsp.edu.pcp.test.dao;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.persistence.EntityManager;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import br.ifsp.edu.pcp.dao.HibernateUtil;
import br.ifsp.edu.pcp.dao.ProdutoCompradoDAO;
import br.ifsp.edu.pcp.dao.ProdutoFabricadoDAO;
import br.ifsp.edu.pcp.dao.UnidadeMedidaDAO;
import br.ifsp.edu.pcp.model.ProdutoComprado;
import br.ifsp.edu.pcp.model.ProdutoFabricado;
import br.ifsp.edu.pcp.model.SituacaoProduto;
import br.ifsp.edu.pcp.model.UnidadeMedida;

public class ProdutoFabricadoDAOTest {

	private static UnidadeMedidaDAO unidadeMedidaDAO;
	private static ProdutoCompradoDAO produtoCompradoDAO;
	private static ProdutoFabricadoDAO produtoFabricadoDAO;
	private static UnidadeMedida unidadeMedida;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		unidadeMedidaDAO = new UnidadeMedidaDAO();
		produtoCompradoDAO = new ProdutoCompradoDAO();
		produtoFabricadoDAO = new ProdutoFabricadoDAO();
		unidadeMedida = new UnidadeMedida("Unidade", "UN");
		unidadeMedidaDAO.salvar(unidadeMedida);
	}

	@Test
	public void salvarProdutoFabricado() {

		ProdutoComprado produtoComprado = new ProdutoComprado("CHAPA ACO INOX #20", SituacaoProduto.ATIVO,
				unidadeMedida, 75.00, 5, 100.00, 85.00);

		produtoComprado.setPeso(0.35);
		produtoComprado.setAltura(0.2);
		produtoComprado.setComprimento(300.00);
		produtoComprado.setLargura(250.00);

		produtoCompradoDAO.salvar(produtoComprado);

		ProdutoFabricado produtoFabricado = new ProdutoFabricado("Refrigerador", SituacaoProduto.ATIVO, unidadeMedida,
				1750.00, 20, 5.00, 2.00);

		produtoFabricado.setPeso(10.00);
		produtoFabricado.setAltura(1750.00);
		produtoFabricado.setComprimento(500.00);
		produtoFabricado.setLargura(450.00);

		produtoFabricado.adicionarMaterial(produtoComprado, 2.00);
		assertNotNull(produtoFabricadoDAO.salvar(produtoFabricado));
	}

	@Test
	public void alteraProdutoFabricado() {
		ProdutoComprado produtoComprado = new ProdutoComprado("CHAPA ACO INOX #18", SituacaoProduto.ATIVO,
				unidadeMedida, 65.00, 7, 75.00, 55.00);

		produtoComprado.setPeso(0.35);
		produtoComprado.setAltura(0.2);
		produtoComprado.setComprimento(300.00);
		produtoComprado.setLargura(250.00);
		produtoCompradoDAO.salvar(produtoComprado);

		ProdutoFabricado produtoFabricado = new ProdutoFabricado("Refrigerador", SituacaoProduto.ATIVO, unidadeMedida,
				1550.00, 20, 5.00, 2.00);

		produtoFabricado.setPeso(10.00);
		produtoFabricado.setAltura(1750.00);
		produtoFabricado.setComprimento(500.00);
		produtoFabricado.setLargura(450.00);

		produtoFabricado.adicionarMaterial(produtoComprado, 5.00);

		produtoFabricadoDAO.salvar(produtoFabricado);

		ProdutoFabricado produtoFabricadoAlterado = new ProdutoFabricado("Fogao", SituacaoProduto.ATIVO, unidadeMedida,
				1600.00, 20, 5.00, 2.00);

		produtoFabricadoAlterado.setPeso(10.00);
		produtoFabricadoAlterado.setAltura(1750.00);
		produtoFabricadoAlterado.setComprimento(500.00);
		produtoFabricadoAlterado.setLargura(450.00);

		produtoFabricadoAlterado.adicionarMaterial(produtoComprado, 5.00);

		produtoFabricadoAlterado.setId(produtoFabricado.getId());
		produtoFabricadoDAO.atualizar(produtoFabricadoAlterado);
	}

	@Test
	public void removerProdutoFabricado() {
		ProdutoComprado produtoComprado = new ProdutoComprado("PARAFUSO 3/8 \"\" x 100mm", SituacaoProduto.ATIVO,
				unidadeMedida, 95.00, 3, 15.00, 5.00);

		produtoCompradoDAO.salvar(produtoComprado);

		ProdutoFabricado produtoFabricado = new ProdutoFabricado("Prateleira Grande", SituacaoProduto.ATIVO,
				unidadeMedida, 350.00, 20, 5.00, 2.00);

		produtoFabricado.adicionarMaterial(produtoComprado, 2.00);

		produtoFabricadoDAO.salvar(produtoFabricado);
		produtoFabricadoDAO.remover(produtoFabricado.getId());
	}

	@Test
	public void pesquisarProdutoFabricado() {
		ProdutoComprado produtoComprado = new ProdutoComprado("ARRUELA 1/2 \"\" x 100mm", SituacaoProduto.ATIVO,
				unidadeMedida, 95.00, 3, 15.00, 5.00);

		produtoCompradoDAO.salvar(produtoComprado);

		ProdutoFabricado produtoFabricado = new ProdutoFabricado("Estante Pequena", SituacaoProduto.ATIVO,
				unidadeMedida, 150.00, 20, 5.00, 2.00);
		produtoFabricadoDAO.salvar(produtoFabricado);

		ProdutoFabricado produtoFabricadoEncontrado = produtoFabricadoDAO.pesquisar(produtoFabricado.getId());
		assertNotNull(produtoFabricadoEncontrado);
	}

	@Test
	public void listarProdutoFabricado() {
		List<ProdutoFabricado> produtos = produtoFabricadoDAO.listar();
		assertNotNull(produtos);
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		EntityManager entityManager = HibernateUtil.getInstance();
		entityManager.getTransaction().begin();
		entityManager.createNativeQuery("TRUNCATE TABLE estrutura_produto CASCADE").executeUpdate();
		entityManager.createNativeQuery("TRUNCATE TABLE produto CASCADE").executeUpdate();
		entityManager.createNativeQuery("TRUNCATE TABLE unidade CASCADE").executeUpdate();
		entityManager.flush();
		entityManager.getTransaction().commit();
	}

}
