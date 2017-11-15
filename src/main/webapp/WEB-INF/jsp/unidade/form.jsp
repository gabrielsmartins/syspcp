<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Unidade Medida</title>
</head>
<body>
<form action="<c:url value='/unidades/'/>" method="POST">
    Descrição:
    <input type="text" name="unidade.descricao"/><br/>
    Sigla:
    <input type="text" name="unidade.sigla"/><br/>
    <input type="submit" value="Salvar" />
</form>
</body>
</html>