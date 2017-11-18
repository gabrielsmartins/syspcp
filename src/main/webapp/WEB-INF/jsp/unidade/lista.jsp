<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista - Unidade de Medida</title>
</head>
<body>
<ul>
<c:forEach items="${unidadeMedidaList}" var="unidade" >
    <li> ${unidade.id} - ${unidade.descricao} - ${unidade.sigla} <a href="<c:url value='/unidades/${unidade.id}'/>"><button>Editar</button></a></li>
</c:forEach>

<div id="mensagem">
    <strong>${mensagem}</strong>
</div>
</ul>
</body>
</html>