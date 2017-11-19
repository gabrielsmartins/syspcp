<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Material</title>
</head>
<body>
	<form action="<c:url value='/materiais/'/>" method="POST">
		<label>Descrição:</label> <input type="text" name="material.descricao" /><br />
		<label>Código Interno:</label> <input type="text" name="material.codigoInterno" /><br />
		<label>Situação:</label> 
		<input type="radio" name="material.situacao" value="ATIVO"/>Ativo
		<input type="radio" name="material.situacao" value="INATIVO"/>Inativo
		<input type="radio" name="material.situacao" value="FORA_DE_LINHA"/>Fora de Linha<br/>
		<label>Unidade Medida:</label> 
		<select name="material.unidadeMedida.id">
			<c:forEach items="${unidades}" var="unidade">
				<option value="${unidade.id}">${unidade.sigla}-${unidade.descricao}</option>
			</c:forEach>
		</select><br/>
		<label>Valor Unitário:</label> <input type="text" name="material.valorUnitario" />
		<label>Lead time:</label> <input type="text" name="material.leadTime" /><br />
		<label>Quantidade Estoque:</label> <input type="text"
			name="material.quantidadeEstoque" /> <label>Quantidade
			Mínima:</label> <input type="text" name="material.quantidadeMinima" /><br />
		<label>Peso (KG):</label> <input type="text" name="material.peso" /><br />
		<label>Comprimento (mm):</label> <input type="text" name="material.comprimento" /> 
		<label>Largura (mm):</label> <input type="text" name="material.largura" /> 
		<label>Altura (mm):</label> <input type="text" name="material.altura" /><br />
		<button type="submit">Salvar</button>
	</form>
</body>
</html>