<?php

require_once "../controladores/gestorMensajes.php";
require_once "../modelos/gestorMensajes.php";

require_once "../controladores/gestorSuscriptores.php";
require_once "../modelos/gestorSuscriptores.php";

#CLASE Y MÉTODOS
#-------------------------------------------------------------
class Ajax{

	#REVISAR MENSAJES
	#----------------------------------------------------------
	public $revisionMensajes;

	public function gestorRevisionMensajesAjax(){

		$datos = $this->revisionMensajes;

		$respuesta = MensajesController::mensajesRevisadosController($datos);

		echo $respuesta;

	}

	#REVISAR SUSCRIPTORES
	#----------------------------------------------------------

	public $revisionSuscriptores;

	public function gestorRevisionSuscriptoresAjax(){

		$datos = $this->revisionSuscriptores;

		$respuesta = SuscriptoresController::suscriptoresRevisadosController($datos);

		echo $respuesta;

	}

}

#OBJETOS
#-----------------------------------------------------------
if(isset($_POST["revisionMensajes"])){

	$a = new Ajax();
	$a -> revisionMensajes = $_POST["revisionMensajes"];
	$a -> gestorRevisionMensajesAjax();

}

if(isset($_POST["revisionSuscriptores"])){

	$b = new Ajax();
	$b -> revisionSuscriptores = $_POST["revisionSuscriptores"];
	$b -> gestorRevisionSuscriptoresAjax();

}
