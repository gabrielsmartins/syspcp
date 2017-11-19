<%@ include file="../common/import_jstl.jspf" %> 
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Lista - Unidade Medida</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<%@ include file="../common/header.jspf"%>
<body>
<main>
<ul>
<c:forEach items="${unidadeMedidaList}" var="unidade" >
    <li> ${unidade.id} - ${unidade.descricao} - ${unidade.sigla} <a href="<c:url value='/unidades/${unidade.id}'/>"><button>Editar</button></a></li>
</c:forEach>
</ul>
<div id="mensagem">
    <strong>${mensagem}</strong>
</div>
</main>
</body>
<%@ include file="../common/import_js.jspf" %> 
</html>