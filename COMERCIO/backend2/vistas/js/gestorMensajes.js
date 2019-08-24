/*=============================================
Mostrar Mensajes
=============================================*/

$(".leerMensaje").click(function(){

	id = $(this).parents("td").next().text();

  fecha = $(this).parents("td").siblings(".fecha").text();
   nombre = $(this).parents("td").siblings(".nombre").text();
      email = $(this).parents("td").siblings(".email").text();
        mensaje = $(this).parents("td").siblings(".mensaje").text();
  console.log("fecha", fecha);
	console.log("id", id);


	$("#visorMensajes").html('<div style="background:#fff" class="well well-sm"><h4>:'+nombre+'</h4><hr><h5>Email :'+email+'</h5><hr><h5>Mensaje :'+mensaje+'</h5><hr><button class="btn btn-info btn-lg responderMensaje">Responder</button></div>');

	$(".responderMensaje").click(function(){

		enviarEmail = $(this).parent().children("h5").html();
		enviarNombre = $(this).parent().children("h4").html();

		$("#visorMensajes").html(' <div class="box box-info"><div class="box-header"><i class="fa fa-envelope"></i><h3 class="box-title">Enviar mensaje</h3><div class="pull-right box-tools"><button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button></div></div><div class="box-body"><form method="post"><p>Para: <input type="email" value="'+enviarEmail+'" name="enviarEmail" readonly style="border:0;color="red"><hr><input type="hidden" value="'+enviarNombre+'" name="enviarNombre"></p><input type="text" name="enviarTitulo" placeholder="Título del Mensaje" class="form-control"><textarea name="enviarMensaje" cols="30" rows="5" placeholder="Escribe tu mensaje..." class="form-control"></textarea><input type="submit" class="form-control btn btn-primary" value="Enviar"></form></div></div></section</div></section></div>');

	});

})





























/*=============================================
Enviar Correo Masivo
=============================================*/

$("#enviarCorreoMasivo").click(function(){

	$("#visorMensajes").html('<form method="post"><p>Para: Todos los Suscriptores</p><input type="text" placeholder="Título del Mensaje" class="form-control" name="tituloMasivo"><textarea name="mensajeMasivo" cols="30" rows="5" placeholder="Escribe tu mensaje..." class="form-control"></textarea><input type="submit" class="form-control btn btn-primary" value="Enviar"></form>');


})


$("#tablaSuscriptores").DataTable({
	
	 "deferRender": true,
	 "retrieve": true,
	 "processing": true,
	 "language": {

	 	"sProcessing":     "Procesando...",
		"sLengthMenu":     "Mostrar _MENU_ registros",
		"sZeroRecords":    "No se encontraron resultados",
		"sEmptyTable":     "Ningún dato disponible en esta tabla",
		"sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
		"sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0",
		"sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
		"sInfoPostFix":    "",
		"sSearch":         "Buscar:",
		"sUrl":            "",
		"sInfoThousands":  ",",
		"sLoadingRecords": "Cargando...",
		"oPaginate": {
			"sFirst":    "Primero",
			"sLast":     "Último",
			"sNext":     "Siguiente",
			"sPrevious": "Anterior"
		},
		"oAria": {
				"sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
				"sSortDescending": ": Activar para ordenar la columna de manera descendente"
		}

	 }


});

$(".tablamensajes").DataTable({
	
	 "deferRender": true,
	 "retrieve": true,
	 "processing": true,
	 "language": {

	 	"sProcessing":     "Procesando...",
		"sLengthMenu":     "Mostrar _MENU_ registros",
		"sZeroRecords":    "No se encontraron resultados",
		"sEmptyTable":     "Ningún dato disponible en esta tabla",
		"sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
		"sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0",
		"sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
		"sInfoPostFix":    "",
		"sSearch":         "Buscar:",
		"sUrl":            "",
		"sInfoThousands":  ",",
		"sLoadingRecords": "Cargando...",
		"oPaginate": {
			"sFirst":    "Primero",
			"sLast":     "Último",
			"sNext":     "Siguiente",
			"sPrevious": "Anterior"
		},
		"oAria": {
				"sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
				"sSortDescending": ": Activar para ordenar la columna de manera descendente"
		}

	 }


});


