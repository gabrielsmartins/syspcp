package br.ifsp.edu.pcp.test.model;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import br.ifsp.edu.pcp.model.Material;
import br.ifsp.edu.pcp.model.Produto;
import br.ifsp.edu.pcp.model.SituacaoProduto;
import br.ifsp.edu.pcp.model.UnidadeMedida;

public class ProdutoTest {



	@Test
	public void produtoPoderSerMaterial() {
		UnidadeMedida unidadeMedida = new UnidadeMedida("Unidade","UN");
		Material material = new Material("Chapa ACO #20",SituacaoProduto.ATIVO,unidadeMedida,50.00,2,50.00,25.00);
		material.setCodigoInterno("CHA-50");
		material.setPeso(0.5);
		material.setAltura(2.0);
		material.setComprimento(500.00);
		material.setLargura(200.00);
		assertEquals("Chapa ACO #20", material.getDescricao());
		assertEquals("CHA-50",material.getCodigoInterno());
		assertEquals("Unidade", material.getUnidadeMedida().getDescricao());
		assertEquals("UN", material.getUnidadeMedida().getSigla());
		assertEquals(50.00, material.getValorUnitario(),0);
		assertEquals(2, material.getLeadTime(),0);
		assertEquals(50.00, material.getQuantidadeEstoque(),0);
		assertEquals(25.00, material.getQuantidadeMinima(),0);
		assertEquals(0.5, material.getPeso(),0);
		assertEquals(2.0, material.getAltura(),0);
		assertEquals(500.0, material.getComprimento(),0);
		assertEquals(200.0, material.getLargura(),0);
		assertEquals(SituacaoProduto.ATIVO, material.getSituacao());
	}
	
	@Test
	public void produtoPoderSerFabriado() {
		UnidadeMedida unidadeMedida = new UnidadeMedida("Unidade","UN");
		Material material1 = new Material("TUBO DE ACO 20X20X100",SituacaoProduto.ATIVO, unidadeMedida, 8.00, 5, 100.00, 75.00);
		material1.setPeso(0.2);
		material1.setAltura(20.00);
		material1.setComprimento(100.00);
		material1.setLargura(20.00);
		
		Material material2 = new Material("TAMPO DE MADEIRA",SituacaoProduto.ATIVO, unidadeMedida, 8.00, 5, 100.00, 75.00);
		
		material2.setPeso(1.00);
		material2.setAltura(35.00);
		material2.setComprimento(500.00);
		material2.setLargura(500.00);

		
		Produto produto = new Produto("Mesa",SituacaoProduto.ATIVO,unidadeMedida,150.00,2,10.00,5.00);
		produto.setPeso(1.5);
		produto.setCodigoInterno("MI-005");
		produto.setAltura(300.0);
		produto.setComprimento(500.00);
		produto.setLargura(200.00);
		produto.setSituacao(SituacaoProduto.ATIVO);
		
		
		produto.adicionarMaterial(material1,2.00);
		produto.adicionarMaterial(material2,1.00);
		
		assertEquals("Mesa", produto.getDescricao());
		assertEquals("MI-005", produto.getCodigoInterno());
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
