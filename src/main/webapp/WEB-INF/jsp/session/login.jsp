<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Login</title>
<%@ include file="../common/import_css.jspf"%>

 

</head>

<body class="cyan">
  <div id="login-page" class="row">

    <div class="col s12 z-depth-4 card-panel">
      <form class="login-form" action="<c:url value='/session/autenticar'/>" method="POST">
      
        <div class="row">
          <div class="input-field col s12 center">
            <img src="<c:url value='/resources/materialize-admin/images/login-logo.png'/>" alt="" class="circle responsive-img valign profile-image-login">
            <p class="center login-form-text">Material Design Admin Template</p>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
            <input id="username" type="text" name="usuario.login">
            <label for="username" class="center-align">Username</label>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <input id="password" type="password" name="usuario.senha">
            <label for="password">Password</label>
          </div>
        </div>
        <div class="row">          
          <div class="input-field col s12 m12 l12  login-text">
              <input type="checkbox" id="remember-me" />
              <label for="remember-me">Remember me</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <button type="submit" class="btn red accent-4 waves-effect waves-light col s12">Login</button>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s6 m6 l6">
            <p class="margin medium-small"><a href="page-register.html">Register Now!</a></p>
          </div>
          <div class="input-field col s6 m6 l6">
              <p class="margin right-align medium-small"><a href="page-forgot-password.html">Forgot password ?</a></p>
          </div>          
        </div>

      </form>
    </div>
  </div>

	<%@ include file="../common/import_js.jspf"%>
</body>

	
</html>





























