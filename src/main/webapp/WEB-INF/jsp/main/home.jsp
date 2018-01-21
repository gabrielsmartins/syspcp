<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Home</title>
<%@ include file="../common/import_css.jspf"%>
</head>

<body>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="ball-scale">
            <div></div>
        </div>
    </div>
    <!-- Pre-loader end -->

    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">

            <%@ include file="../common/navbar.jspf"%>
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                   
                   <%@ include file="../common/sidebar.jspf"%>
                   
                    <div class="pcoded-content">
                    
                        <div class="pcoded-inner-content">

                            <div class="main-body">
                                <div class="page-wrapper">
                                    <div class="page-header">
                                        <div class="page-header-title">
                                            <h4>Dashboard</h4>
                                        </div>
                                        <div class="page-header-breadcrumb">
                                            <ul class="breadcrumb-title">
                                                <li class="breadcrumb-item">
                                                    <a href="#!">
                                                        <i class="icofont icofont-home"></i>
                                                    </a>
                                                </li>
                                                <li class="breadcrumb-item"><a href="#!">Dashboard</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="page-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <!--<div id="styleSelector">-->

                            <!--</div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>




<%@ include file="../common/import_js.jspf"%>


</body>

</html>
