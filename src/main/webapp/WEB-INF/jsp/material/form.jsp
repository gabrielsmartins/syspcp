<%@ include file="../common/import_jstl.jspf"%>
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cadastro - Material</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<body>
	<main> <%@ include file="../common/sidebar.jspf"%>
	<%@ include file="../common/navbar.jspf"%>
	<div class="container">
		<h2 class="bold">Novo Material</h2>
		<form action="<c:url value='/materiais/'/>" method="POST"
			class="col s12">

			<fieldset>
				<legend><strong>Dados Básicos</strong></legend>
				<div class="row">
					<div class="input-field col s3">
						<input type="text" name="material.codigoInterno" class="validate" />
						<label for="codigoInterno">Código Interno:</label>
					</div>
					<div class="input-field col s6">
						<input type="text" name="material.descricao" class="validate" />
						<label for="descricao">Descrição:</label>
					</div>
				</div>


				<div class="row">
					<div class="input-field col s6">
						<select name="material.unidadeMedida.id">
							<c:forEach items="${unidades}" var="unidade">
								<option value="${unidade.id}">${unidade.sigla}-${unidade.descricao}</option>
							</c:forEach>
						</select> <label for="unidadeMedida">Unidade de Medida:</label>
					</div>
				</div>


				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.valorUnitario" class="validate" />
						<label for="valor unitario">Valor Unitário:</label>
					</div>

					<div class="input-field col s6">
						<input type="text" name="material.leadTime" class="validate" /> <label
							for="valor unitario">Lead Time:</label>
					</div>
				</div>


				<div class="row">
					<div class="col s6">
						<input class="with-gap" type="radio" id="ativo"
							name="material.situacao" value="ATIVO" checked /> <label
							for="ativo">Ativo</label> <input class="with-gap" type="radio"
							id="inativo" name="material.situacao" value="INATIVO" /> <label
							for="inativo">Inativo</label> <input class="with-gap"
							type="radio" id="fora_de_linha" name="material.situacao"
							value="FORA_DE_LINHA" /> <label for="fora_de_linha">Fora
							de Linha</label>

					</div>
				</div>

			</fieldset>

			<fieldset>
				<legend><strong>Dados Técnicos</strong></legend>

				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.peso" class="validate" /> <label
							for="valor unitario">Peso (KG):</label>
					</div>
				</div>


				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.comprimento" class="validate" />
						<label for="valor unitario">Comprimento (mm):</label>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.largura" class="validate" /> <label
							for="valor unitario">Largura (mm):</label>
					</div>
				</div>


				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.altura" class="validate" /> <label
							for="valor unitario">Altura (mm):</label>
					</div>
				</div>
			</fieldset>

			<fieldset>
				<legend><strong>Dados Estoque</strong></legend>
				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.quantidadeEstoque"
							class="validate" /> <label for="valor unitario">Quantidade
							Estoque:</label>
					</div>
					<div class="input-field col s6">
						<input type="text" name="material.quantidadeMinima"
							class="validate" /> <label for="valor unitario">Quantidade
							Mínima:</label>
					</div>
				</div>
			</fieldset>


			<div class="row">
				<button type="submit"
					class="btn yellow darken-3 waves-effect waves-light">
					<i class="large material-icons prefix">save</i>Salvar
				</button>
			</div>
		</form>
	</div>
	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>