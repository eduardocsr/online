

/*=============================================
/*=============================================
/*=============================================
/*=============================================
/*=============================================
VISUALIZAR LA CESTA DEL CARRITO DE COMPRAS
=============================================*/

if(localStorage.getItem("cantidadCesta") != null){

	$(".cantidadCesta").html(localStorage.getItem("cantidadCesta"));
	$(".sumaCesta").html(localStorage.getItem("sumaCesta"));

}else{

	$(".cantidadCesta").html("0");
	$(".sumaCesta").html("0");
}

/*=============================================
/*=============================================
/*=============================================
/*=============================================
/*=============================================
VISUALIZAR LOS PRODUCTOS EN LA PÁGINA CARRITO DE COMPRAS
=============================================*/

if(localStorage.getItem("listarProductos") != null){

	var listaCarrito = JSON.parse(localStorage.getItem("listarProductos"));

	listaCarrito.forEach(funcionForEach);

	function funcionForEach(item, index){

		var datosProducto = new FormData();
		var precio = 0;

		datosProducto.append("id", item.idProducto);

		$.ajax({

			url:rutaOculta+"ajax/producto.ajax.php",
			method:"POST",
			data: datosProducto,
			cache: false,
			contentType: false,
			processData:false,
			dataType: "json",
			success: function(respuesta){
	
				if(respuesta["precioOferta"] == 0){

					precio = respuesta["precio"];

				}else{

					precio = respuesta["precioOferta"];
					
				}

				$(".cuerpoCarrito2").append(

                ' <table  id="lista-carrito" class="u-full-width">'+
            	
                                       
                                      ' <tbody>'+
                                           ' <tr>'+
                                              '  <td style="width:60px; >'+
                       	'<div class="col-sm-3 col-xs-12">'+
							
							'<figure>'+
								
								'<img src="'+item.imagen+'" class="img-thumbnail">'+

							'</figure>'+

						'</div>'+

                                             '   </td>'+
                                             '   <td style="width:180px;>'+



							'<br>'+

							'<h6 style="color:red;" class="tituloCarritoCompra text-left">'+item.titulo+'</h6>'+

			


                                            ' </td>'+
                                                '<td style="width:80px;>'+
'<h6 style="color:red;"class="precioCarritoCompra text-center">USD $<span>'+precio+'</span></h6>'+

                                               ' </td>'+
                                             '   <td>'+
                                             '<button class="btn btn-default backColor quitarItemCarrito" idProducto="'+item.idProducto+'" peso="'+item.peso+'">'+
									'<i class="fa fa-times"></i>'+
                                            ' </td>'+
                                          '  </tr>'+
                                      
                                       ' </tbody>'+
                                  '  </table>'+


					'<div class="clearfix"></div>'+

					'<hr>');

				/*=============================================
				EVITAR MANIPULAR LA CANTIDAD EN PRODUCTOS VIRTUALES
				=============================================*/

				$(".cantidadItem[tipo='virtual']").attr("readonly","true");

				// /*=============================================
				// /*=============================================
				// /*=============================================
				// /*=============================================
				// /*=============================================
				// ACTUALIZAR SUBTOTAL
				// =============================================*/
				var precioCarritoCompra = $(".cuerpoCarrito2 .precioCarritoCompra span");

				cestaCarrito(precioCarritoCompra.length);
sumaSubtotales();	

					
			
			}

		})	

	}		

}else{

	$(".cuerpoCarrito2").html('<div class="well">Aún no hay productos en el carrito de compras.</div>');
	$(".sumaCarrito2").hide();
	$(".cabeceraCheckout").hide();
}

