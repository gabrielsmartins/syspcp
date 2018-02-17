<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
    <%@ include file="../common/import_css.jspf"%>
  <title>Material - Novo</title>
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
            <form class="form-horizontal" action="<c:url value='/materiais/'/>"
								method="POST" accept-charset="UTF-8">
             <div class="box-body">
            
								
								  <div class="box-header with-border">
              <h3 class="box-title">Dados Básicos</h3>
            </div>
            
            
             
              
            
            
                <div class="form-group row">
                <label for="descricao" class="col-sm-1 control-label">Código Interno:</label>
                
                 <div class="col-sm-2">
                <input id="codigoInterno" class="form-control" type="text" name="material.codigoInterno" >
                </div>
                
                
                  <label for="descricao" class="col-sm-1 control-label">Descrição:</label>
                  <div class="col-sm-6">
                  <input id="descricao" class="form-control" type="text" name="material.descricao">
                  </div>
                </div>
                
                
                
                
                <div class="form-group row">
                  <label for="valorUnitario" class="col-sm-1 control-label">Valor Unitário:</label>

                  <div class="col-sm-3">
                  <input id="valorUnitario" class="form-control" type="number" pattern="[0-9]+([\.,][0-9]+)?" step="0.01" name="material.valorUnitario"> 
                  </div>
                  
                  <div class="col-sm-6">
                  <label for="ATIVO" class="radio-inline">
                      <input name="material.situacao" type="radio" id="ATIVO" value="ATIVO" checked> Ativo
                  </label>
                  		
                  		<label for="INATIVO" class="radio-inline">
                 			 <input name="material.situacao" type="radio" id="INATIVO" VALUE="INATIVO"> Inativo
                  		  </label>
                       
                       <label for="FORA_DE_LINHA" class="radio-inline">
							<input name="material.situacao" type="radio" id="FORA_DE_LINHA" VALUE="FORA_DE_LINHA"> Fora de Linha
					  </label>

                </div>
              </div>
           
              
              
              
  
              
              <div class="box-header with-border">
              <h3 class="box-title">Dados Técnicos</h3>
            </div>
              
              
               <div class="form-group row">
                   <label for="unidadeMedida" class="col-sm-1 control-label">Unidade de Medida:</label>
               
                   <div class="col-sm-3">
                   		<select name="material.unidadeMedida.id" class="form-control">
									<option value="" disabled selected>Escolha uma unidade</option>
										<c:forEach items="${unidades}" var="unidade">
											<option value="${unidade.id}">${unidade.sigla}-${unidade.descricao}</option>
										</c:forEach>
									</select>
                   </div>
               
               
	               <label for="peso" class="col-sm-1 control-label">Peso (KG):</label>
	               <div class="col-sm-3">
	               <input id="peso" type="number" pattern="[0-9]+([\.,][0-9]+)?"
											step="0.01" name="material.peso" class="form-control"> 
											</div>
	               
	               </div>
	               
	               
	               <div class="form-group row">
	               <label for="comprimento" class="col-sm-1 control-label">Comprimento (mm):</label>
	               <div class="col-sm-2">
	               <input id="comprimento" type="number" pattern="[0-9]+([\.,][0-9]+)?"
											step="0.01" name="material.comprimento" class="form-control"> 
											</div>
											
											
											<label for="comprimento" class="col-sm-1 control-label">Largura (mm):</label>
	               <div class="col-sm-2">
	               <input id="largura" type="number" pattern="[0-9]+([\.,][0-9]+)?"
											step="0.01" name="material.largura" class="form-control"> 
											</div>
											
											
											  <label for="altura" class="col-sm-1 control-label">Altura (mm):</label>
	               <div class="col-sm-2">
	               <input id="altura" type="number" pattern="[0-9]+([\.,][0-9]+)?"
											step="0.01" name="material.altura" class="form-control"> 
											</div>
	               
	               </div>
	               
	               
	             
             
               
               
              
              <div class="box-header with-border">
              <h3 class="box-title">Dados Estoque</h3>
            </div>
           
              
              <div class="form-group row">
              <label for="quantidadeEstoque" class="col-sm-1 control-label">Quantidade Estoque :</label>
								<div class="col-sm-2">
									<input id="quantidadeEstoque" type="number" pattern="[0-9]+([\.,][0-9]+)?" step="0.01" name="material.quantidadeEstoque" class="form-control"> 
									
								</div>

               <label for="quantidadeMinima" class="col-sm-1 control-label">Quantidade Mínima :</label>
								<div class="col-sm-2">
									<input id="quantidadeMinima" type="number" pattern="[0-9]+([\.,][0-9]+)?" step="0.01" name="material.quantidadeMinima" class="form-control"> 
									
								</div>

	            <label for="leadtime" class="col-sm-1 control-label">Lead Time (D) :</label>
								<div class="col-sm-2">
									<input id="leadtime" type="number" pattern="[0-9]+([\.,][0-9]+)?" step="0.01" name="material.leadTime" class="form-control"> 
								
								</div>
			  </div>
							
			
              
              
             
              <!-- /.box-body -->
              </div>
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












