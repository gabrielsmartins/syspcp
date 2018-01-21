<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Autenticação de Usuário</title>
    <%@ include file="../common/import_css.jspf"%>


</head>

<body class="fix-menu">
    <section class="login p-fixed d-flex text-center bg-primary common-img-bg">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <!-- Authentication card start -->
                    <div class="login-card card-block auth-body">

                        <form action="<c:url value='/session/autenticar'/>" method="POST" class="md-float-material">
                            <div class="text-center">
                                <img src="<c:url value='/resources/img/logo.png'/>" alt="logo.png" width="100" height="100">
                            </div>
                            <div class="auth-box">
                                <div class="row m-b-20">
                                    <div class="col-md-3">
                                        <h3 class="text-center txt-primary">Login</h3>
                                    </div>
                                    <div class="col-md-9">
                                        <p class="text-inverse m-t-25 text-left">Não possui acesso? <a href=""> Registre-se </a> aqui!</p>
                                    </div>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="icon-user"></i></span>
                                    <input type="text" class="form-control" placeholder="Username" name="usuario.login">
                                    <span class="md-line"></span>
                                </div>
                                <div class="input-group">
                                   <span class="input-group-addon"><i class="icon-lock"></i></span>
                                    <input type="password" class="form-control" placeholder="password" name="usuario.senha">
                                    <span class="md-line"></span>
                                </div>
                                <div class="row m-t-25 text-left">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                                <input type="checkbox" value="">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">Remember me</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-xs-12 forgot-phone text-right">
                                        <a href="auth-reset-password.html" class="text-right f-w-600 text-inverse"> Forget Password?</a>
                                    </div>
                                </div>
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">LOGIN</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!-- end of form -->
                    </div>
                    <!-- Authentication card end -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
    
    <!-- Required Jquery -->
    <%@ include file="../common/import_js.jspf"%>
</body>

</html>
