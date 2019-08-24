<?php

class Slide{

	public function seleccionarSlideController(){

		$respuesta = SlideModels::seleccionarSlideModel("slidedistribuidor");

		foreach ($respuesta as $row => $item){

			echo ' <li>
	           	   	<img src="../backend2/vis'.substr($item["ruta"], 6).'">
	           	   	<div class="slideCaption">
	           	   		<h3>'.$item["titulo"].'</h3>
			   	   		<p>'.$item["descripcion"].'</p>
	           	   	</div>
	               </li>';

		}

	}
}