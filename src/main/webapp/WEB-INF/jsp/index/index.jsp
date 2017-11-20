<%@ include file="../common/import_jstl.jspf"%>
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>PCP Web</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<body class="hidden-sn mdb-skin">
<%@ include file="../common/header.jspf"%>
	<!--Main Layout-->
	<main>
	<div class="container" style="height: 1300px;">
		<div class="row mt-5 pt-5">
			<!-- Form login -->
			<form>
				<p class="h5 text-center mb-4">Sign in</p>

				<div class="md-form">
					<i class="fa fa-envelope prefix grey-text"></i> <input type="text"
						id="defaultForm-email" class="form-control"> <label
						for="defaultForm-email">Your email</label>
				</div>

				<div class="md-form">
					<i class="fa fa-lock prefix grey-text"></i> <input type="password"
						id="defaultForm-pass" class="form-control"> <label
						for="defaultForm-pass">Your password</label>
				</div>

				<div class="text-center">
					<button class="btn btn-default">Login</button>
				</div>
			</form>
			<!-- Form login -->
		</div>
	</div>
	</main>
	<!--Main Layout-->
</body>
<%@ include file="../common/import_js.jspf"%>
</html>