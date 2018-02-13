<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
  <head>
<%@ include file="../common/import_css.jspf"%>
<title>Unidade de Medida - Consulta</title>
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
        <a href="#!" class="breadcrumb">Setor</a>
        <a href="#!" class="breadcrumb">Consulta</a>
      </div>
    </div>
  </nav>
         <!-- Fim Breadcrumbs -->

				
<div class="row">
			
			<div class="col s12">
                  <div id="data-table-simple_wrapper" class="dataTables_wrapper"><div class="dataTables_length" id="data-table-simple_length"><label>Show <div class="select-wrapper initialized"><span class="caret">▼</span><input class="select-dropdown" readonly="true" data-activates="select-options-652d4a42-0c1d-501d-b8a2-b28ad835c1a1" value="10" type="text"><ul id="select-options-652d4a42-0c1d-501d-b8a2-b28ad835c1a1" class="dropdown-content select-dropdown "><li class=""><span>10</span></li><li class=""><span>25</span></li><li class=""><span>50</span></li><li class=""><span>100</span></li></ul><select name="data-table-simple_length" aria-controls="data-table-simple" class="initialized"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select></div> entries</label></div><div id="data-table-simple_filter" class="dataTables_filter"><label>Search:<input class="" placeholder="" aria-controls="data-table-simple" type="search"></label></div><table id="data-table-simple" class="responsive-table display dataTable" role="grid" aria-describedby="data-table-simple_info" cellspacing="0">
                    <thead>
                        <tr role="row">
                         <th class="sorting_asc" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 202px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">ID</th>
                        <th class="sorting_asc" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 202px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Descrição</th>
                        <th class="sorting" tabindex="0" aria-controls="data-table-simple" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Ação</th>
                        </tr>
                    </thead>
                 
                    <tfoot>
                        <tr>
                        <th rowspan="1" colspan="1">ID</th>
                        <th rowspan="1" colspan="1">Descrição</th>
                        <th rowspan="1" colspan="1">Acao</th>
                        </tr>
                    </tfoot>
                 
                    <tbody>
                         
                    
										
										<c:forEach items="${setorList}" var="setor">
									<tr>
										<td>${setor.id}</td>
										<td>${setor.descricao}</td>
										<td><a href="<c:url value='/setores/${setor.id}'/>"
											class="btn-floating btn-sm grey darken-4"> <i
												class="material-icons">edit</i>
										</a> <a href="javascript:void(0);"
											class="btn-floating btn-sm grey darken-4"> <i
												class="material-icons">delete</i>
										</a></td>
									</tr>
								</c:forEach>
                        
                    </tbody>
                  </table>
                  <div class="dataTables_info" id="data-table-simple_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div><div class="dataTables_paginate paging_simple_numbers" id="data-table-simple_paginate"><a class="paginate_button previous disabled" aria-controls="data-table-simple" data-dt-idx="0" tabindex="0" id="data-table-simple_previous">Previous</a><span><a class="paginate_button current" aria-controls="data-table-simple" data-dt-idx="1" tabindex="0">1</a><a class="paginate_button " aria-controls="data-table-simple" data-dt-idx="2" tabindex="0">2</a><a class="paginate_button " aria-controls="data-table-simple" data-dt-idx="3" tabindex="0">3</a><a class="paginate_button " aria-controls="data-table-simple" data-dt-idx="4" tabindex="0">4</a><a class="paginate_button " aria-controls="data-table-simple" data-dt-idx="5" tabindex="0">5</a><a class="paginate_button " aria-controls="data-table-simple" data-dt-idx="6" tabindex="0">6</a></span><a class="paginate_button next" aria-controls="data-table-simple" data-dt-idx="7" tabindex="0" id="data-table-simple_next">Next</a></div></div>
                </div>
                </div>

   
  </body>
  </main>
  
  
<%@ include file="../common/footer.jspf"%>
 
</html>











