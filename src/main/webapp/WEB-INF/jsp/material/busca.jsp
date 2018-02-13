<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
  <head>
<%@ include file="../common/import_css.jspf"%>
<title>Material - Editar</title>
<%@ include file="../common/import_js.jspf"%>
  </head>
  
<%@ include file="../common/header.jspf"%>
  <main>
  <body>
      <!-- Breadcrumb -->
   <nav class="grey">
    <div class="nav-wrapper">
      <div class="col s12">
        <a href="#!" class="breadcrumb">Dashboard</a>
        <a href="#!" class="breadcrumb">Material</a>
        <a href="#!" class="breadcrumb">Editar</a>
      </div>
    </div>
  </nav>
         <!-- Fim Breadcrumbs -->

				
					<form action="<c:url value='/materiais/${material.id}'/>"
						method="POST" accept-charset="UTF-8">
						<div class="card-panel">
							<h4 class="header2">
								<strong>Dados Básicos</strong>
							</h4>
							<!-- Dados Básicos -->

							<div class="row">
								<div class="input-field col s3">
									<input id="codigoInterno" type="text"
										name="material.codigoInterno" class="validate"
										value="${material.codigoInterno}"> <label
										for="codigoInterno">Código Interno:</label>
								</div>

								<div class="input-field col s6">
									<input id="descricao" class="validate" type="text"
										name="material.descricao" value="${material.descricao}">
									<label for="descricao">Descrição:</label>
								</div>
							</div>



							<div class="row">
								<div class="input-field col s3">
									<input id="valorUnitario" class="validate" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.valorUnitario"
										value="${material.valorUnitario}"> <label
										for="valorUnitario">Valor Unitário:</label>
								</div>


								<div class="input-field col s1">
									<label>Situação:</label>
								</div>

								<div class="input-field col s6">
									<input name="material.situacao" type="radio" id="ATIVO"
										VALUE="ATIVO"
										<c:if test="${material.situacao == 'ATIVO'}">checked</c:if> /><label
										for="ATIVO">Ativo</label> <input name="material.situacao"
										type="radio" id="INATIVO" VALUE="INATIVO"
										<c:if test="${material.situacao == 'INATIVO'}">checked</c:if> />
									<label for="INATIVO">Inativo</label> 
									<input name="material.situacao" type="radio" id="FORA_DE_LINHA" VALUE="FORA_DE_LINHA"
										<c:if test="${material.situacao == 'FORA_DE_LINHA'}">checked</c:if> />
									<label for="FORA_DE_LINHA">Fora de Linha</label>
								</div>
							</div>

							<!-- Fim Dados Básicos -->


							<!-- Dados Técnicos -->
							<h4 class="header2">
								<strong>Dados Técnicos</strong>
							</h4>


							<div class="row">
								<div class="input-field col s3">
									<select name="material.unidadeMedida.id">
										<c:forEach items="${unidades}" var="unidade">
											<option value="${unidade.id}"
												<c:if test="${unidade.id == material.unidadeMedida.id}">selected</c:if>>${unidade.sigla}-${unidade.descricao}</option>
										</c:forEach>
									</select> <label for="peso">Unidade de Medida:</label>
								</div>


								<div class="input-field col s3">
									<input id="peso" type="number" pattern="[0-9]+([\.,][0-9]+)?"
										step="0.01" name="material.peso" class="validate"
										value="${material.peso}"> <label for="peso">Peso
										(KG):</label>
								</div>
							</div>



							<div class="row">
								<div class="input-field col s3">
									<input id="comprimento" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.comprimento" class="validate"
										value="${material.comprimento}"> <label
										for="comprimento">Comprimento (mm):</label>
								</div>

								<div class="input-field col s3">
									<input id="largura" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.largura" class="validate"
										value="${material.largura}"> <label for="largura">Largura
										(mm):</label>
								</div>

								<div class="input-field col s3">
									<input id="altura" type="number" pattern="[0-9]+([\.,][0-9]+)?"
										step="0.01" name="material.altura" class="validate"
										value="${material.altura}"> <label for="altura">Altura
										(mm):</label>
								</div>


							</div>

							<!-- Fim Dados Técnicos -->

							<!-- Dados Estoque -->
							<h4 class="header2">
								<strong>Dados Estoque</strong>
							</h4>


							<div class="row">
								<div class="input-field col s3">
									<input id="quantidadeEstoque" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.quantidadeEstoque" class="validate"
										value="${material.quantidadeEstoque}"> <label
										for="quantidadeEstoque">Quantidade Estoque :</label>
								</div>

								<div class="input-field col s3">
									<input id="quantidadeMinima" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.quantidadeMinima" class="validate"
										value="${material.quantidadeMinima}"> <label
										for="quantidadeMinima">Quantidade Mínima :</label>
								</div>

								<div class="input-field col s3">
									<input id="leadtime" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.leadTime" class="validate"
										value="${material.leadTime}"> <label for="leadtime">Lead
										Time (D) :</label>
								</div>
							</div>

							<div class="row">
								<button class="btn grey darken-4 waves-effect waves-light right"
									type="submit" name="_method" value="DELETE">
									Excluir <i class="material-icons right">clear</i>
								</button>
								<button class="btn grey darken-4 waves-effect waves-light right"
									type="submit" name="_method" value="PUT">
									Salvar <i class="material-icons right">save</i>
								</button>
							</div>

							<!-- Fim Dados Estoque -->

						</div>


					</form>

   
  </body>
  </main>
  
  
<%@ include file="../common/footer.jspf"%>
 
</html>











































