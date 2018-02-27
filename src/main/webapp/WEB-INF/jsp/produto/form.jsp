<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<%@ include file="../common/import_css.jspf"%>
<title>Produto - Novo</title>


<link
	href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css"
	rel="Stylesheet"></link>







</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-red sidebar-mini">
	<div class="wrapper">

		<!-- Main Header -->
		<%@ include file="../common/header.jspf"%>
		<!-- Left side column. contains the logo and sidebar -->
		<%@ include file="../common/sidebar.jspf"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Produto</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content container-fluid">

				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">Cadastro</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					



						<div class="nav-tabs-custom">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab_cadastro"
									data-toggle="tab" aria-expanded="true">Cadastro</a></li>
								<li class=""><a href="#tab_estrutura" data-toggle="tab"
									aria-expanded="false">Estrutura</a></li>
								<li class=""><a href="#tab_roteiro" data-toggle="tab"
									aria-expanded="false">Roteiro</a></li>
								<li class="pull-right"><a href="#" class="text-muted"><i
										class="fa fa-gear"></i></a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tab_cadastro">

									<!-- CADASTRO -->
                               <form class="form-horizontal" action="<c:url value='/produtos/'/>"
						method="POST" accept-charset="UTF-8">
									<div class="box-body">


										<div class="box-header with-border">
											<h3 class="box-title">Dados Básicos</h3>
										</div>






										<div class="form-group row">
											<label for="descricao" class="col-sm-1 control-label">Código
												Interno:</label>

											<div class="col-sm-2">
												<input id="codigoInterno" class="form-control" type="text"
													name="produto.codigoInterno">
											</div>


											<label for="descricao" class="col-sm-1 control-label">Descrição:</label>
											<div class="col-sm-6">
												<input id="descricao" class="form-control" type="text"
													name="produto.descricao">
											</div>
										</div>




										<div class="form-group row">
											<label for="valorUnitario" class="col-sm-1 control-label">Valor
												Unitário:</label>

											<div class="col-sm-3">
												<input id="valorUnitario" class="form-control" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="produto.valorUnitario">
											</div>

											<div class="col-sm-6">
												<label for="ATIVO" class="radio-inline"> <input
													name="produto.situacao" type="radio" id="ATIVO"
													value="ATIVO" checked> Ativo
												</label> <label for="INATIVO" class="radio-inline"> <input
													name="produto.situacao" type="radio" id="INATIVO"
													VALUE="INATIVO"> Inativo
												</label> <label for="FORA_DE_LINHA" class="radio-inline"> <input
													name="produto.situacao" type="radio" id="FORA_DE_LINHA"
													VALUE="FORA_DE_LINHA"> Fora de Linha
												</label>

											</div>
										</div>






										<div class="box-header with-border">
											<h3 class="box-title">Dados Técnicos</h3>
										</div>


										<div class="form-group row">
											<label for="unidadeMedida" class="col-sm-1 control-label">Unidade
												de Medida:</label>

											<div class="col-sm-3">
												<select name="produto.unidadeMedida.id" class="form-control">
													<option value="" disabled selected>Escolha uma
														unidade</option>
													<c:forEach items="${unidades}" var="unidade">
														<option value="${unidade.id}">${unidade.sigla}-${unidade.descricao}</option>
													</c:forEach>
												</select>
											</div>


											<label for="peso" class="col-sm-1 control-label">Peso
												(KG):</label>
											<div class="col-sm-3">
												<input id="peso" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="produto.peso" class="form-control">
											</div>

										</div>


										<div class="form-group row">
											<label for="comprimento" class="col-sm-1 control-label">Comprimento
												(mm):</label>
											<div class="col-sm-2">
												<input id="comprimento" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="produto.comprimento" class="form-control">
											</div>


											<label for="comprimento" class="col-sm-1 control-label">Largura
												(mm):</label>
											<div class="col-sm-2">
												<input id="largura" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="produto.largura" class="form-control">
											</div>


											<label for="altura" class="col-sm-1 control-label">Altura
												(mm):</label>
											<div class="col-sm-2">
												<input id="altura" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="produto.altura" class="form-control">
											</div>

										</div>







										<div class="box-header with-border">
											<h3 class="box-title">Dados Estoque</h3>
										</div>


										<div class="form-group row">
											<label for="quantidadeEstoque" class="col-sm-1 control-label">Quantidade
												Estoque :</label>
											<div class="col-sm-2">
												<input id="quantidadeEstoque" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="produto.quantidadeEstoque" class="form-control">

											</div>

											<label for="quantidadeMinima" class="col-sm-1 control-label">Quantidade
												Mínima :</label>
											<div class="col-sm-2">
												<input id="quantidadeMinima" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="produto.quantidadeMinima" class="form-control">

											</div>

											<label for="leadtime" class="col-sm-1 control-label">Lead
												Time (D) :</label>
											<div class="col-sm-2">
												<input id="leadtime" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="produto.leadTime" class="form-control">

											</div>
										</div>





										<!-- /.box-body -->
									</div>
									
									<div class="box-footer">
							<button type="reset" class="btn btn-cancel pull-right fa fa-ban">
								Cancelar</button>
							<button type="submit" class="btn btn-save pull-right fa fa-save">
								Salvar</button>
						</div>
                               	</form>

									<!-- FIM CADASTRO -->




								</div>
								<!-- /.tab-pane -->
								<div class="tab-pane" id="tab_estrutura">

									<!--  ESTRUTURA  -->
									<div class="form-group row">
										<label class="col-sm-1 control-label">Produto:</label>
										<div class="col-sm-6">
											<select class="js-data-example-ajax" id="busca_produto" name="produto.id"
												style="width: 100%">
												 <option value="" disabled selected>Escolha um Produto</option>
												<c:forEach var="produto" items="${produtos}">
													<option value="${produto.id}">${produto.descricao}</option>
												</c:forEach>
												
												</select>
										</div>
										
										<div class="col-sm-1">
										<input id="quantidadeMinima" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="quantidade" class="form-control">
										</div>
										
										
										<div class="col-sm-1">
											<button type="submit" class="btn btn-cancel fa fa-plus"></button>
										</div>

									</div>
									
									<div class="form-group row">
										<label class="col-sm-1 control-label">Material:</label>
										<div class="col-sm-6">
											<select class="js-data-example-ajax" id="busca_material" name="material.id"
												style="width: 100%">
												 <option value="" disabled selected>Escolha um Material</option>
												<c:forEach var="material" items="${materiais}">
													<option value="${material.id}">${material.id} - ${material.descricao} - ${material.situacao}</option>
												</c:forEach>
												
												</select>
										</div>
										
										<div class="col-sm-1">
										<input id="quantidadeMinimaMaterial" type="number"
													pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
													name="quantidade" class="form-control">
										</div>
										
										
										<div class="col-sm-1">
											<button type="button" class="btn btn-cancel fa fa-plus" onclick="addMaterial()"></button>
										</div>
									</div>
				


									<div class="box">
										<div class="box-header">
											<h3 class="box-title">Lista de Materiais/Produtos</h3>
											<h3>${fn:length(produtoSession.estrutura)}</h3>
										</div>
										<!-- /.box-header -->
										<div class="box-body no-padding">
											<table class="table table-striped">
												<thead>
													<tr>
														<th style="width: 10px">#</th>
														<th style="width: 20px">ID</th>
														<th>Descrição</th>
														<th>Tipo</th>
														<th style="width: 50px">Quantidade</th>
														<th style="width: 50px">Alterar</th>
														<th style="width: 50px">Remover</th>
													</tr>
												</thead>
												<tbody id="tabela_materiais">
											
                                                
												</tbody>

											</table>
										</div>
									</div>

									<!--  FIM ESTRUTURA  -->
								</div>
								<!-- /.tab-pane -->
								<div class="tab-pane" id="tab_roteiro">

									<!-- ROTEIRO -->

									<div class="form-group row">
										<label class="col-sm-1 control-label">Operação:</label>
										<div class="col-sm-3">
											<select class="js-data-example-ajax" id="busca_operacao"
												style="width: 100%" name="roteiro.operacao.id">
                                               <option value="" disabled selected>Escolha uma operação</option>
												<c:forEach var="operacao" items="${operacoes}">
													<option value="${operacao.id}">(${operacao.id}) - ${operacao.descricao} - ${operacao.setor.descricao}</option>
												</c:forEach>
											</select>
										</div>
										<label class="col-sm-1 control-label">Tempo Setup:</label>
										<div class="col-sm-1">
											<input class="form-control" type="time" name="tempoSetup" step="1" id="tempo_setup" pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$">
										</div>
										<label class="col-sm-1 control-label">Tempo Produção:</label>
										<div class="col-sm-1">
										   <input class="form-control" type="time" name="tempoProducao" step="1" id="tempo_setup" pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$">
										</div>
										<label class="col-sm-1 control-label">Tempo Finalização:</label>
										<div class="col-sm-1">
										  <input class="form-control" type="time" name="tempoFinalizacao" step="1" id="tempo_setup" pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$">
										</div>
										<div class="col-sm-1">
												<button type="submit" class="btn btn-cancel fa fa-plus"></button>
										</div>
									</div>
					

									<div class="box">
										<div class="box-header">
											<h3 class="box-title">Operações</h3>
										</div>
										<!-- /.box-header -->
										<div class="box-body no-padding">
											<table class="table table-striped">
												<thead>
													<tr>
														<th style="width: 10px">#</th>
														<th style="width: 20px">ID</th>
														<th style="width: 200px">Descrição</th>
														<th style="width: 150px">Setor</th>
														<th style="width: 100px">Tempo Setup</th>
														<th style="width: 100px">Tempo Produção</th>
														<th style="width: 100px">Tempo Finalização</th>
														<th style="width: 50px">Alterar</th>
														<th style="width: 50px">Remover</th>
													</tr>
												</thead>
												<tbody>
												<c:forEach var="roteiro" items="${produtoSession.roteiros}">
												<tr>
												<td>${roteiro.sequencia}</td>
												   <td>${roteiro.operacao.id}</td>
												    <td>${roteiro.operacao.descricao}</td>
												     <td>${roteiro.operacao.setor.descricao}</td>
												     <td>${roteiro.tempoSetup}</td>
												     <td>${roteiro.tempoProducao}</td>
												     <td>${roteiro.tempoFinalizacao}</td>
												      <td>
                                                      <button type="button" class="btn btn-cancel fa fa-edit"></button>
                                                      </td>
                                                      <td>
                                                      <button type="button" class="btn btn-cancel fa fa-remove"></button>
                                                    </td>
												     </tr>
												</c:forEach>
												</tbody>

											</table>
										</div>
									</div>

									<!-- FIM ROTEIRO -->


								</div>
								<!-- /.tab-pane -->
							</div>
							<!-- /.tab-content -->
						</div>
						<!-- /.box-footer -->
				
				</div>

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<%@ include file="../common/footer.jspf"%>
		<!-- Control Sidebar -->
		<%@ include file="../common/control_sidebar.jspf"%>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED JS SCRIPTS -->
	<%@ include file="../common/import_js.jspf"%>

	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>




<script type="text/javascript">
	$(document).ready(function() {
		$("#busca_operacao").select2({
			placeholder : "Selecione uma Operação",
			minimumInputLength : 1
		});
		
		
		
		$("#busca_produto").select2({
			placeholder : "Selecione um Produto",
			minimumInputLength : 1
		});
		
		
		$("#busca_material").select2({
			placeholder : "Selecione um Material",
			minimumInputLength : 1
		});
	});
</script>



<script type="text/javascript">
    function addMaterial() {
        var url = "<c:url value='/produtos/addMaterialJSON'/>";
        var params = { materialId: $("#busca_material").val(),
        		       quantidade : $("#quantidadeMinimaMaterial").val()
        		       };
        $.post(url, params, adiciona );
    }

    function adiciona(data) {
    	$('#tabela_materiais tr').remove();
    	for(var i=0;i < data.length;i++){
    		$('#tabela_materiais').append( "<tr>"+
                    "<td>" + (i+1) + "</td>"+
                    "<td>" + data[i].componente.id + "</td>"+
                    "<td>" + data[i].componente.descricao + "</td>"+
                    "<td>Material</td>"+
                    "<td>" + data[i].quantidade + "</td>"+
                    "<td><button type='button' class='btn btn-cancel fa fa-edit'></button></td>"+
                    "<td><button type='button' class='btn btn-cancel fa fa-remove' onclick='removeMaterial(" + i + ")'></button></td>"+
                    "</tr>");
    	}
    	
    }
    
    function removeMaterial(id){
    	 var url = "<c:url value='/produtos/removeMaterialJSON'/>";
         var params = { index: id };
         $.post(url, params, remove );
    }
    
    function remove(data) {
    	$('#tabela_materiais tr').remove();
    	for(var i=0;i < data.length;i++){
    		$('#tabela_materiais').append( "<tr>"+
                    "<td>" + (i+1) + "</td>"+
                    "<td>" + data[i].componente.id + "</td>"+
                    "<td>" + data[i].componente.descricao + "</td>"+
                    "<td>Material</td>"+
                    "<td>" + data[i].quantidade + "</td>"+
                    "<td><button type='button' class='btn btn-cancel fa fa-edit'></button></td>"+
                    "<td><button type='button' class='btn btn-cancel fa fa-remove' onclick='removeMaterial(" + i + ")'></button></td>"+
                    "</tr>");
    	}
       
    }
    

    	
</script>











