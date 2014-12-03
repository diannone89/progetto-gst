<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Xenon Boostrap Admin Panel" />
        <meta name="author" content="" />

        <title>DISTRA-MIT</title>

        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Arimo:400,700,400italic">
        <link rel="stylesheet" href="assets/css/fonts/linecons/css/linecons.css">
        <link rel="stylesheet" href="assets/css/fonts/fontawesome/css/font-awesome.css">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/xenon-core.css">
        <link rel="stylesheet" href="assets/css/xenon-forms.css">
        <link rel="stylesheet" href="assets/css/xenon-components.css">
        <link rel="stylesheet" href="assets/css/xenon-skins.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/fonts/linecons/css/linecons.css">
        <link rel="stylesheet" href="assets/css/fonts/fontawesome/css/font-awesome.min.css">

        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script>
            jQuery(document).ready(function ($) {
                if (localStorage.getItem("username") != null) {
                    if (localStorage.getItem("typology") == "Professor") {
                        alert("Professor");
                    }
                    if (localStorage.getItem("typology") == "student") {
                        window.location.replace("offertaFormativaStudente.html");
                    }
                    if (localStorage.getItem("typology") == "Organization") {
                        alert("Organization");
                    }
                    if (localStorage.getItem("typology") == "Administrator") {
                        alert("Administrator");
                    }
                }
            });
        </script>

        <style>

            #main_list li > a:hover {
                text-decoration: underline;
            }

            #main_list li > a{
                background-color: white;

            }

            #main_list li.active > a {
                background-color: #3F61A3;

            }

        </style>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
                        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
                        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                <![endif]-->


    </head>
    <body class="page-body">

        <nav class="navbar horizontal-menu navbar-fixed-top">
            <!-- set fixed position by adding class "navbar-fixed-top" -->

            <div class="navbar-inner">

                <!-- Navbar Brand -->
                <div class="navbar-brand">
                    <a href="index.html" class="logo"> <img
                            src="assets/images/mitforsite.png" width="80" alt=""
                            class="hidden-xs" /> <img src="assets/images/mitforsitemini.png"
                            width="80" alt="" class="visible-xs" />
                    </a>
                </div>

                <!-- Mobile Toggles Links -->
                <div class="nav navbar-mobile">

                    <!-- This will toggle the mobile menu and will be visible only on mobile devices -->
                    <div class="mobile-menu-toggle">

                        <a href="#" data-toggle="user-info-menu-horizontal"> <i
                                class="fa-key"></i>
                        </a> <a href="#" data-toggle="mobile-menu-horizontal"> <i
                                class="fa-bars"></i>
                        </a>
                    </div>
                </div>

                <div class="navbar-mobile-clear"></div>

                <!-- main menu -->

                <ul class="navbar-nav">
                    <li><a href="index.html"> <i class="fa fa-home"></i> <span
                                class="title">Home</span>
                        </a></li>
                    <li><a href="offertaFormativa.html"> <i
                                class="linecons-desktop"></i> <span class="title">Offerta
                                Formativa</span>
                        </a></li>
                    <li class="opened active"><a href="gestioneTesi.jsp"> <i
                                class="linecons-graduation-cap"></i> <span class="title">Gestione
                                Tesi</span>
                        </a></li>
                    <li><a href="gestioneTirocinio.html"> <i
                                class="linecons-megaphone"></i> <span class="title">Gestione
                                Tirocinio</span>
                        </a></li>
                    <li><a href="dottorato.html"> <i class="linecons-lightbulb"></i>
                            <span class="title">Dottorato</span>
                        </a></li>
                    <li><a href="#"> <i class="linecons-globe"></i> <span
                                class="title">Links</span>
                        </a>
                        <ul>
                            <li><a href="http://www.magistralemit.unisa.it/"
                                   target="_blank"> <span class="title">DISTRA-MIT</span>
                                </a></li>
                            <li><a href="https://esse3web.unisa.it/unisa/Start.do"
                                   target="_blank"> <span class="title">Esse3</span>
                                </a></li>
                        </ul></li>
                </ul>
                <!-- notifications and other links -->
                <ul class="nav nav-userinfo navbar-right">
                    <li><a href="login.html"> <i class="fa-user"></i> <span
                                class="title">Login</span>
                        </a></li>
                </ul>

            </div>

        </nav>

        <!--BODY-->

        <div class="page-container">
            <div class="main-content">
                <div class="row">
                    <div class="col-lg-2">
                        <ul id="main_list" class="nav nav-pills nav-stacked">
                            <li class="active"><a href="#bacheca" data-toggle="pill"><i class="fa-user"></i> Bacheca</a></li>
                            <li><a href="#cronologia" data-toggle="pill"><i class="fa-history"></i> Cronologia</a></li>
                            <li><a href="#storico" data-toggle="pill"><i class="fa-search"></i> Storico Tesi</a></li>
                            
                        </ul>
                    </div>

                    <div class="tab-content col-lg-10">
                        <div class="tab-pane active" id="bacheca">
                            <div class="panel panel-default">
                                <div class="panel-heading text-center"><h3>Bacheca</h3></div>
                                <div class="panel-body"><%@ include file="gestioneTesi/bacheca.jsp" %></div>
                            </div>
                        </div>
                        <div class="tab-pane" id="cronologia">
                            <div class="panel panel-flat">
                                <div class="panel-heading text-center"><h3>Cronologia</h3></div>
                                <div class="panel-body"><%@ include file="gestioneTesi/cronologia.jsp" %></div>
                            </div>
                        </div>
                        <div class="tab-pane" id="storico">
                            <div class="panel panel-default">
                                <div class="panel-heading text-center"><h3>Storico</h3></div>
                                <div class="panel-body"><%@ include file="gestioneTesi/storico.jsp" %></div>
                            </div>
                        </div>
                       
                    </div>




                </div>
            </div>
        </div>


        <!-- Bottom Scripts -->
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/TweenMax.min.js"></script>
        <script src="assets/js/resizeable.js"></script>
        <script src="assets/js/joinable.js"></script>
        <script src="assets/js/xenon-api.js"></script>
        <script src="assets/js/xenon-toggles.js"></script>


        <!-- JavaScripts initializations and stuff -->
        <script src="assets/js/xenon-custom.js"></script>
    </body>
</html>
