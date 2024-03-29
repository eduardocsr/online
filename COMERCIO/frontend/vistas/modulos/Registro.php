<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Academy of life</title>

	<link rel="icon" href="img/icono.png">

	<!--=====================================
	VÍNCULOS CSS
	======================================-->

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

	<!-- Fuente Open Sans -->
	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed|Roboto:100|Grand+Hotel" rel="stylesheet">

<style type="text/css">
	/*=============================================
GLOBAL
=============================================*/

*{
	font-family: 'Roboto', sans-serif;
	font-weight:900;
	
}

a, h1, h2, h3, h4, h5, h6, button, select, option, .input-group, input, .input-group-text, textarea, .nav-link{
	font-family: 'Roboto Condensed', sans-serif;
}

ul, ol{
	list-style: none;
}

a:visited, a:link, a:focus, a:hover, a:active{
	list-style: none;
	text-decoration: none;
}

.dropdown-menu{
	min-width:0% !important;
	padding:0 !important;
	font-size:12px !important;
}

.dropdown-item{
	padding:8px 18px !important;
	color:black !important;
	font-weight:500 !important;

}


/*=============================================
HEADER
=============================================*/

header{
	position: fixed;
	z-index: 2;
	width:100%;
	top:0;
	left:0;
	background:rgba(0,0,0,.1);
}


.botonera li{
	cursor:pointer;
}

.botonera li:hover{
	border-bottom:3px solid white;
}

 .menuMovil{
 	display:none;
 }

 /*=============================================
DISEÑO HERO - CINEMAGRAPH
=============================================*/
.vistaVideo{
	position:relative;
	width:100%;
	height:100vh;
	overflow:hidden;
}

.filtroVideo{
	position:absolute;
	width:100%;
	height:inherit;
	top:0;
	left:0;
	background: url(../img/filtro.png);
	background-repeat: repeat;
}

.vistaVideo .container{
	transform:translate(0, -120%);
}

.vistaVideo .container h1{
	font-size:50px !important;
	font-family: 'Grand Hotel', cursive;
}

.vistaVideo .container .row div{
	position: relative;
}

.vistaVideo .container i{
	position:absolute;
	top:50%;
	left:50%;
	transform:translate(-50%, 50%);
	width:80px;
	line-height: 80px;
	text-align: center;
	font-size:40px;
}

/*=============================================
CURSOS
=============================================*/
.cursos .row h3{
	font-weight:bold;
}

.cursos video{
	cursor:pointer;
}

/*=============================================
NOSOTROS
=============================================*/
.nosotros{
	background: #f7f8f8;
}

.nosotros i{
	width:140px;
	line-height:140px;
	font-size:50px;
}

.nosotros i.fa-users{
	background: #5d7179;
}

.nosotros i.fa-graduation-cap{
	background: #a17a8c;
}

.nosotros i.fa-laptop{
	background: #c1aa92;
}

.nosotros i.fa-check{
	background: #a1b287;
}

/*=============================================
TESTIMONIOS
=============================================*/
.testimonios figure{
	overflow:hidden;
	cursor:pointer;
}

.testimonios img{
	transform: scale(1, 1);
	transition: .5s all;	
}

.testimonios img:hover{
	transform: scale(1.1, 1.1);
	transition: .5s all;
}

/*=============================================
PLANES
=============================================*/

.planes{
	background:#5d7179
}

.planes h1{
	font-weight:bold;
}

.planes .decimal{
	position:relative; 
	top:-15px; 
	font-size:20px; 
	font-weight:bold;
}

/*=============================================
FAQ
=============================================*/

.faq ul li{
	cursor:pointer;
}

.faq .tituloFaq{
	background:#b07b8f; 
	border-radius:20px 20px 0px 0px; 
	position:relative;
	cursor:auto;
}

.faq .tituloFaq img{
	position:absolute; 
	top:-19px; 
	left:34px;
}

.faq .row div{
	display:block;
}

/*=============================================
CONTACTENOS
=============================================*/

.contactenos input, .contactenos textarea{
	font-weight:100;
}

.contactenos .visitanos{
	background:#bea890;
	transform:translate(0%,-15%);
}

/*=============================================
SCROLL UP
=============================================*/

#scrollUp{
	bottom: 20px;
	right: 20px;
	width: 50px;
	height: 50px;
	background: url(../img/flecha.jpg);
}

/*=============================================
PRELOAD
=============================================*/

#preload{
	position:fixed;
	z-index:1000;
	width:100%;
	height:100%;
	background:#fff;
}

#porcentajeCarga{
	position:absolute;
	text-align:center;
	width:100%;
	color:#333;
	top:52%;
	font-size:20px;
	font-weight: 100;
	padding-top:20px;
	font-family: 'Grand Hotel', cursive !important;
}

#lineaCarga{
	position:absolute;
	width:50%;
	top:50%;
	left:50%;
	transform:translate(-50%, -50%);
}

#rellenoCarga{
	width:0%;
}

/*=============================================
PÁGINA INGRESO Y REGISTRO
=============================================*/

.ladoUsuarios{
	overflow-y:hidden;
}

.fotoIngreso, .fotoRegistro{
	position:relative;
	background-size: cover;
	background-position:center top;
	background-attachment:fixed;
	height:100vh;
}

.fotoIngreso{
	background: url(../img/monte.jpg);
}

.fotoRegistro{
	background: url(../img/038.png);
}

.fotoIngreso::before, .fotoRegistro::before{
	position:absolute;
	width:100%;
	height:100%;
	top:0;
	left:0;
	content:"";
	background:rgba(0,0,0,.5);
}

.ladoUsuarios .btnRegresar{
	position:absolute;
	right:2%;
	top:2%;
	padding:5px 20px;
	font-size:15px;	
}

.fotoIngreso .btnRegresar, .fotoIngreso .btnRegresarMovil{
	background:#A17A8C;
}

.fotoRegistro .btnRegresar, .fotoRegistro .btnRegresarMovil{
	background:#A1B287;
}

.ladoUsuarios .redesSociales{
	position:absolute;
	right:2%;
	bottom:0;
}

input[type="checkbox"]{
	display:none;
}

label[for="terminos"] span{
	display:inline-block;
	width:25px;
	height:25px;
	background:silver;
	vertical-align:middle;
	border-radius:100%;
}

input[type="checkbox"]:checked + label[for="terminos"] span{
	background:url(../img/check.png);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}



/*=============================================
TABLET HORIZONTAL (LG revisamos en 1024px)
=============================================*/

@media (max-width:1199px) and (min-width:992px){

	header .ingresos button{
	 	margin-top:-33px;
	 	padding-bottom:0px;
	}

	header .ingresos button a{
	 	font-size:10px;
	}

	.vistaVideo{
		height:70vh;
	}

	.vistaVideo .container{
		transform:translate(0,-95%);
	}


	.filtroVideo{
		position:absolute;
		width:100%;
		height:inherit;
		top:0;
		left:0;
		background: url(../img/filtro.png);
		background-repeat: repeat;
	}

}

/*=============================================
TABLET VERTICAL (MD revisamos en 768px)
=============================================*/

@media (max-width:991px) and (min-width:768px){

 	header .ingresos button{
	 	margin-top:-10px;
	 	padding-bottom:0px;
 	}


 	header .ingresos button a{
	 	font-size:18px;
	 	padding-bottom:5px;
 	}

 	.menuMovil{	
	 	position:fixed;
	 	top:0;
	 	left:0;
	 	width:100%;
	 	height:100%;
	 	background:black;
	 	z-index:2;
	}

	.menuMovil .nav-item{
	  	background-color: #5D7179;
	  	border-bottom:1px solid black;
	}

	.menuMovil .nav-item a{
		font-weight: 100;
		font-size:20px;
	}

	.vistaVideo{
		height:90vh;
	}

	.vistaVideo .container{
		transform:translate(0, 8%);
	}

	.filtroVideo{
		background: url(../img/fondo_movil.png);
		background-size:cover;
	}

	.filtroVideo::after{
		position:absolute;
		top:0;
		left:0;
		width:100%;
		height:100%;
		background:rgba(0,0,0,.5);
		content: "";
	}

	.faq .row div{
		display:none;
	}

	.contactenos .visitanos{
		margin-top:20px;
		transform:translate(0%,0%);
	}

	.ladoUsuarios{
		overflow-y:scroll;
	}

	.ladoUsuarios .btnRegresarMovil{
		position:relative;
	}

	.ladoUsuarios .redesSociales{
		left:50%;
		transform:translate(-50%, 0);
		bottom:0;
	}

}

/*=============================================
MÓVIL HORIZONTAL (SM revisamos en 576px)
=============================================*/

@media (max-width:767px) and (min-width:576px){

	header .ingresos button{
	 	margin-top:-10px;
	 	padding-bottom:0px;
	 }


	 header .ingresos button a{
	 	font-size:14px;
	 	padding-bottom:5px;
	 }

	 .menuMovil{		
	 	position:fixed;
	 	top:0;
	 	left:0;
	 	width:100%;
	 	height:100%;
	 	background:black;
	 	z-index:2;
	 }

	.menuMovil .nav-item{
	  	background-color: #5D7179;
	  	border-bottom:1px solid black;
	}

	.menuMovil .nav-item a{
		font-weight: 100;
		font-size:20px;

	}

	.vistaVideo{
		height:950px;
	}

	.vistaVideo .container{
		transform:translate(0, 10%);
	}


	.filtroVideo{
		background: url(../img/fondo_movil.png);
		background-size:cover;
	}

	.filtroVideo::after{
		position:absolute;
		top:0;
		left:0;
		width:100%;
		height:100%;
		background:rgba(0,0,0,.5);
		content: "";
	}

	.faq .row div{
		display:none;
	}

	.contactenos .visitanos{
		margin-top:20px;
		transform:translate(0%,0%);
	}

	.ladoUsuarios{
		overflow-y:scroll;
	}

	.ladoUsuarios .btnRegresarMovil{
		position:relative;
	}

	.ladoUsuarios .redesSociales{
		left:50%;
		transform:translate(-50%, 0);
		bottom:0;
	}


}

/*=============================================
MOVIL VERTICAL (revisamos en 320px)
=============================================*/

@media (max-width:575px){

	header .ingresos button{
	 	margin-top:-10px;
	 	padding-bottom:0px;
	 }


	 header .ingresos button a{
	 	font-size:12px;
	 }

	 .menuMovil{		
	 	position:fixed;
	 	top:0;
	 	left:0;
	 	width:100%;
	 	height:100%;
	 	background:black;
	 	z-index:2;
	 }

	.menuMovil .nav-item{
	  	background-color: #5D7179;
	  	border-bottom:1px solid black;
	}

	.menuMovil .nav-item a{
		font-weight: 100;
		font-size:20px;

	}

	.vistaVideo{
		height:920px;
	}

	.vistaVideo .container{
		transform:translate(0, 8%);
	}

	.vistaVideo .container h1{
		font-size:25px !important;
	}

	.filtroVideo{
		background: url(../img/fondo_movil.png);
		background-size:cover;
	}

	.filtroVideo::after{
		position:absolute;
		top:0;
		left:0;
		width:100%;
		height:100%;
		background:rgba(0,0,0,.5);
		content: "";
	}

	.faq .row div{
		display:none;
	}

	.contactenos .visitanos{
		margin-top:20px;
		transform:translate(0%,0%);
	}

	.ladoUsuarios{
		overflow-y:scroll;
	}

	.ladoUsuarios .btnRegresarMovil{
		position:relative;
	}

	.ladoUsuarios .redesSociales{
		left:50%;
		transform:translate(-50%, 0);
		bottom:0;
	}

}

</style>

	<!--=====================================
	VÍNCULOS JAVASCRIPT
	======================================-->

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<!-- https://easings.net/es# -->
	<script src="js/plugins/jquery.easing.js"></script>

	<!-- https://markgoodyear.com/labs/scrollup/ -->
	<script src="js/plugins/scrollUP.js"></script>

	<!-- https://www.jqueryscript.net/loading/Handle-Loading-Progress-jQuery-Nite-Preloader.html -->
	<script src="js/plugins/jquery.nite.preloader.js"></script>

</head>

<body class="ladoUsuarios">

<div class="container-fluid">
	
	<div class="row">
		
		<div class="col-12 col-lg-4">

			<figure class="p-2 p-sm-5 p-lg-2 p-xl-3 text-center">
			
				<a href="index.html"><img src="img/logo-positivo.png" class="img-fluid px-5"></a>

				<form class="mt-3 px-4">

					<div class="d-flex justify-content-between">
					
						<h4>Regístrate al sistema</h4>

						<div class="dropdown text-right">

							<button type="button" class="btn btn-light btn-sm dropdown-toggle border" data-toggle="dropdown">
							ES
							</button>

							<div class="dropdown-menu">

								<a class="dropdown-item" href="#">EN</a>

							</div>

						</div>

					</div>

					<p class="text-center py-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi sunt officia unde officiis</p>

					<input type="text" class="form-control my-3 py-3" placeholder="Nombre">

					<input type="email" class="form-control my-3 py-3" placeholder="Correo Electrónico">

					<input type="password" class="form-control my-3 py-3" placeholder="Contraseña">

					<div class="form-check-inline text-right">
						
						<input type="checkbox" id="terminos" class="form-check-input">

						<label class="form-check-label" for="terminos">
						Para registrarse debe aceptar los términos y condiciones <span></span>
						</label>

					</div>

					<input type="submit" class="form-control my-3 py-3 btn btn-info" value="Registrarse">

					<p class="text-center py-3">¿Ya tienes una cuenta? | <a href="ingreso.html">Ingresar</a></p>

				</form>

			</figure>

		</div>

		<div class="col-12 col-lg-8 fotoRegistro text-center">		

			<a href="index.html"><button class="d-none d-lg-block text-center btn btn-default btn-lg my-3 text-white btnRegresar">Regresar</button></a>

			<a href="index.html"><button class="d-block d-lg-none text-center btn btn-default btn-lg btn-block my-3 text-white btnRegresarMovil">Regresar</button></a>

			<ul class="p-0 m-0 py-4 d-flex justify-content-center redesSociales">

				<li>
					<a href="#" target="_blank"><i class="fab fa-facebook-f lead text-white mx-4"></i></a>
				</li>

				<li>
					<a href="#" target="_blank"><i class="fab fa-instagram lead text-white mx-4"></i></a>
				</li>	

				
				<li>
					<a href="#" target="_blank"><i class="fab fa-linkedin lead text-white mx-4"></i></a>
				</li>

				<li>
					<a href="#" target="_blank"><i class="fab fa-twitter lead text-white mx-4"></i></a>
				</li>

				<li>
					<a href="#" target="_blank"><i class="fab fa-youtube lead text-white mx-4"></i></a>
				</li>

			</ul>

		</div>

	</div>

</div>

</body>
</html>