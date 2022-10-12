<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-with, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
	 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/https://unicons.iconscout.com/release/v4.0.0/css/line.css">
	<title>Connection à OpenAssu</title>
</head>
<body>
	<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
	
 <div class="container">
 	<section class="sign-in">
 	<div class="form-container  sign-in-container centrer">
 <form method="post" action="login" class=register-form" id="login-form">
 	<h1 style="text-align: center" >Connectez-vous à<br>votre compte</h1>
 	
 	<div class="input-box">
 		<input type="email" spellcheck="false" name="username" required>
 		<label for="">e-mail</label>

 	</div>
 	<br>
 	<div class="input-box">
 		
 		<input type="password" spellcheck="false" name="password" required>
 		<label for="">Mot de passe</label>
 		<i class="uil-eye-slash toggle"></i>

 	</div>
 	<input type="checkbox" name="remember-me" id="remember-me" class="agree-term" /> <span>remember-me</span>
 	<br>
 		
 	   <button type="submit" name="signin" id="signin"> Connexion</button>
 	   <button type="reset" style="background-color: #E44E4C; border-color:#E44E4C"> Annuler</button>

</form>
	</div>

	<div class="overlay-container">
    <div class="overlay">
     
      <div class="overlay-panel overlay-right">
        <h1>Bienvenue sur OpenAssu</h1>
        <p>Entrez vos données personnelles</p>
           
      </div>
    </div>
  </div>
	</section>
 </div>
  	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
 
 <script type="text/javascript">

	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry","Wrong Username or Passeword","error");
}
	if (status == "invalidEmail"){
		swal("Sorry", "Please Enter a Valid Username", "error");		
	}
	if (status == "invalidUpwd"){
		swal("Sorry", "Please Enter a Valid Password", "error");
	}
</script>

</body>
</html> 