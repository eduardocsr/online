var btnAbrirPopup = document.getElementById('btn-abrir-popup'),
	overlay = document.getElementById('overlay'),
	popup = document.getElementById('popup'),
	btnCerrarPopup = document.getElementById('btn-cerrar-popup');

btnAbrirPopup.addEventListener('click', function(){
	overlay.classList.add('active');
	popup.classList.add('active');
});

btnCerrarPopup.addEventListener('click', function(e){
	e.preventDefault();
	overlay.classList.remove('active');
	popup.classList.remove('active');
});


/*=============================================
=            CABEZOTE            =
=============================================*/
$("#btnCategorias").click(function(){

	if (window.matchMedia("(max-width:767px)").matches){
       $("#btnCategorias").after($("#categorias").slideToggle("fast"))
	} else{
		 $("#cabezote").after($("#categorias").slideToggle("fast"))
	}

	
})

/*=============================================
LIMPIAR CASILLA EMAIL PARA EL REGISTRO
=============================================*/

$("[href='modalRegistro']").click(function(){

	$("#modalRegistro input[type='email']").val("");
})



/*=============================================
VISUALIZACION DE CONTRASEÑA  PARA EL NGRESO
=============================================*/
var ingPassword=document.getElementById('ingPassword')
var ojoingreso=document.getElementById('ojoingreso')
ojoingreso.addEventListener('click',togglePass);
function togglePass(){

  ojoingreso.classList.toggle('active');
  (ingPassword.type=='password')?ingPassword.type='text':ingPassword.type='password';
}


