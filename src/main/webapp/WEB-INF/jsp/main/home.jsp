<!DOCTYPE html>
<html>
<head>
<title>Bem-Vindo ${sessao.nome}</title>
<%@ include file="../common/import_css.jspf"%>
</head>

<body>
	<main>
	 <%@ include file="../common/sidebar.jspf"%>
	 <%@ include file="../common/navbar.jspf"%>
	
	<h1>Olá ${sessao.usuario.nome} </h1>

	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>