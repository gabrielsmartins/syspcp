<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Autenticação de Usuário</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>PCP-WEB</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Autenticação de Usuário</p>

    <form action="<c:url value='/session/autenticar'/>" method="POST">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Login" name="usuario.login">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" name="usuario.senha">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-cancel btn-block btn-flat">Login</button>
        </div>
        <!-- /.col -->
      </div>
    </form>
  </div>
  <!-- /.login-box-body -->
  
   <c:if test="${not empty error}">
   <br><br>
    <div class="callout callout-danger">
                <h4>Autenticação</h4>

                <p>${error}</p>
              </div>
              </c:if>
              
              
                 <c:if test="${not empty mensagem}">
   <br><br>
    <div class="callout callout-success">
                <h4>Logout</h4>

                <p>${mensagem}</p>
              </div>
              </c:if>
</div>
<!-- /.login-box -->

	<%@ include file="../common/import_js.jspf"%>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
















