<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@  taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@  taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@  taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
    <title>Nouveau client | OpenAssu</title>
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
    <link href="css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
    <link href="css/lib/chartist/chartist.min.css" rel="stylesheet">
    <link href="css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="css/lib/themify-icons.css" rel="stylesheet">
    <link href="css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <link href="css/lib/weather-icons.css" rel="stylesheet" />
    <link href="css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="css/lib/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet"
    	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/i3TQUOhcWr7x9JvoRxT2MZw1T"
    	crossorigin="anonymous">
</head>

<body>
    <!-- /# debut menu  principal -->
    <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content">
                <ul>
                    <div class="logo"><a href="index.jsp">
                            <!-- <img src="images/logo.png" alt="" /> --><span>OpenAssu</span></a></div>
                   
                    <li><a  href="index.jsp"><i class="ti-home"></i> Tableau de bord </a></li>

                   <li><a href="client-list.jsp"><i class="ti-user"></i> Client </a></li>

                    <li><a class="sidebar-sub-toggle"><i class="ti-layout-grid2 "></i> Assurance <span
                                class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="assurancemaladie.jsp">Assurance maladie</a></li>
                            <li><a href="mutuellesante.jsp">Mutuelle de sante</a></li>
                            <li><a href="#">Autre</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="ti-settings"></i> Parametres </a></li>
                    <li><a href="#"><i class="ti-link"></i> Autres</a></li>
                    <li><a><i class="ti-close"></i> Logout</a></li>
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
<!-- Inserer username venant du DB    -->    <span class="user-avatar">Egideem19
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
                                                <a href="#">
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
 <!-- Inserer username venant du DB    --> <h1>Hello egideem19, <span>Bienvenue sur OpenAssu</span></h1>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4 p-l-0 title-margin-left">
                        <div class="page-header">
                            <div class="page-title">
                                <ol class="breadcrumb">
                                    <li class=""><a href="index.jsp">Tableau de bord</a></li>
                                    <li <a href="<%=request.getContextPath()%>/list" class="breadcrumb-item active"></a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <section id="main-content">
           </div>        
                     
          <div class="row">
            

                       <div class="col-lg-12">
                            <div class="card">
                                <div class="card-title text-center">
                                    <h3> Ajouter un Nouveau Client</h3>
                                    
                                </div>
                                <div class="card-body">
                                
                                    <div class="horizontal-form">
                                     	<c:if test="${client != null}">
                                        <form action = "update" method = "post">
                                        </c:if>
                                        <c:if test="${client == null}">
                                        <form action = "insert" method ="post">
                                        </c:if>
                   <caption>
                   	<h7 
                   		<c:if  test ="${client != null}">
                   		Edit Client
                   		</c:if></br>
                   		<c:if  test="${client == null}">
                   		Add new Client
                   		</c:if>
                   	<h7>
                   </caption>
            					</div>
            				</div>
            		</div>
            	</div>
            </div>
          
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">ClientID*</label>
                    <div class="col-sm-2">
                    
                        <c:if test = "${client != null}">
                        <input type="hidden" name = "idClients" value="<c:out value='${client.idClients}'/>" class="form-control" id="idClients"  required placeholder=""/>
                    	</c:if>
                    </div>
            </div>
            
           <fieldset class ="form-group">
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Nom*</label>
                    <div class="col-sm-4">
                    	
                        <input type="text" value="<c:out value='${client.nomClient}'/>" name="nomClient" class="form-control" id="nomClient"  required  placeholder="">
                    </div>
            </div>
            </fieldset>
            
            <fieldset class ="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Prenom*</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.prenomClient}'/>" name="prenomClient" class="form-control" id="prenomClient"  required  placeholder="">
                    </div>
            </div>
            </fieldset>
            
            <fieldset class ="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Pays*</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.paysClient}'/>" name="paysClient" class="form-control" id="paysClient"  required  placeholder="">
                    </div>
            </div>
            </fieldset>
            <fieldset class ="form-group">
                <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Province</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.provinceClient}'/>" name="provinceClient" class="form-control" id="provinceClient" placeholder="">
                    </div>
            </div>
            </fieldset>
            
            <fieldset class ="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Territoire</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.territoireClient}'/>" name="territoireClient" class="form-control" id="territoireClient" placeholder="">
                    </div>
            </div>
            </fieldset>
            
            <fieldset class ="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Ville</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.villeClient}'/>" name="villeClient" class="form-control" id="villeClient" placeholder="">
                    </div>
            </div>
            </fieldset>
            
            <fieldset class ="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Commune</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.communeClient}'/>" name="communeClient" class="form-control" id="communeClient" placeholder="">
                    </div>
            </div>
            </fieldset>
            
            <fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Groupement</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.groupementClient}'/>" name="groupementClient" class="form-control" id="groupementClient" placeholder="">
                    </div>
            </div>
			</fieldset>
            
            
            <fieldset class ="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Quartier</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.quartiertClient}'/>" name="quartiertClient" class="form-control" id="quartiertClient" placeholder="">
                    </div>
            </div>
            </fieldset>
			
			<fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Village</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.villageClient}'/>" name="villageClient" class="form-control" id="villageClient" placeholder="">
                    </div>
            </div>
			</fieldset>
			
			<fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Avenue</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.avenueClient}'/>" name="avenueClient" class="form-control" id="avenueClient" placeholder="">
                    </div>
            </div>
			</fieldset>
			
			<fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="row">
                <label class="col-form-label col-sm-2 pt-0">Genre*</label>
                <div class="col-sm-4">
                		
                        <select <input type="text" value="<c:out value='${client.sexeClient}'/>" name="sexeClient" class="form-control" id="sexeClient" placeholder=""> class="form-control" required >
                            <option selected="">Selectionnez...</option>
                                    <option>Homme</option>
                                    <option>Femme</option>
                                    <option>Autre</option>
                                
                                    </select>
                    </div>
            </div>
            </fieldset>
            
            <fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Etat civil*</label>
                    <div class="col-sm-4"  required  >
                        <select <input type="text" value="<c:out value='${client.etatCivilClient}'/>" name="etatCivilClient" class="form-control" id="etatCivilClient" placeholder=""> class="form-control" required >
                            <option selected="">Selectionnez...</option>
                                    <option>Celibataire</option>
                                    <option>Marié</option>
                                    <option>Autre</option>
                                
                                    </select>
                    </div>
            </div>
            </fieldset>
            
            <fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Date de naissance*</label>
                    <div class="col-sm-4">
                    	
                        <input type="date" <fmt:parseDate value='${client.dateNaissanceClient}' pattern="yyyy-MM-dd' value='dNaissance'/></select><fmt:formatDate value='${dNaissanceClient}'pattern='yyyy-MM-dd'/>" name="dateNaissanceClient" class="form-control" id="dateNaissanceClient" required  placeholder="">
                    						
                    </div>
            </div>
            </fieldset>
          
            
			<fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Lieu de naissance</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.lieuNaissanceClient}'/>" name="lieuNaissanceClient" class="form-control" id="lieuNaissanceClient" placeholder="">
                    </div>
            </div>
            </fieldset>
  
        
            
            <fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Type d'assurance*</label>
                    <div class="col-sm-4">
                        <select <input type="text" value="<c:out value='${client.typeAssuranceClient}'/>" name="typeAssuranceClient" class="form-control" id="typeAssuranceClient" placeholder=""> class="form-control" required>
                            <option selected="">Selectionnez...</option>
                                    <option>Assurance maladie</option>
                                    <option>Mutuelle de santé</option>
                                    <option>Autre</option>
                                
                                    </select>
                    </div>
            </div>
            </fieldset>
            
            <fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Nom assureur*</label>
                    <div class="col-sm-4">
                        <input type="text" value="<c:out value='${client.nomAssureurClient}'/>" name="nomAssureurClient" class="form-control" required id="nomAssureurClient" placeholder="">
                    </div>
            </div>
            </fieldset>
            
            <fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Date debut*</label>
                    <div class="col-sm-4">
                        <input type="date" value="<fmt:formatDate value='${client.dateDebutClient}'/>" name="dateDebutClient" class="form-control" id="dateDebutClient"  required   placeholder="">
                    </div>
            </div>
            </fieldset>
            
            <fieldset class="form-group">
            <div style="line-height: 3px;"><br></div>
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">Date fin</label>
                    <div class="col-sm-4">
                        <input type="date" value="<fmt:formatDate value='${client.dateFinClient}'/>" name="dateFinClient"class="form-control" id="dateFinClient" placeholder="">
                    </div>
            </div>
            </fieldset>
			
			<fieldset class ="form-group">
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">NationalID</label>
                    <div class="col-sm-2">
                        <input type="texte" name = "idNationalClient" value="<c:out value='${client.idNationalClient}'/>" class="form-control" id="idNationalClient"  placeholder="">
                    </div>
            </div>
            </fieldset>
           
           <fieldset class ="form-group">
            <div class="form-group row">
                <label for="" class="col-sm-2 col-form-label">MedicalID</label>
                    <div class="col-sm-2">
                        <input type="text" name = "idDossierMedical" value="<c:out value='${client.idDossierMedical}'/>" class="form-control" id="idDossierMedical"   placeholder="">
                    </div>
            </div>
            </fieldset>


            <div style="line-height: 3px;"><br></div>
            <div class="">
                                <input type="submit" name="insert" id="insert"
                                    class="btn btn-success" value="Sauvegarder" />
                                    <input type="reset" name="Annuler" id="Annuler"
                                    class="btn btn-danger" value="Annuler" />
                            </div>

                            
        </form> 
                                    </div>
                                </div>




                            </div>
                        </div>
           </div>
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