<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Unidade ${unidadeMedida.sigla}</title>
</head>
<body>
	<form action="<c:url value='/unidades/${unidadeMedida.id}'/>"
		method="POST">
		<input type="text" name="unidade.descricao"
			value="${unidadeMedida.descricao}"> <input type="text" name="unidade.sigla" value="${unidadeMedida.sigla}">
		<button type="submit" name="_method" value="PUT">Salvar</button>
		<button type="submit" name="_method" value="DELETE">Excluir</button>
	</form>

</body>
</html>