/*=============================================
SLIDE            
=============================================*/
var numeroSlide = 1;
var formatearLoop = false;
var cantidadImg = $("#slidedistribuidor ul li").length;

$("#slidedistribuidor ul").css({"width": (cantidadImg*100) + "%"})
$("#slidedistribuidor ul li").css({"width": (100/cantidadImg) + "%"})

/* INDICADORES */

for(var i= 0; i < cantidadImg; i++){

	$("#indicadores").append('<li role-slide="'+(i+1)+'"><span class="fa fa-circle"></span></li>');

}


$("#indicadores li").click(function(){

	 var roleSlide = $(this).attr("role-slide");
			
	 $("#v ul li").css({"display":"none"});
			
	 $("#slidedistribuidor ul li:nth-child("+roleSlide+")").fadeIn();
			
	 $("#indicadores li").css({"opacity":".5"});
			
	 $("#indicadores li:nth-child("+roleSlide+")").css({"opacity":"1"});

	 formatearLoop = true;

	numeroSlide = roleSlide;

})

/* FLECHA AVANZAR */

function avanzar(){

	if(numeroSlide >= cantidadImg){numeroSlide = 1;}

	else{numeroSlide++}

	$("#slidedistribuidor ul li").css({"display":"none"});
			
	$("#slidedistribuidor ul li:nth-child("+numeroSlide+")").fadeIn();
			
	$("#indicadores li").css({"opacity":".5"});
			
	$("#indicadores li:nth-child("+numeroSlide+")").css({"opacity":"1"});
}


$("#slideDer").click(function(){

	avanzar();

	formatearLoop = true;

})

/* FLECHA RETROCEDER */

$("#slideIzq").click(function(){

	if(numeroSlide <= 1){numeroSlide = cantidadImg;}

	else{numeroSlide--}


	$("#slidedistribuidor ul li").css({"display":"none"});
			
	$("#slidedistribuidor ul li:nth-child("+numeroSlide+")").fadeIn();
			
	$("#indicadores li").css({"opacity":".5"});
			
	$("#indicadores li:nth-child("+numeroSlide+")").css({"opacity":"1"});

	formatearLoop = true;

})

/* LOOP */

setInterval(function(){

	if(formatearLoop == true){

		formatearLoop = false;
	}

	else{

	avanzar();

	}

},5000);

/*=====  Fin de SLIDE  ======*/
