<!DOCTYPE html>
<html>
<head>
<title>Bem-Vindo</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<style>
header, main, footer {
	padding-left: 300px;
}

@media only screen and (max-width : 992px) {
	header, main, footer {
		padding-left: 0;
	}
}
</style>
<!-- Side Bar -->
<ul id="slide-out" class="side-nav fixed grey lighten-2">
	<ul class="black" style="height: 64px;">
		<li>
		<a href="#" class="brand-logo"> 
		<img class="responsive-img" src="<c:url value='/resources/img/logo.png'/>" height="64px" width="64px">
		</a>
		</li>
	</ul>
	<li><a href="#!">Ordem de Produção</a></li>
	<li><a href="#!">Produto</a></li>
	<li><a href="#!">Material</a></li>
	<li><a href="#!">Unidade de Medida</a></li>
</ul>

<!-- Side Bar -->


<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content">
	<li><a href="#!">Perfil</a></li>
	<li><a href="#!">Meus Dados</a></li>
	<li class="divider"></li>
	<li><a href="#!">Logout</a></li>
</ul>



<body>
	<main>
	<nav class="black">
		<div class="nav-wrapper">
			<a href="#" data-activates="slide-out" class="button-collapse"><i
				class="material-icons">menu</i></a>
			<ul class="right hide-on-med-and-down">
				<li><a href="sass.html">Sass</a></li>
				<li><a href="badges.html">Components</a></li>
				<!-- Dropdown Trigger -->
				<li><a class="dropdown-button" href="#!"
					data-activates="dropdown1">Opções<i
						class="material-icons right">arrow_drop_down</i></a></li>
			</ul>
		</div>
	</nav>

	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
<script>
	$(".button-collapse").sideNav();
</script>
</html>