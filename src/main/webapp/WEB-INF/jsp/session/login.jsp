<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../common/import_css.jspf"%>
<title>Autenticação</title>
</head>

<body class="app flex-row align-items-center">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card-group">
					<div class="card p-4">
						<div class="card-body">
							<h1>Login</h1>
							<p class="text-muted">Sign In to your account</p>
							<form action="<c:url value='/session/autenticar'/>" method="POST">
								<div class="input-group mb-3">
									<div class="md-form">
										<i class="fa fa-user prefix grey-text"></i> <input type="text"
											id="usuario" class="form-control" name="usuario.login">
										<label for="usuario">Usuário</label>
									</div>
								</div>
								<div class="input-group mb-4">
									<div class="md-form">
										<i class="fa fa-lock prefix grey-text"></i> <input
											type="password" id="senha" class="form-control"
											name="usuario.senha"> <label for="senha">Senha</label>
									</div>
								</div>
								
								
								<div class="row">
									<div class="col-6">
										<button type="submit" class="btn btn-primary px-4">Login</button>
									</div>
									<div class="col-6 text-right">
										<button type="button" class="btn btn-link px-0">Forgot
											password?</button>
									</div>
									<c:if test="${not empty mensagem}">
										<p class="text-success">${mensagem}</p>
									</c:if>
								</div>
							</form>
						</div>
					</div>
					<div class="card text-white bg-primary py-5 d-md-down-none"
						style="width: 44%">
						<div class="card-body text-center">
							<div>
								<h2>Sign up</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua.</p>
								<button type="button" class="btn btn-primary active mt-3">Register
									Now!</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap and necessary plugins -->
	<%@ include file="../common/import_js.jspf"%>

</body>
</html>