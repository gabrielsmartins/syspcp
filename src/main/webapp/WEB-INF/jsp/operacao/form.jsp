<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
    <%@ include file="../common/import_css.jspf"%>
  <title>Operação - Novo</title>
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
      Operação
      </h1>
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
            <form class="form-horizontal" action="<c:url value='/operacoes/'/>"
								method="POST" accept-charset="UTF-8">
              <div class="box-body">
                <div class="form-group row">
                  <label for="descricao" class="col-sm-1 control-label">Descrição:</label>

                  <div class="col-sm-6">
                    <input type="text" class="form-control" id="descricao" placeholder="Descrição" name="operacao.descricao">
                  </div>
                </div>
                
                
                
                <div class="form-group row">
                  <label for="descricao" class="col-sm-1 control-label">Instrução:</label>

                  <div class="col-sm-6">
                   <textarea id="instrucao" class="form-control" placeholder="Instrução" name="operacao.instrucao"></textarea>
                  </div>
                </div>
                
                
                
                
                
                <div class="form-group row">
                  <label for="sigla" class="col-sm-1 control-label">Setor:</label>

                  <div class="col-sm-3">
                    <select name="operacao.setor.id" class="form-control">
											<option value="" disabled selected>Escolha um setor</option>
											<c:forEach items="${setores}" var="setor">
												<option value="${setor.id}">${setor.descricao}</option>
											</c:forEach>
										</select>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="reset" class="btn btn-cancel pull-right fa fa-ban"> Cancelar</button>
                <button type="submit" class="btn btn-save pull-right fa fa-save"> Salvar</button>
              </div>
              <!-- /.box-footer -->
            </form>
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











