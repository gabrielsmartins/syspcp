<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../common/import_css.jspf"%>
<title>Autenticação</title>
</head>

<body class="body-custom">
	<div class="logincard">
		<div class="pmd-card card-default pmd-z-depth">
			<div class="login-card">
				<form action="<c:url value='/session/autenticar'/>" method="POST">
					<div class="pmd-card-title card-header-border text-center">
						<div class="loginlogo">
							<a href="javascript:void(0);"><img
								src="<c:url value='/resources/images/logo-icon.png'/>"
								alt="Logo"></a>
						</div>
						<h3>
							Login <span>com <strong>WEBPCP</strong></span>
						</h3>
					</div>

					<div class="pmd-card-body">
					<div class="alert alert-success" role="alert"> Oh snap! Change a few things up and try submitting again. </div>
						<div class="form-group pmd-textfield pmd-textfield-floating-label">
							<label for="inputError1"
								class="control-label pmd-input-group-label">Login</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="material-icons md-dark pmd-sm">perm_identity</i>
								</div>
								<input type="text" class="form-control" id="exampleInputAmount"
									name="usuario.login">
							</div>
						</div>

						<div class="form-group pmd-textfield pmd-textfield-floating-label">
							<label for="inputError1"
								class="control-label pmd-input-group-label">Senha</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="material-icons md-dark pmd-sm">lock_outline</i>
								</div>
								<input type="password" class="form-control"
									id="exampleInputAmount" name="usuario.senha">
							</div>
						</div>
					</div>


					<div
						class="pmd-card-footer card-footer-no-border card-footer-p16 text-center">
						<div class="form-group clearfix">
							<div class="checkbox pull-left">
								<label class="pmd-checkbox checkbox-pmd-ripple-effect">
									<input type="checkbox" checked="" value=""> <span
									class="pmd-checkbox"> Lembrar-me</span>
								</label>
							</div>
							<span class="pull-right forgot-password"> <a
								href="javascript:void(0);">Esqueceu a senha?</a>
							</span>
						</div>
						<c:if test="${not empty mensagem}">
							<p class="text-success">${mensagem}</p>
						</c:if>
						<button type="submit"
							class="btn pmd-ripple-effect btn-red btn-block">Entrar</button>
					</div>

				</form>
			</div>


			<div class="forgot-password-card">
				<form>
					<div class="pmd-card-title card-header-border text-center">
						<div class="loginlogo">
							<a href="javascript:void(0);"><img
								src="<c:url value='/resources/images/logo-icon.png'/>"
								alt="Logo"></a>
						</div>
						<h3>
							Esqueceu a senha?<br> <span>Preencha seu e-mail para
								receber a senha.</span>
						</h3>
					</div>
					<div class="pmd-card-body">
						<div class="form-group pmd-textfield pmd-textfield-floating-label">
							<label for="inputError1"
								class="control-label pmd-input-group-label">Email</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="material-icons md-dark pmd-sm">email</i>
								</div>
								<input type="text" class="form-control" id="exampleInputAmount">
							</div>
						</div>
					</div>
					<div
						class="pmd-card-footer card-footer-no-border card-footer-p16 text-center">
						<a href="index.html" type="button"
							class="btn pmd-btn-raised pmd-ripple-effect btn-red btn-block">Enviar</a>
						<p class="redirection-link">
							Já é cadastrado? <a href="javascript:void(0);"
								class="register-login">Entre</a>
						</p>
					</div>
				</form>
			</div>

		</div>


	</div>


	<!-- Scripts Starts -->
	<%@ include file="../common/import_js.jspf"%>

	<!-- login page sections show hide -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('.app-list-icon li a').addClass("active");
			$(".login-for").click(function() {
				$('.login-card').hide()
				$('.forgot-password-card').show();
			});
			$(".signin").click(function() {
				$('.login-card').show()
				$('.forgot-password-card').hide();
			});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".login-register").click(function() {
				$('.login-card').hide()
				$('.forgot-password-card').hide();
				$('.register-card').show();
			});

			$(".register-login").click(function() {
				$('.register-card').hide()
				$('.forgot-password-card').hide();
				$('.login-card').show();
			});
			$(".forgot-password").click(function() {
				$('.login-card').hide()
				$('.register-card').hide()
				$('.forgot-password-card').show();
			});
		});
	</script>

	<!-- Scripts Ends -->

</body>
</html>