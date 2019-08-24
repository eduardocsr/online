<!DOCTYPE html>
<html>
<head>
	<title></title>
	
</head>
<body>

</body>
</html>
	
<?php

$servidor = Ruta::ctrRutaServidor();
$url=Ruta::ctrRuta();


/*=============================================
INICIO DE SESIÓN USUARIO
=============================================*/

if(isset($_SESSION["validarSesion"])){

	if($_SESSION["validarSesion"] == "ok"){

		echo '<script>
		
			localStorage.setItem("usuario","'.$_SESSION["id"].'");

		</script>';

	}

}
/*=============================================
API DE GOOGLE
=============================================*/

// https://console.developers.google.com/apis
// https://github.com/google/google-api-php-client

/*=============================================
CREAR EL OBJETO DE LA API GOOGLE
=============================================*/

$cliente = new Google_Client();
$cliente->setAuthConfig('modelos/client_secret.json');
$cliente->setAccessType("offline");
$cliente->setScopes(['profile','email']);

/*=============================================
RUTA PARA EL LOGIN DE GOOGLE
=============================================*/

$rutaGoogle = $cliente->createAuthUrl();

/*=============================================
RECIBIMOS LA VARIABLE GET DE GOOGLE LLAMADA CODE
=============================================*/

if(isset($_GET["code"])){

	$token = $cliente->authenticate($_GET["code"]);

	$_SESSION['id_token_google'] = $token;

	$cliente->setAccessToken($token);

}


/*=============================================
RECIBIMOS LOS DATOS CIFRADOS DE GOOGLE EN UN ARRAY
=============================================*/

if($cliente->getAccessToken()){

 	$item = $cliente->verifyIdToken();

 	$datos = array("nombre"=>$item["name"],
				   "email"=>$item["email"],
				   "foto"=>$item["picture"],
				   "password"=>"null",
				   "modo"=>"google",
				   "verificacion"=>0,
				   "emailEncriptado"=>"null");

 	$respuesta = ControladorUsuarios::ctrRegistroRedesSociales($datos);
if ($respuesta=="<span style='color:write'>ok</span>") {

 	echo '<script>
		
	setTimeout(function(){

		window.location = localStorage.getItem("rutaActual");

	},1000);

 	</script>';

}
}

?>


<div class="header barraSuperior" id="">
	<div class="container">
		<ul>
		    <?php

				if(isset($_SESSION["validarSesion"])){

					if($_SESSION["validarSesion"] == "ok"){

						if($_SESSION["modo"] == "directo"){

							if($_SESSION["foto"] != ""){

								echo '<li>

										<img class="img-circle" src="'.$url.$_SESSION["foto"].'" width="10%">

									 </li>';

							}else{

								echo '<li>

									<img class="img-circle" src="'.$servidor.'vistas/img/usuarios/default/anonymous.png" width="10%">

								</li>';

							}

							echo '
							 <li><a href="'.$url.'perfil">Ver Perfil  </a>|<a href="'.$url.'salir">  Salir</a></li>
							
							';


						}

						if($_SESSION["modo"] == "facebook"){

							echo '<li>

									<img class="img-circle" src="'.$_SESSION["foto"].'" width="10%">

								   </li>
								  
						 		 <li><a href="'.$url.'perfil">Ver Perfil  </a>|<a href="'.$url.'salir">  Salir</a></li>';

						}

						if($_SESSION["modo"] == "google"){

							echo '<li>

									<img class="img-circle" src="'.$_SESSION["foto"].'" width="10%">

								   </li>
								   <li><a href="'.$url.'perfil">Ver Perfil  </a>|<a href="'.$url.'salir">  Salir</a></li>';

						}

					}

				}else{

					echo '<li> <a href="#modalIngreso" data-toggle="modal">
		    	<i class="fa fa-unlock-alt" aria-hidden="true"></i>
		    Iniciar Sección</a></li>
			<li> <a  href="#modalRegistro" data-toggle="modal" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Registrarse</a></li>';
                    }

					 ?>
			<li><i class="fa fa-phone" aria-hidden="true"></i><a href="tel:+51978883960">97883960</a></li>
			<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">info@example.com</a></li>

		</ul>
	</div>
</div>



<div class="header-bot">
	<div class="header-bot_inner_wthreeinfo_header_mid">
			<?php 
$social = ControladorPlantilla::ctrEstiloPlantilla();
		 ?>

		<center>
			<div class="col-lg-4 col-md-4 col col-sm-4 logo_agile" id="logotipo">
				
				<a href="<?php echo $url; ?>">
					
                       		<img src="<?php echo $servidor.$social["logo"];?> "class="img-responsive aumento_logo fa fa-shopping-bag top_logo_agile_bag" >
                     
                       	</a>

			</div>
				</center>
                       	  	
		<div class="col-md-4 header-middle">

<!-- <div class=" form-search content-search navbar-form">
    <div class=" input-group  col-lg-11 col-md-10  col-sm-8 col-xs-12" id="buscador">
        <input height="100" placeholder="Buscar" class="form-control form-text agrandar" type="search"  name="buscar" size="15" maxlength="128" />
        <span class="input-group-btn">
        		<a href="<?php echo $url; ?>buscador/1/recientes">
            <button type="submit" class="btn btn-primary agrandar">
           <span class="icon glyphicon glyphicon-search" aria-hidden="true"></span>
            </button>
            </a>
        </span>
    </div>
</div> -->
	
	<!-- 	    	<div id=" siq_searchForm" class="input-group  col-lg-11 col-md-10  col-sm-8 col-xs-12" >
					
					<input type="search" value=""   class="form-control agrandar" name="s" placeholder="Buscar...">	

					<span class="input-group-btn">
						
						<a href="<?php echo $url; ?>buscador/1/recientes">

							<button class="btn btn-default backColor agrandar" type="submit">
								
								<i class="fa fa-search"></i>

							</button>

						</a>

					</span>

				</div> -->


<!-- <div id="siq_search_results"></div> -->

			
		    	<div  class="input-group  col-lg-11 col-md-12  col-sm-8 col-xs-12" id="buscador">
					
					<input  type="search" name="buscar" class="form-control agrandar" placeholder="Buscar...">	

					<span class="input-group-btn">
						
						<a href="<?php echo $url; ?>buscador/1/recientes">

							<button class="btn btn-default backColor agrandar" type="submit">
								
								<i class="fa fa-search"></i>

							</button>

						</a>

					</span>

				</div>
				
					
				
				</div>


		</div>

        <!-- header-bot -->
		<div class="col-md-3 agileits-social top_content social">
				<!-- SELECCIÓN DE IDIOMA -->

				<ul class="social-nav  footer-social ">	
					 <li class="share">Comparte en:</li>

					<?php

				

					$jsonRedesSociales = json_decode($social["redesSociales"],true);		
 
					foreach ($jsonRedesSociales as $key => $value) {
						if ($value["activo"]!=0) {
							echo '
               
						<li>
								<a href="'.$value["url"].'" target="_blank">
									<i class="fa '.$value["red"].' redSocial '.$value["estilo"].'" aria-hidden="true"></i>
								</a>
							</li>';
						}

						
					}

					?>


						
				<!-- <span class="border border-info float-left p-1 bg-info text-white idiomaEs">ES</span>

				<span class="border border-info float-left p-1 bg-white text-dark idiomaEn">EN</span>		 -->

				
		



				</ul>

			</div>


	
		<div class="clearfix"></div>
	</div>
	
</div>

<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav menu__list">



				  				<li class="dropdown menu__item">
						<a style="" href="#" class="dropdown-toggle menu__link cambiarcolor" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Categorias<span class="caret"></span></a>
   
							<ul class="dropdown-menu  columns-3">
								<div class="agile_inner_drop_nav_info">
									              <!--=====================================
			  =          Header          =
			  ======================================-->
			 
              <header class="" >

              	<div class="">

              		<div class="row" id="cabezote">
              		
                  
              		  <!--=====================================
					  =        CATEGORIAS =
					  ======================================-->
					  <div  class="col-xs-12  " id="categorias">

					  	<?php

						$item = null;
						$valor = null;

						$categorias = ControladorProductos::ctrMostrarCategorias($item, $valor);
                       

						foreach ($categorias as $key => $value) {

if ($value["estado"]!=0) {

							echo '<div class="col-lg-2 col-md-3 col-sm-4 col-xs-12">

											
									<h4 class="CambioColor"> 
										<a  href="'.$url.$value["ruta"].'" class="pixelCategorias" titulo="'.$value["categoria"].'">'.$value["categoria"].'</a>
									</h4>
									
									<hr>

									<ul>';

									$item = "id_categoria";

									$valor = $value["id"];

									$subcategorias = ControladorProductos::ctrMostrarSubCategorias($item, $valor);
									
									foreach ($subcategorias as $key => $value) {
											if ($value["estado"]!=0) {
												# code...
											
											echo '<li " id="primero">
											<a href="'.$url.$value["ruta"].'"  class="pixelSubCategorias border2 " titulo="'.$value["subcategoria"].'">'.$value["subcategoria"].'</a><br>


                                                  <div class="primero">
                                                   <a href="'.$url.$value["ruta"].'" >
                                                  <img  class="border"width="130" height="130" src="'.$servidor.$value["subimg"].'">
                                                   </a>
                                                  </div>

											</li>';
										}
										}	
										
									echo '</ul>

								</div>';
							}
						 }

			          ?>	



					  </div>
		
					  
              		
              	</div>
              		</div>
              	  
              </header>

								
								</div>
							</ul>
					</li>
				  	
				
					
		<li class="dropdown menu__item">
						<a style="" href="<?php echo $url.'comprobante';?> " class="dropdown-toggle menu__link cambiarcolor" >comprobante<span class=""></span></a>
						
					</li>
				  </ul>
				</div>

			  </div>

			</nav>	

		</div>



                
                    <div  class="submenu">
                         <a class="carro" href="<?php 	echo $url; ?>carrito-de-compras">
                            <img width="35" src="vistas/img/plantilla/icono2.png" id="img-carrito">
                            </a>
                            <div id="carrito" >
                                
			<!--=====================================
			CABECERA CARRITO DE COMPRAS
			======================================-->
 <table  id="lista-carrito" class="u-full-width">
                                        <thead ><br>
                                            <tr >
                                                <th style="width:100px; text-align: center;">Imagen</th>
                                                <th style="width:190px; text-align: ;">Producto</th>
                                                <th >Precio</th>
                                        
                                                <th></th>
                                            </tr>
                                        </thead>
                                       
                                    </table>			<!--=====================================
			CUERPO CARRITO DE COMPRAS
			======================================-->

			<div class="panel-body cuerpoCarrito2">
			</div>

			<!--=====================================
			SUMA DEL TOTAL DE PRODUCTOS
			======================================-->
	</div>
                          
                 
            </div>
		






	</div>

</div>

<!--=====================================
TOP
======================================-->


	


<!--====  End of TOP   ====-->




	
              
 <!-- Modal -->
  <div class="modal fade modalFormulario" id="modalRegistro" role="dialog">
    <div class="modal-content modal-dialog ">
  
        <div class="modal-body modalTitulo">
        	<h3 class="">REGISTRARSE</h3>
        	<button style="color: red; text-align: 30px;" type="button" class="close" data-dismiss="modal">&times;</button>
        	 <!--=====================================
				REGISTRO FACEBOOK
			 ======================================-->
			   <div class="col-sm-6 col-xs-12 facebook2" >
            	

            	<p>
            		Por tu primera compra el envio es gratis registrate y disfruta.
            	</p>
            </div>


            <div class="col-sm-6 col-xs-12 facebook" >
            	

            	<p>
            		<i class="fa fa-facebook"></i>
            		Registro con facebook
            	</p>
            </div>



			 <!--=====================================
				REGISTRO GOOGLE
			 ======================================-->
<a href="<?php echo $rutaGoogle;?>">
			 <div class="col-sm-6 col-xs-12 google" >
            	

            	<p>
            		<i class="fa fa-google"></i>
            		Registro con google
            	</p>
            </div>
</a>
            			<!--=====================================
			REGISTRO DIRECTO
			======================================-->

			<form method="post" onsubmit="return registroUsuario()">
				
			<hr>

				<div class="form-group">
					
					<div class="input-group">
						
						<span class="input-group-addon">
							
							<i class="glyphicon glyphicon-user"></i>
						
						</span>

						<input type="text" class="form-control text-uppercase" id="regUsuario" name="regUsuario" placeholder="Nombre Completo " required pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ]+">

					</div>

				</div>

				<div class="form-group">
					
					<div class="input-group">
						
						<span class="input-group-addon">
							
							<i class="glyphicon glyphicon-envelope"></i>
						
						</span>

						<input type="email" class="form-control" id="regEmail" name="regEmail" required placeholder="CORREO ELECTRÓNICO" >


					</div>

				</div>

				

				<div class="form-group">
					
					<div class="input-group">
						
						<span class="input-group-addon">
							
							<i class="glyphicon glyphicon-lock"></i>
							
						
						</span>
						

						<input type="password" class="form-control" id="regPassword" name="regPassword" placeholder="CONTRASEÑA (SOLO LETRAS Y NÚMEROS)" required pattern="[A-Za-z0-9]+">
                     <span class="input-group-addon color">
							
							
							<i class=" fa fa-eye fas" id="ojo" ></i>
						
						</span>
					</div>


				</div>

				
				
				
				<div class="checkBox">
					
					<label>
						
						<input id="regPoliticas" type="checkbox">
					
							<small>
								
								Al registrarse, usted acepta nuestras condiciones de uso y políticas de privacidad

								<br>

								<a href="https://www.iubenda.com/privacy-policy/68478526" class="iubenda-white iubenda-embed" title="Privacy Policy ">Leer más</a><script type="text/javascript">(function (w,d) {var loader = function () {var s = d.createElement("script"), tag = d.getElementsByTagName("script")[0]; s.src="https://cdn.iubenda.com/iubenda.js"; tag.parentNode.insertBefore(s,tag);}; if(w.addEventListener){w.addEventListener("load", loader, false);}else if(w.attachEvent){w.attachEvent("onload", loader);}else{w.onload = loader;}})(window, document);</script>

							</small>

					</label>

				</div>
				<?php 

                   $registro=new ControladorUsuarios();
                   $registro->ctrRegistroUsuario();
				 ?>

				<input type="submit" class="btn btn-default  btn-block" value="ENVIAR">	

			</form>

         
        </div>
        <div class="modal-footer">
          	¿Ya tienes una cuenta registrada? | <strong><a href="#modalIngreso" data-dismiss="modal" data-toggle="modal">Ingresar</a></strong>
        </div>
    
      
    </div>
  </div>
  


<!--=====================================
	VENTANA MODAL PARA EL INGRESO
 ======================================-->


    <div class="modal fade modalFormulario" id="modalIngreso" role="dialog">
    <div class="modal-content modal-dialog ">
  
        <div class="modal-body modalTitulo">
        	<h3 class="">INICIAR SECCIÓN AHORA</h3>
        	<button style="color: blue;" type="button" class="close" data-dismiss="modal">&times;</button>
        	 <!--=====================================
				INGRESO FACEBOOK
			 ======================================-->

            <div class="col-sm-6 col-xs-12 facebook" >
            	

            	<p>
            		<i class="fa fa-facebook"></i>
            		Registro con facebook
            	</p>
            </div>



			 <!--=====================================
				INGRESO GOOGLE
			 ======================================-->
<a href="<?php echo $rutaGoogle;?>">
			 <div class="col-sm-6 col-xs-12 google" >
            	

            	<p>
            		<i class="fa fa-google"></i>
            		Registro con google
            	</p>
            </div>
        </a>

            			<!--=====================================
			INGRESO DIRECTO
			======================================-->

			<form method="post" ">
				
			<hr>

				

				<div class="form-group">
					
					<div class="input-group">
						
						<span class="input-group-addon">
							
							<i class="glyphicon glyphicon-envelope"></i>
						
						</span>

						<input type="email" class="form-control confirmar" id="ingEmail" name="ingEmail" required placeholder="CORREO ELECTRÓNICO" >


					</div>

				</div>

				<div class="form-group">
					
					<div class="input-group">
						
						<span class="input-group-addon">
							
							<i class="glyphicon glyphicon-lock"></i>
							
						
						</span>
						

						<input type="password" class="form-control " id="ingPassword" name="ingPassword" placeholder="CONTRASEÑA (SOLO LETRAS Y NÚMEROS)" required pattern="[A-Za-z0-9]+">
                     <span class="input-group-addon color">
							
							
							<i class=" fa fa-eye fas" id="ojoingreso" ></i>
						
						</span>
					</div>


				</div>

				
				
				
			
				<?php 

                   $ingreso=new ControladorUsuarios();
                   $ingreso->ctrIngresoUsuario();
				 ?>

				<input type="submit" class="btn btn-default  btn-block btnIngreso" value="ENVIAR">	<br>

				<center>
					<a href="#modalPassword" data-dismiss="modal" data-toggle="modal">¿Olvidaste tu contraseña?</a>
				</center>

			</form>

         
        </div>
        <div class="modal-footer">
          	¿No  tienes una cuenta registrada? | <strong><a href="#modalRegistro" data-dismiss="modal" data-toggle="modal">Registrarse</a></strong>
        </div>
    
      
    </div>
  </div>

  <!--=====================================
VENTANA MODAL PARA OLVIDO DE CONTRASEÑA
======================================-->

<div class="modal fade modalFormulario" id="modalPassword" role="dialog">

    <div class="modal-content modal-dialog">

        <div class="modal-body modalTitulo">

        	<h3 class="">SOLICITUD DE NUEVA CONTRASEÑA</h3>

           <button type="button" class="close" data-dismiss="modal">&times;</button>
        	
			<!--=====================================
			OLVIDO CONTRASEÑA
			======================================-->

			<form method="post">

				<label class="text-muted">Escribe el correo electrónico con el que estás registrado y allí te enviaremos una nueva contraseña:</label>

				<div class="form-group">
					
					<div class="input-group">
						
						<span class="input-group-addon">
							
							<i class="glyphicon glyphicon-envelope"></i>
						
						</span>
					
						<input type="email" class="form-control input-lg" id="passEmail" name="passEmail" placeholder="Correo Electrónico" required>

					</div>

				</div>			
                <?php 

                   $password=new ControladorUsuarios();
                   $password->ctrOlvidoPassword();
				 ?>
				
				
				<input  type="submit" class="btn btn-default  btn-block dos" value="ENVIAR">	

			</form>

        </div>

        <div class="modal-footer">
          
			¿No tienes una cuenta registrada? | <strong><a href="#modalRegistro" data-dismiss="modal" data-toggle="modal">Registrarse</a></strong>

        </div>
      
    </div>

</div>

