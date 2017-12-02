<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>PCP Web</title>
<%@ include file="../common/import_css.jspf"%>

<style>
html, body, .login-box {
	height: 100%;
}


</style>

<script>
	$(document).ready(function() {
		Materialize.updateTextFields();
	});

	$("#reset").on("click", function() {
		$('label').removeClass('active');
	});
</script>

</head>
<body class="grey darken-4">
	<div class="valign-wrapper row login-box">
		<div class="col card hoverable s10 pull-s1 m6 pull-m3 l4 pull-l4">
			<form action="<c:url value='/autenticar/'/>" method="POST">
				<div class="card-content">
					<span class="card-title"><strong>Autenticação</strong></span>
					<div class="row">
						<div class="input-field col s12">
							<i class="large material-icons prefix">account_circle</i>
							<input id="icon_prefix" type="text" class="validate" name="usuario.login"> 
							<label for="icon_prefix">Login</label>
							
						</div>
						<div class="input-field col s12">
							<i class="large material-icons prefix">lock_open</i> 
							<input id="icon_prefix" type="password" class="validate" name="usuario.senha">
							<label for="icon_prefix">Senha</label>
						</div>
					</div>
				</div>
				<div class="card-action right-align">
					<button type="reset" id="reset" class="btn-flat grey lighten-1 waves-effect">Redefinir</button>
						<button type="submit" class="btn yellow darken-3 waves-effect waves-light">Login</button>
				</div>
			</form>
		</div>
	</div>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>