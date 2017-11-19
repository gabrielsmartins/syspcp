<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Material ${material.codigoInterno}</title>
</head>
<body>
	<form action="<c:url value='/materiais/${material.id}'/>"
		method="POST">
		<label>Descrição:</label> <input type="text" name="material.descricao" value="${material.descricao}" /><br />
		<label>Código Interno:</label> <input type="text" name="material.codigoInterno" value="${material.codigoInterno}"/><br />
		<label>Situação:</label> 
		<input type="radio" name="material.situacao" value="ATIVO" <c:if test="${material.situacao == 'ATIVO'}">checked</c:if>/>Ativo
		<input type="radio" name="material.situacao" value="INATIVO" <c:if test="${material.situacao == 'INATIVO'}">checked</c:if>/>Inativo
		<input type="radio" name="material.situacao" value="FORA_DE_LINHA" <c:if test="${material.situacao == 'FORA_DE_LINHA'}">checked</c:if>/>Fora de Linha<br/>
		<label>Unidade Medida:</label> 
		
		<select name="material.unidadeMedida.id">
			<c:forEach items="${unidades}" var="unidade">
				<option value="${unidade.id}"
				 <c:if test="${unidade.id == material.unidadeMedida.id}">selected</c:if>
				>${unidade.sigla}-${unidade.descricao}</option>
			</c:forEach>
		</select><br/>
		<label>Valor Unitário:</label> <input type="text" name="material.valorUnitario"  value="${material.valorUnitario}"/>
		<label>Lead time:</label> <input type="text" name="material.leadTime"  value="${material.leadTime}"/><br />
		<label>Quantidade Estoque:</label> <input type="text"
			name="material.quantidadeEstoque"  value="${material.quantidadeEstoque}"/> <label>Quantidade
			Mínima:</label> <input type="text" name="material.quantidadeMinima"   value="${material.quantidadeMinima}"/><br />
		<label>Peso (KG):</label> <input type="text" name="material.peso"  value="${material.peso}"/><br />
		<label>Comprimento (mm):</label> <input type="text" name="material.comprimento"  value="${material.comprimento}" /> 
		<label>Largura (mm):</label> <input type="text" name="material.largura"  value="${material.largura}"/> 
		<label>Altura (mm):</label> <input type="text" name="material.altura"  value="${material.altura}"/><br />
		<button type="submit" name="_method" value="PUT">Salvar</button>
		<button type="submit" name="_method" value="DELETE">Excluir</button>
	</form>

</body>
</html>