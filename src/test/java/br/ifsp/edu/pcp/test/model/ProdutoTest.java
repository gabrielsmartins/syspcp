package br.ifsp.edu.pcp.test.model;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import br.ifsp.edu.pcp.model.ProdutoComprado;
import br.ifsp.edu.pcp.model.ProdutoFabricado;
import br.ifsp.edu.pcp.model.SituacaoProduto;
import br.ifsp.edu.pcp.model.UnidadeMedida;

public class ProdutoTest {



	@Test
	public void produtoPoderSerComprado() {
		UnidadeMedida unidadeMedida = new UnidadeMedida("Unidade","UN");
		ProdutoComprado produto = new ProdutoComprado("Chapa Aço #20",SituacaoProduto.ATIVO,unidadeMedida,50.00,2,50.00,25.00);
		produto.setPeso(0.5);
		produto.setAltura(2.0);
		produto.setComprimento(500.00);
		produto.setLargura(200.00);
		assertEquals("Chapa Aço #20", produto.getDescricao());
		assertEquals("Unidade", produto.getUnidadeMedida().getDescricao());
		assertEquals("UN", produto.getUnidadeMedida().getSigla());
		assertEquals(50.00, produto.getValorUnitario(),0);
		assertEquals(2, produto.getLeadTime(),0);
		assertEquals(50.00, produto.getQuantidadeEstoque(),0);
		assertEquals(25.00, produto.getQuantidadeMinima(),0);
		assertEquals(0.5, produto.getPeso(),0);
		assertEquals(2.0, produto.getAltura(),0);
		assertEquals(500.0, produto.getComprimento(),0);
		assertEquals(200.0, produto.getLargura(),0);
		assertEquals(SituacaoProduto.ATIVO, produto.getSituacao());
	}
	
	@Test
	public void produtoPoderSerFabriado() {
		UnidadeMedida unidadeMedida = new UnidadeMedida("Unidade","UN");
		ProdutoComprado material1 = new ProdutoComprado("TUBO DE AÇO 20X20X100",SituacaoProduto.ATIVO, unidadeMedida, 8.00, 5, 100.00, 75.00);
		material1.setPeso(0.2);
		material1.setAltura(20.00);
		material1.setComprimento(100.00);
		material1.setLargura(20.00);
		
		ProdutoComprado material2 = new ProdutoComprado("TAMPO DE MADEIRA",SituacaoProduto.ATIVO, unidadeMedida, 8.00, 5, 100.00, 75.00);
		
		material2.setPeso(1.00);
		material2.setAltura(35.00);
		material2.setComprimento(500.00);
		material2.setLargura(500.00);

		
		ProdutoFabricado produto = new ProdutoFabricado("Mesa",SituacaoProduto.ATIVO,unidadeMedida,150.00,2,10.00,5.00);
		produto.setPeso(1.5);
		produto.setAltura(300.0);
		produto.setComprimento(500.00);
		produto.setLargura(200.00);
		produto.setSituacao(SituacaoProduto.ATIVO);
		
		
		produto.adicionarMaterial(material1,2.00);
		produto.adicionarMaterial(material2,1.00);
		
		assertEquals("Mesa", produto.getDescricao());
		assertEquals("Unidade", produto.getUnidadeMedida().getDescricao());
		assertEquals("UN", produto.getUnidadeMedida().getSigla());
		assertEquals(150.00, produto.getValorUnitario(),0);
		assertEquals(2, produto.getLeadTime(),0);
		assertEquals(10.00, produto.getQuantidadeEstoque(),0);
		assertEquals(5.00, produto.getQuantidadeMinima(),0);
		assertEquals(2.00, produto.getEstrutura().size(),0);
		assertEquals(1.5, produto.getPeso(),0);
		assertEquals(300.0, produto.getAltura(),0);
		assertEquals(500.0, produto.getComprimento(),0);
		assertEquals(200.0, produto.getLargura(),0);
		assertEquals(SituacaoProduto.ATIVO, produto.getSituacao());
		
	}

}
