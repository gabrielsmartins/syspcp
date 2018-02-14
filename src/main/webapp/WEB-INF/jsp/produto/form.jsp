<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!Doctype html>
<html>
<head>
<%@ include file="../common/import_css.jspf"%>
<title>Produto - Cadastro</title>
<%@ include file="../common/import_js.jspf"%>
</head>

<%@ include file="../common/header.jspf"%>
<main>
<body>
	<!-- Breadcrumb -->
	<nav class="grey">
		<div class="nav-wrapper">
			<div class="col s12">
				<a href="#!" class="breadcrumb">Dashboard</a> <a href="#!"
					class="breadcrumb">Produto</a> <a href="#!" class="breadcrumb">Cadastro</a>
			</div>
		</div>
	</nav>
	<!-- Fim Breadcrumbs -->



	<div id="basic-tabs" class="section">
		<div class="row">
			<div class="col s12">
				<ul class="tabs tab-demo z-depth-1" style="width: 100%;">
					<li class="tab col s3"><a class="" href="#cadastro">Cadastro</a>
					</li>
					<li class="tab col s3"><a href="#estrutura" class="active">Estrutura</a></li>
					<li class="tab col s3"><a href="#roteiro">Roteiro</a></li>
					<div class="indicator" style="right: 603px; left: 301px;"></div>
					<div class="indicator" style="right: 603px; left: 301px;"></div>
				</ul>
			</div>
			<div class="col s12">
				<div id="cadastro" class="col s12" style="display: none;">



					<!-- Cadastro -->
					<form action="<c:url value='/produtos/'/>" method="POST"
						accept-charset="UTF-8">
						<div class="card-panel">
							<h4 class="header2">
								<strong>Dados Básicos</strong>
							</h4>


							<div class="row">
								<div class="input-field col s3">
									<input id="codigoInterno" type="text"
										name="produto.codigoInterno" class="validate"> <label
										for="codigoInterno">Código Interno:</label>
								</div>

								<div class="input-field col s6">
									<input id="descricao" class="validate" type="text"
										name="produto.descricao"> <label for="descricao">Descricao:</label>
								</div>
							</div>



							<div class="row">
								<div class="input-field col s3">
									<input id="valorUnitario" class="validate" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="produto.valorUnitario"> <label
										for="valorUnitario">Valor Unitário:</label>
								</div>


								<div class="input-field col s1">
									<label>Situação:</label>
								</div>

								<div class="input-field col s6">
									<input name="produto.situacao" type="radio" id="ATIVO"
										value="ATIVO" checked> <label for="ATIVO">Ativo</label>
									<input name="produto.situacao" type="radio" id="INATIVO"
										VALUE="INATIVO"> <label for="INATIVO">Inativo</label>
									<input name="produto.situacao" type="radio" id="FORA_DE_LINHA"
										VALUE="FORA_DE_LINHA"> <label for="FORA_DE_LINHA">Fora
										de Linha</label>
								</div>
							</div>



							<h4 class="header2">
								<strong>Dados Técnicos</strong>
							</h4>


							<div class="row">
								<div class="input-field col s3">
									<select name="produto.unidadeMedida.id">
										<option value="" disabled selected>Escolha uma
											unidade</option>
										<c:forEach items="${unidades}" var="unidade">
											<option value="${unidade.id}">${unidade.sigla}-${unidade.descricao}</option>
										</c:forEach>
									</select> <label for="peso">Unidade de Medida:</label>
								</div>


								<div class="input-field col s3">
									<input id="peso" type="number" pattern="[0-9]+([\.,][0-9]+)?"
										step="0.01" name="produto.peso" class="validate"> <label
										for="peso">Peso (KG):</label>
								</div>
							</div>



							<div class="row">
								<div class="input-field col s3">
									<input id="comprimento" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="produto.comprimento" class="validate"> <label
										for="comprimento">Comprimento (mm):</label>
								</div>

								<div class="input-field col s3">
									<input id="largura" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="produto.largura" class="validate"> <label
										for="largura">Largura (mm):</label>
								</div>

								<div class="input-field col s3">
									<input id="altura" type="number" pattern="[0-9]+([\.,][0-9]+)?"
										step="0.01" name="produto.altura" class="validate"> <label
										for="altura">Altura (mm):</label>
								</div>


							</div>





							<h4 class="header2">
								<strong>Dados Estoque</strong>
							</h4>


							<div class="row">
								<div class="input-field col s3">
									<input id="quantidadeEstoque" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="produto.quantidadeEstoque" class="validate"> <label
										for="quantidadeEstoque">Quantidade Estoque :</label>
								</div>

								<div class="input-field col s3">
									<input id="quantidadeMinima" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="produto.quantidadeMinima" class="validate"> <label
										for="quantidadeMinima">Quantidade Mínima :</label>
								</div>

								<div class="input-field col s3">
									<input id="leadtime" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="produto.leadTime" class="validate"> <label
										for="leadtime">Lead Time (D) :</label>
								</div>
							</div>
						</div>
					</form>

				</div>
				<!-- Fim cadastro -->


				<div id="estrutura" class="col s12" style="display: block;">
					<!-- Estrutura -->
					<div class="card-panel">

						<div class="row">
							<div class="input-field col s6">
								<i class="mdi-action-search prefix"></i> <input type="text">
								<label for="">Material</label>
							</div>

							<div class="input-field col s3">
								<input id="largura" type="number" pattern="[0-9]+([\.,][0-9]+)?"
									step="0.01" name="produto.largura" class="validate"> <label
									for="largura">Quantidade:</label>
							</div>

							<div class="input-field col s1">
								<a
									class="btn-floating right waves-effect waves-light red accent-4"><i
									class="mdi-content-add"></i></a>
							</div>
						</div>

						<table class="hoverable">
							<thead>
								<tr>
									<th>Seq</th>
									<th>Material</th>
									<th>Quantidade</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
							<tfoot>

							</tfoot>
						</table>
					</div>

					<!-- Fim Estrutura -->
				</div>
				<div id="roteiro" class="col s12" style="display: none;">
					<!-- Roteiro -->
					
						<div class="card-panel">
<form action="<c:url value='/produtos/roteiro'/>" method="POST"
						accept-charset="UTF-8">
							<div class="row">
								<div class="col s12">
									<div class="row">
										<div class="input-field col s12">
											<i class="mdi-action-search prefix"></i> <input type="text"
												id="operacao" class="autocomplete"> <label
												for="operacao">Operação</label>
										</div>
									</div>
								</div>
							</div>
<input type="hidden" name="roteiro.operacao.id" value="28"/>
<input type="hidden" name="roteiro.sequencia" value="1"/>

							<div class="row">
								<div class="input-field col s2">
									<i class="mdi-av-timer prefix"></i> <label>Tempo Setup:</label>
								</div>

								<div class="input-field col s1">
									<input class="validate" type="time" step="1" id="tempo_setup" 
										pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$">
								</div>

								<div class="input-field col s2">
									<i class="mdi-av-timer prefix"></i> <label>Tempo
										Produção:</label>
								</div>

								<div class="input-field col s1">
									<input class="validate" type="time" step="1"
										id="tempo_producao" 
										pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$">
								</div>

								<div class="input-field col s2">
									<i class="mdi-av-timer prefix"></i> <label>Tempo
										Finalização:</label>
								</div>


								<div class="input-field col s1">
									<input class="validate" type="time" step="1" 
										id="tempo_finalizacao"
										pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$">
								</div>

								<div class="input-field col s1">
									<button type="submit"
										class="btn-floating right waves-effect waves-light red accent-4">
										<i class="material-icons">add</i>
									</button>
								</div>
							</div>
							</form>




							<table class="hoverable" id="tabela_roteiro">
								<thead>
									<tr>
										<th>Seq</th>
										<th>ID</th>
										<th>Operação</th>
										<th>Tempo Setup</th>
										<th>Tempo Produção</th>
										<th>Tempo Finalização</th>
										<th>Total</th>
										<th></th>
									</tr>
								</thead>
								<tbody id="tabela_operacao">
                                    <c:forEach items="${produtoSession.roteiros}" var="roteiro">
											<tr>
											    <td>${roteiro.operacao.sequencia}</td>
											    <td>${roteiro.operacao.id}</td>
											    <td>${roteiro.operacao.descricao}</td>
												<td>${roteiro.tempoSetup}</td>
												<td>${roteiro.tempoProducao}</td>
												<td>${roteiro.tempoFinalizacao}</td>
												<td>-</td>
												<td><button type="button" class="btn-floating right waves-effect waves-light red accent-4"><i class="material-icons">remove</i></button></td>
											</tr>

										</c:forEach>
								</tbody>
								<tfoot>
                                    
								</tfoot>
							</table>
							
							${prod}
						</div>
					
				</div>
				<!-- Fim Roteiro -->


			</div>
		</div>

	</div>

	<div class="card-panel">
		<div class="row">
			<button class="btn grey darken-4 waves-effect waves-light right"
				type="submit">
				Salvar <i class="material-icons right">send</i>
			</button>
		</div>
	</div>







</body>
</main>


<%@ include file="../common/footer.jspf"%>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$
								.ajax({
									type : 'GET',
									url : "<c:url value='/operacoes/operacoes.json'/>",
									data : {
										get_param : 'value'
									},
									dataType : 'json',
									success : function(data) {
										var operacoes = data;
										var data_operacoes = {};
										for (var i = 0; i < operacoes.length; i++) {
											data_operacoes[operacoes[i].id
													+ "-"
													+ operacoes[i].descricao] = operacoes[i].id;
										}

										$('#operacao').autocomplete({
											data : data_operacoes,
											limit : 20, // The max amount of results that can be shown at once. Default: Infinity.
											onAutocomplete : function(val) {
												// Callback function when value is autcompleted.
											},
											minLength : 1, // The minimum length of the input for the autocomplete to start. Default: 1.
										});

									}
								});

					});
</script>

<script>
	function addOperacao() {
		var operacao = document.getElementById("operacao").value;
		var id_oper = parseInt(operacao.match(/\d+/)[0]);
		var tempo_setup = document.getElementById("tempo_setup").value;
		var tempo_producao = document.getElementById("tempo_producao").value;
		var tempo_finalizacao = document.getElementById("tempo_finalizacao").value;

		alert(tempo_setup);
		var param = {
			id : id_oper
		};
		$.post("<c:url value='/operacoes/operacao.json'/>", param,
				insere_operacao);
	}

	function insere_operacao(data) {
		$("#tabela_roteiro")
				.find('tbody')
				.append(
						"<tr>"
								+ "<td>-</td>"
								+ "<td>"
								+ data.id
								+ "</td>"
								+ "<td>"
								+ data.descricao
								+ "</td>"
								+ "<td>"
								+ String(tempo_setup)
								+ "</td>"
								+ "<td>"
								+ tempo_producao.toString()
								+ "</td>"
								+ "<td>"
								+ tempo_finalizacao.toString()
								+ "</td>"
								+ "<td>-</td>"
								+ "<td><button type='button' class='btn-floating right waves-effect waves-light red accent-4'><i class='material-icons'>remove</i></button></td>"
								+ "</tr>");
	}
</script>
</html>





















