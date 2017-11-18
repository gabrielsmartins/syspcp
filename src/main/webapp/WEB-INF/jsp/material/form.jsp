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
		Descrição: <input type="text" name="material.descricao" /><br />
		Situação: <input type="text" name="material.situacao" /><br /> Unidade
		Medida: <select name="material.unidadeMedida" >
			<c:forEach items="${unidades}" var="unidade">
			<option value="${unidade}">${unidade.sigla}-${unidade.descricao}</option>
			</c:forEach>
		</select> <input type="submit" value="Salvar" /><br/>
		Valor Unitário:
		<input type="text" name="material.valorUnitario"/><br/>
		Quantidade Estoque:
		<input type="text" name="material.quantidadeEstoque"/>
		Quantidade Mínima:
		<input type="text" name="material.quantidadeMinima"/>
		Peso (KG):
		<input type="text" name="material.peso"/><br/>
		Comprimento (mm):
		<input type="text" name="material.comprimento"/>
		Largura (mm):
		<input type="text" name="material.largura"/>
		Altura (mm):
		<input type="text" name="material.altura"/>
	</form>
</body>
</html>