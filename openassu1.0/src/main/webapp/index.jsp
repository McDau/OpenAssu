<%
	if(session == null || session.getAttribute ("name")==null){
		response.sendRedirect("login.jsp");
	}else {	
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//Http 1.1

		response.setHeader("Pragma", "no-cache");//Http 1.0

		response.setDateHeader("Expires", 0);
		
		
	}
%>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to OpenAssu</title>
    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">
    <!-- Styles -->
    <link href="${pageContext.request.contextPath}/css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/lib/chartist/chartist.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/lib/themify-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/lib/weather-icons.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/lib/helper.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>

<body>
    <!-- /# debut menu  principal -->
    <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content">
                <ul>
                    <div class="logo"><a href="index.jsp">
                            <!-- <img src="images/logo.png" alt="" /> --><span>OpenAssu</span></a></div>
                   
                    <li><a  href="index.jsp"><i class="ti-home"></i> Tableau de bord </a>
                    </li>

                   
                    <li><a href="<%=request.getContextPath()%>/list"><i class="breadcrumb-item active"</i> Clients </a></li>
                    

                    <li><a class="sidebar-sub-toggle"><i class="ti-layout-grid2 "></i> Assurance <span
                                class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="assurancemaladie.jsp">Assurance maladie</a></li>
                            <li><a href="mutuellesante.jsp">Mutuelle de santé</a></li>
                            <li><a href="#">Autre</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="ti-settings"></i> Paramètres </a></li>
                    <li><a href="#"><i class="ti-link"></i> Autres</a></li>
                    <li><a href ="logout"><i class="ti-close"></i> Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /# Fin menu  principal -->

    <!-- /# debut header -->    

    <div class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="float-left">
                        <div class="hamburger sidebar-toggle">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>
                    </div>
                    <div class="float-right">
                        
                        
                        <div class="dropdown dib">
                            <div class="header-icon" data-toggle="dropdown">
<!-- Inserer username venant du DB    -->    <span class="user-avatar"><%=session.getAttribute("name")%>
                                    <i class="ti-angle-down f-s-10"></i>
                                </span>
                                <div class="drop-down dropdown-profile dropdown-menu dropdown-menu-right">
                                    <div class="dropdown-content-body">
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <i class="ti-user"></i>
                                                    <span>Profile</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="logout">
                                                    <i class="ti-power-off"></i>
                                                    <span>Logout</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- /#fin header -->

    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
 <!-- Inserer username venant du DB    --> <h1>Hello <%=session.getAttribute("name")%>, <span>Bienvenue sur OpenAssu</span></h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Tableau de bord</a></li>
                                    <li class="breadcrumb-item active">Accueil</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                       
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-one">
                                    <div class="stat-icon dib"><i class="ti-user color-primary border-primary"></i>
                                    </div>
                                    <div class="stat-content dib">
 <!-- Connexion avec la BD donnÃ©es venant de la BD    -->  <div class="stat-text" >Client</div>
                                        <div class="stat-digit">19</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card">
                                <div class="stat-widget-one">
                                    <div class="stat-icon dib"><i class="ti-layout-grid2 color-pink border-pink"></i>
                                    </div>
                                    <div class="stat-content dib">
<!-- Connexion avec la BD donnÃ©es venant de la BD    --> <div class="stat-text">Assurance</div>
                                        <div class="stat-digit">4</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                   
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="row">
                               
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="testimonial-widget-one p-17">
                                            <div class="testimonial-widget-one owl-carousel owl-theme">
                                                <div class="item">
                                                    <div class="testimonial-content">
                                                        <div class="testimonial-text">
                                                            <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet,
                                                            consectetur adipisicing elit, sed do eiusmod tempor
                                                            incididunt ut labore et dolore magna aliqua. Ut enim ad
                                                            minim veniam, quis
                                                            nostrud exercitation <i class="fa fa-quote-right"></i>
                                                        </div>
                                                        <img class="testimonial-author-img"
                                                            src="images/avatar/1.jpg" alt="" />
                                                        <div class="testimonial-author">TYRION LANNISTER</div>
                                                        <div class="testimonial-author-position">Founder-Ceo. Dell Corp
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="testimonial-content">
                                                        <div class="testimonial-text">
                                                            <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet,
                                                            consectetur adipisicing elit, sed do eiusmod tempor
                                                            incididunt ut labore et dolore magna aliqua. Ut enim ad
                                                            minim veniam, quis
                                                            nostrud exercitation <i class="fa fa-quote-right"></i>
                                                        </div>
                                                        <img class="testimonial-author-img"
                                                            src="images/avatar/1.jpg" alt="" />
                                                        <div class="testimonial-author">TYRION LANNISTER</div>
                                                        <div class="testimonial-author-position">Founder-Ceo. Dell Corp
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="testimonial-content">
                                                        <div class="testimonial-text">
                                                            <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet,
                                                            consectetur adipisicing elit, sed do eiusmod tempor
                                                            incididunt ut labore et dolore magna aliqua. Ut enim ad
                                                            minim veniam, quis
                                                            nostrud exercitation <i class="fa fa-quote-right"></i>
                                                        </div>
                                                        <img class="testimonial-author-img"
                                                            src="images/avatar/1.jpg" alt="" />
                                                        <div class="testimonial-author">TYRION LANNISTER</div>
                                                        <div class="testimonial-author-position">Founder-Ceo. Dell Corp
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="testimonial-content">
                                                        <div class="testimonial-text">
                                                            <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet,
                                                            consectetur adipisicing elit, sed do eiusmod tempor
                                                            incididunt ut labore et dolore magna aliqua. Ut enim ad
                                                            minim veniam, quis
                                                            nostrud exercitation <i class="fa fa-quote-right"></i>
                                                        </div>
                                                        <img class="testimonial-author-img"
                                                            src="images/avatar/1.jpg" alt="" />
                                                        <div class="testimonial-author">TYRION LANNISTER</div>
                                                        <div class="testimonial-author-position">Founder-Ceo. Dell Corp
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="testimonial-content">
                                                        <div class="testimonial-text">
                                                            <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet,
                                                            consectetur adipisicing elit, sed do eiusmod tempor
                                                            incididunt ut labore et dolore magna aliqua. Ut enim ad
                                                            minim veniam, quis
                                                            nostrud exercitation <i class="fa fa-quote-right"></i>
                                                        </div>
                                                        <img class="testimonial-author-img"
                                                            src="images/avatar/1.jpg" alt="" />
                                                        <div class="testimonial-author">TYRION LANNISTER</div>
                                                        <div class="testimonial-author-position">Founder-Ceo. Dell Corp
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="testimonial-content">
                                                        <div class="testimonial-text">
                                                            <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet,
                                                            consectetur adipisicing elit, sed do eiusmod tempor
                                                            incididunt ut labore et dolore magna aliqua. Ut enim ad
                                                            minim veniam, quis
                                                            nostrud exercitation <i class="fa fa-quote-right"></i>
                                                        </div>
                                                        <img class="testimonial-author-img"
                                                            src="images/avatar/1.jpg" alt="" />
                                                        <div class="testimonial-author">TYRION LANNISTER</div>
                                                        <div class="testimonial-author-position">Founder-Ceo. Dell Corp
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                        
                        
                        <div class="col-lg-5">
                            <div class="card">
                                <div class="card-body">
                                    <div class="year-calendar"></div>
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                   
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                   
                   
                        <!-- /# column -->
                      
                        <!-- /# column -->
                        
                    <!-- /# row -->

                    


                    <div class="row">
                        <div class="col-lg-12">
                            <div class="footer">
                                <p>Copyright Â© HiB's 2022 <a href="#">hibs-cd.com</a></p>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

    <!-- jquery vendor -->
    <script src="js/lib/jquery.min.js"></script>
    <script src="js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="js/lib/menubar/sidebar.js"></script>
    <script src="js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->

    <script src="js/lib/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
    <!-- bootstrap -->

    <script src="js/lib/calendar-2/moment.latest.min.js"></script>
    <script src="js/lib/calendar-2/pignose.calendar.min.js"></script>
    <script src="js/lib/calendar-2/pignose.init.js"></script>


    <script src="js/lib/weather/jquery.simpleWeather.min.js"></script>
    <script src="js/lib/weather/weather-init.js"></script>
    <script src="js/lib/circle-progress/circle-progress.min.js"></script>
    <script src="js/lib/circle-progress/circle-progress-init.js"></script>
    <script src="js/lib/chartist/chartist.min.js"></script>
    <script src="js/lib/sparklinechart/jquery.sparkline.min.js"></script>
    <script src="js/lib/sparklinechart/sparkline.init.js"></script>
    <script src="js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/lib/owl-carousel/owl.carousel-init.js"></script>
    <!-- scripit init-->
    <script src="js/dashboard2.js"></script>
</body>

</html>