<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
    <%@ include file="../common/import_css.jspf"%>
  <title>Produto - Consulta</title>
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
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
      <%@ include file="../common/header.jspf"%>
  <!-- Left side column. contains the logo and sidebar -->
   <%@ include file="../common/sidebar.jspf"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Page Header
        <small>Optional description</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

<div class="pmd-card pmd-z-depth pmd-card-custom-view">
				<table class="table pmd-table table-hover table-striped display responsive nowrap table-inverse">

					<thead>
						<tr>
							<th>ID</th>
				<th>Descrição</th>
				<th>Código Interno</th>
				<th>Unidade</th>
				<th>Quantidade Estoque</th>
				<th>Quantidade Mínima</th>
				<th>Valor Unit (R$)</th>
				<th>Peso (KG)</th>
				<th>Comprimento (mm)</th>
				<th>Largura (mm)</th>
				<th>Altura (mm)</th>
				<th>Situação</th>
				<th></th>
						</tr>
					</thead>


					<tbody>
					<c:forEach items="${materialList}" var="material">
				<tr>
					<td>${material.id}</td>
					<td>${material.descricao}</td>
					<td>${material.codigoInterno}</td>
					<td>${material.unidadeMedida.sigla}</td>
					<td>${material.quantidadeEstoque}</td>
					<td>${material.quantidadeMinima}</td>
					<td>${material.valorUnitario}</td>
					<td>${material.peso}</td>
					<td>${material.comprimento}</td>
					<td>${material.largura}</td>
					<td>${material.altura}</td>
					<td>${material.situacao}</td>
					<td><a href="<c:url value='/materiais/${material.id}'/>"
									class="btn pmd-btn-fab pmd-btn-flat pmd-ripple-effect btn-red btn-sm">
										<i class="material-icons">edit</i>
								</a> <a href="javascript:void(0);"
									class="btn pmd-btn-fab pmd-btn-flat pmd-ripple-effect btn-red btn-sm">
										<i class="material-icons">delete</i>
								</a></td>
	
			</c:forEach>
					</tbody>
				</table>
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