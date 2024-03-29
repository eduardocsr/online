<?php  

/*===========================================================================
=            Requerimos la plantilla.controlador y instanciamos la clase controlador plantilla            =
===========================================================================*/
require_once"controladores/plantilla.controlador.php";
require_once"controladores/productos.controlador.php";
require_once"controladores/slide.controlador.php";
require_once"controladores/usuarios.controlador.php";
require_once"controladores/carrito.controlador.php";
require_once"controladores/visitas.controlador.php";
require_once"controladores/gestorslide.php";
require_once"controladores/gestorMensajes.php";
require_once"modelos/gestorMensajes.php";
require_once"modelos/slide.modelo.php";
require_once"modelos/plantilla.modelo.php";
require_once"modelos/productos.modelo.php";
require_once"modelos/usuarios.modelo.php";
require_once"modelos/carrito.modelo.php";
require_once"modelos/gestorslide.php";
require_once"modelos/visitas.modelo.php";
require_once"modelos/rutas.php";
require_once "extensiones/PHPMailer/PHPMailerAutoload.php";
require_once "extensiones3/vendor/autoload.php";
require_once "extensiones/vendor/autoload.php";
$plantilla= new ControladorPlantilla();
$plantilla->plantilla();//Ejecutamos el metodo plantilla


/*=====  End of Requerimos la plantilla.controlador y instanciamos   ======*/

