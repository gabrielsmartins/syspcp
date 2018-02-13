<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
  <head>
<%@ include file="../common/import_css.jspf"%>
    <title>Home</title>
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
        <a href="#!" class="breadcrumb">Recurso</a>
        <a href="#!" class="breadcrumb">Editar</a>
      </div>
    </div>
  </nav>
         <!-- Fim Breadcrumbs -->


					<div class="card-panel">
						<h4 class="header2"><strong>Recurso - Editar</strong></h4>
						<div class="row">
							<form action="<c:url value='/recursos/${recurso.id}'/>"
						method="POST" accept-charset="UTF-8">
								
								<div class="row">
								<div class="input-field col s6">
									<input id="descricao" type="text" class="validate"
										name="recurso.descricao" value="${recurso.descricao}"> <label for="descricao" class="active">Descrição:</label>
								</div>
								</div>


								<div class="row">
									<div class="input-field col s6">
									
									<select  name="recurso.setor.id">
													<c:forEach items="${setores}" var="setor">
														<option value="${setor.id}"
															<c:if test="${setor.id == recurso.setor.id}">selected</c:if>>${setor.descricao}</option>
													</c:forEach>
												</select>
									
										
									</div>
								</div>
								
								

								<div class="row">
										<button class="btn grey darken-4 waves-effect waves-light right" type="submit" name="_method" value="DELETE">
											Excluir <i class="material-icons right">clear</i>
										</button>
										<button class="btn grey darken-4 waves-effect waves-light right" type="submit" name="_method" value="PUT">
											Salvar <i class="material-icons right">save</i>
										</button>
								</div>

							</form>
						</div>
					</div>

		
   
  </body>
  </main>
  
  
<%@ include file="../common/footer.jspf"%>
 
</html>


























