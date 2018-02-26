<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
    <%@ include file="../common/import_css.jspf"%>
<title>Material - Consulta</title>
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
      <h1>
        Material
        <small>Consulta</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

<c:if test="${not empty mensagem}">
<div class="callout callout-success">
                <h4>Sucesso!</h4>

                <p>${mensagem}</p>
              </div>
</c:if>

<div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="example1_length"><label>Show <select name="example1_length" aria-controls="example1" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-6"><div id="example1_filter" class="dataTables_filter"><label>Pesquisar:<input class="form-control input-sm" placeholder="" aria-controls="example1" type="search"></label></div></div></div><div class="row"><div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                <thead>
                 <tr role="row">
                        <th class="sorting_asc" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 50px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">ID</th>
                        <th class="sorting_asc" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 350px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Descrição</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Position: activate to sort column ascending">Codigo Interno</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">U.M</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Qntd Estoque</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Qntd Mínima</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Valor Unit (R$)</th>
                          <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Peso (KG)</th>
                         <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Comp (mm)</th>
                       <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Larg (mm)</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Alt (mm)</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Status</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Editar</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Excluir</th>
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

												<c:set var="status" scope="session"
													value="${fn:replace(material.situacao, '_', ' ')}" />
												<c:choose>

													<c:when test="${status == 'ATIVO'}">
														<td><span class="badge bg-green">${status}</span></td>
													</c:when>

													<c:when test="${status == 'INATIVO'}">
														<td><span class="badge bg-gray">${status}</span></td>
													</c:when>

													<c:otherwise>
														<td><span class="badge bg-yellow">${status}</span></td>
													</c:otherwise>
												</c:choose>

												<td>
												<a href="<c:url value='/materiais/${material.id}'/>"
													class="btn btn-save"><i class="fa fa-edit"></i>
												</a> 
												</td>
												<td>

												<form action="<c:url value='/materiais/${material.id}'/>" method="post">
													<button type="submit"class="btn btn-cancel"><i class="fa fa-remove"></i></button>
												</form>
												
												</td>
											</tr>
										</c:forEach>
         
                
                
           
                
                
      

                </tbody>
                <tfoot>
                        <tr>
                        <th rowspan="1" colspan="1"><strong>ID</strong></th>
											<th rowspan="1" colspan="1"><strong>Descrição</strong></th>
											<th rowspan="1" colspan="1"><strong>Codigo Interno</strong></th>
											<th rowspan="1" colspan="1"><strong>Unidade</strong></th>
											<th rowspan="1" colspan="1"><strong>Qntd Estoque</strong></th>
											<th rowspan="1" colspan="1"><strong>Qntd Mínima</strong></th>
											<th rowspan="1" colspan="1"><strong>Valor Unit (R$)</strong></th>
											<th rowspan="1" colspan="1"><strong>Peso (KG)</strong></th>
											<th rowspan="1" colspan="1"><strong>Comp (mm)</strong></th>
											<th rowspan="1" colspan="1"><strong>Larg (mm)</strong></th>
											<th rowspan="1" colspan="1"><strong>Alt (mm)</strong></th>
											<th rowspan="1" colspan="1"><strong>Status</strong></th>
											<th rowspan="1" colspan="1"><strong>Editar</strong></th>
											<th rowspan="1" colspan="1"><strong>Editar</strong></th>
                        </tr>
                    </tfoot>
              </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li><li class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li></ul></div></div></div></div>
            </div>
            <!-- /.box-body -->
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

















