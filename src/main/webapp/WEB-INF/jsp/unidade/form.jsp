<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
  <%@ include file="../common/import_css.jspf"%>
  <title>Unidade de Medida - Novo</title>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <!-- Main Header -->
<%@ include file="../common/header.jspf"%>
  <!-- Left side column. contains the logo and sidebar -->
<%@ include file="../common/sidebar.jspf"%> 
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="content-wrapper">
  
  
  
  
   <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Horizontal Form</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="<c:url value='/unidades/'/>"
								method="POST" accept-charset="UTF-8">
              <div class="box-body">
                <div class="form-group">
                  <label for="descricao" class="col-sm-2 control-label">Descrição:</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="descricao" placeholder="Descrição" name="unidade.descricao">
                  </div>
                </div>
                <div class="form-group">
                  <label for="sigla" class="col-sm-2 control-label">Sigla:</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="sigla" placeholder="Sigla" name="unidade.sigla">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                      <label>
                        <input type="checkbox"> Remember me
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="reset" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-info pull-right">Salvar</button>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
  
  </div>
  
 
  
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->
<%@ include file="../common/import_js.jspf"%>




<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>






