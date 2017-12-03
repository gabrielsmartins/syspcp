<%@ include file="../common/import_jstl.jspf"%>
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Material -${material.codigoInterno}</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<body>
	<main> <%@ include file="../common/sidebar.jspf"%>
	<%@ include file="../common/navbar.jspf"%>

	<div class="container">
		<h2 class="bold">Editar Material</h2>
		<form action="<c:url value='/materiais/${material.id}'/>"
			method="POST" class="col s12">

			<fieldset>
				<legend><strong>Dados Básicos</strong></legend>
				<div class="row">
					<div class="input-field col s3"></div>
					<input type="text" name="material.codigoInterno" class="validate"
						value="${material.codigoInterno}" /> <label for="codigoInterno">Código
						Interno:</label>

					<div class="input-field col s6">
						<input type="text" name="material.descricao" class="validate"
							value="${material.descricao}" /> <label for="descricao">Descrição:</label>
					</div>
				</div>


				<div class="row">
					<div class="input-field col s6">
						<select name="material.unidadeMedida.id">
							<c:forEach items="${unidades}" var="unidade">
								<option value="${unidade.id}"
									<c:if test="${unidade.id == material.unidadeMedida.id}">selected</c:if>>${unidade.sigla}-${unidade.descricao}</option>
							</c:forEach>
						</select> <label for="unidadeMedida">Unidade de Medida:</label>
					</div>
				</div>


				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.valorUnitario" class="validate"
							value="${material.valorUnitario}" /> <label for="valor unitario">Valor
							Unitário:</label>
					</div>

					<div class="input-field col s6">
						<input type="text" name="material.leadTime" class="validate"
							value="${material.leadTime}" /> <label for="valor unitario">Lead
							Time:</label>
					</div>
				</div>


				<div class="row">
					<div class="input-field col s6">
						<input class="with-gap" type="radio" id="ATIVO" name="material.situacao" value="ATIVO" 
							<c:if test="${material.situacao == 'ATIVO'}">checked</c:if> /> 
							<label for="ATIVO">Ativo</label> 
							<input class="with-gap" type="radio" id="INATIVO" name="material.situacao" value="INATIVO"
							<c:if test="${material.situacao == 'INATIVO'}">checked</c:if> />
						    <label for="INATIVO">Inativo</label> 
						    <input class="with-gap" type="radio" id="FORA_DE_LINHA" name="material.situacao" value="FORA_DE_LINHA"
							<c:if test="${material.situacao == 'FORA_DE_LINHA'}">checked</c:if> />
						<label for="FORA_DE_LINHA">Fora de Linha</label>

					</div>
				</div>

			</fieldset>



			<fieldset>
				<legend><strong>Dados Técnicos</strong></legend>

				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.peso" class="validate"
							value="${material.peso}" /> <label for="peso">Peso (KG):</label>
					</div>
				</div>


				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.comprimento" class="validate"
							value="${material.comprimento}" /> <label for="comprimento">Comprimento
							(mm):</label>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.largura" class="validate"
							value="${material.largura}" /> <label for="largura">Largura
							(mm):</label>
					</div>
				</div>


				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.altura" class="validate"
							value="${material.altura}" /> <label for="altura">Altura
							(mm):</label>
					</div>
				</div>
			</fieldset>


			<fieldset>
				<legend><strong>Dados Estoque</strong></legend>
				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="material.quantidadeEstoque"
							class="validate" value="${material.quantidadeEstoque}" /> <label
							for="quantidade estoque">Quantidade Estoque:</label>
					</div>
					<div class="input-field col s6">
						<input type="text" name="material.quantidadeMinima"
							class="validate" value="${material.quantidadeMinima}" /> <label
							for="quantidade minima">Quantidade Mínima:</label>
					</div>
				</div>
			</fieldset>


			<div class="row">
				<button type="submit" class="btn yellow darken-3 waves-effect waves-light" name="_method" value="PUT">
				<i class="large material-icons prefix">save</i>Salvar
			</button>
			<button type="submit" class="btn yellow darken-3 waves-effect waves-light" name="_method" value="DELETE">Excluir</button>
			</div>
		</form>
	</div>
	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>