!DOCTYPE html>
<html>
<head>
	<title></title>
<style> 

  @import url(https://fonts.googleapis.com/css?family=Open+Sans:600);
  

  
.text2{



 

    font-family: 'Open Sans', sans-serif;
  font-weight: 600;
  font-size: 55px;
}


p {
  display: inline-block;
  vertical-align: top;
  margin: 0;
}

.word {
  position: absolute;
  width: 350px;
  opacity: 0;
}

.letter {
  display: inline-block;
  position: relative;
  float: left;
  transform: translateZ(25px);
  transform-origin: 50% 50% 25px;
}

.letter.out {
  transform: rotateX(90deg);
  transition: transform 0.25s cubic-bezier(0.55, 0.055, 0.675, 0.19);
}

.letter.behind {
  transform: rotateX(-90deg);
}

.letter.in {
  transform: rotateX(0deg);
  transition: transform 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.wisteria {
  color: #E2D112;
}

.belize {
  color: #9FCFD2;
}

.pomegranate {
  color: #9A904A;
}

.green {
  color: #228F7A;
}

.midnight {
  color: #707F8D;
}


@media (max-width:1199px) and (min-width:992px){
  

.text2{
    font-family: 'Open Sans', sans-serif;
  font-weight: 600;
  font-size: 45px;
}

}
@media (max-width:991px) and (min-width:768px){
   .text2{
    font-family: 'Open Sans', sans-serif;
  font-weight: 600;
  font-size: 55px ;
}
.word {
  position: absolute;
  width: 300px;
  opacity: 0;
}



}

  
@media (max-width:767px){

  
  
   .text2{
    font-family: 'Open Sans', sans-serif;
  font-weight: 600;
  font-size: 25px ;
}
.word {
  position: absolute;
  width: 130px;
  opacity: 0;
}
}


</style>
</head>
<body>

	<!--

	<div class="contenedor">
		<article>
			
		 <a  class="btn-abrir-popup flotante  " id="btn-abrir-popup"> <i class="fa fa-question-circle"></i> ayuda</a>
		
		</article>
 
				<div class="overlay" id="overlay">
					<div class="popup" id="popup">
						<a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i  class="fa fa-times"></i></a>
						<h3>Tutorial</h3>
						<h4>No sabes como comprar en BANGUI</h4>
						<form action="">
							<div class="contenedor-inputs">
								<p>Visualiza este pequeño tutorial y ve lo facil que es</p>
								<h1><a target="_blank" href="http:/facebook.com">Tienda Bangui</a></h1>
							</div>
							
							<video width="350"  height="150" controls >
							  <source src="<?php// echo $url; ?>vistas/videos/Videocomercial.mp4" type="video/mp4" >
							  
							  
							</video>
							
						</form>
					</div>
				</div>
	</div>
	--><br>
<div class="container">
  <div class="row text2 ">
    <div class="col-md-4 "></div>
    
    <div class="col-md-2 col-sm-6 col-xs-6 text-right">  <p style="color: #53B1A5" class="texto2">BANGUI</p></div>
      <div class="col-md-1 col-sm-2 col-xs-2 text-center">
  
  <p>
    <span class="word wisteria">Diseño</span>
    <span class="word belize">Estampado.</span>
    <span class="word pomegranate">Corte.</span>
    <span class="word green">Acabado.</span>
    <span class="word midnight">Embalaje.</span>
     <span class="word green">Acabado.</span>
    <span class="word midnight">Confección.</span>
  </p>
</div>
  </div>

 
</div>



	
	
  <div class="container-fluid">
    
    <div class="row">

  <div id="slidedistribuidor" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

      <ul>

      <?php

        $slide = new Slide();
        $slide -> seleccionarSlideController();
      ?>

      </ul>

        <ol id="indicadores">     
        <!-- <li role-slide = "1"><span class="fa fa-circle"></span></li>
        <li role-slide = "2"><span class="fa fa-circle"></span></li>
        <li role-slide = "3"><span class="fa fa-circle"></span></li>
        <li role-slide = "4"><span class="fa fa-circle"></span></li> -->
      </ol>

      <div id="slideIzq"><span class="fa fa-chevron-left"></span></div>
      <div id="slideDer"><span class="fa fa-chevron-right"></span></div>

  </div>

</div>
  </div>


	<div style="background-color: #FFFFFF;" class="container-fluid ">
    <br> <br> <br> <br>
		<div class="jumbotron well imagen"><br>
			<center><h1>¿Quieres vender nuestra marca en tu tienda?</h1></center>
		<p>
Si tienes un comercio electronico, tienda física o eres el organizador de un evento al aire libre con stand en un festival de ropa,... y estas interesado en vender nuestra marca Bangui en tu establecimiento, la 1ª marca peruana , siempre bajo la mejor relación-calidad-precio.</p>
<p>
Estamos en proceso de expansión de la marca a nivel nacional e internacional, si quieres representar la marca de ropa de aventura con tecnologia anti mosquitos, estás delante de una buena oportunidad.</p>
</div>
	</div>

 
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home"><h4>Productos</h4></a></li>
    <li><a data-toggle="tab" href="#menu1"><h4> ¿Porque elegir nuestra marca?</h4></a></li>
    <li><a data-toggle="tab" href="#menu2"></a></li>
    <li><a data-toggle="tab" href="#menu3"></a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
     
                <div style="background-color: #FFFFFF;"  class="col-md-3 col-sm-3 "><br><br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner ">

      <div class="item active">
        <img class="img-thumbnail" src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(23).jpg" alt="Los Angeles" style="width:100%;">
       
      </div>

      <div class="item">
        <img class="img-thumbnail" src="https://e00-elmundo.uecdn.es/yodona/albumes/2012/09/21/tendencias_rojo/134823810903_extras_albumes_0_339.jpg" alt="Chicago" style="width:100%;">
      
      </div>
    
      <div class="item">
        <img class="img-thumbnail" src="https://www.vanityfairways.com.au/images/stories/virtuemart/product/NI9210130-BK.jpg" alt="New York" style="width:100%;">
     
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


   </div>




   <div style="background-color: #FFFFFF;" class="col-md-9 col-sm-12">    <h2 class="h2-responsive product-name">
              <strong style="color: #7F8789;">QUE PRODUCTOS OFRECEMOS</strong>
            </h2>
     <!--        <h4 class="h4-responsive">
              <span class="green-text">
                <strong style="color: #329599;">LOS MEJORES PRECIOS</strong>
              </span>
              <span class="grey-ext">
                <small>
                  <strong>EN BANGUI</strong>
                </small>
              </span>
            </h4> -->

      <div class="panel-group" id="accordion">
  <div class="panel panel-default ">
    <div class="panel-heading bg-warning">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
        Calzado para mujeres</a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse in">
      <div class="panel-body">
    <img  class="img-thumbnail"src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16654611_3.jpg" alt="New York" style="width:100px;">

<img class="img-thumbnail" src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16654611_4.jpg" alt="New York" style="width:100px;">
<img class="img-thumbnail"src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16654611_7.jpg" alt="New York" style="width:100px;">
  </div>
    </div>
  </div>
 <div class="panel panel-default ">
  <div class="panel-heading">
    <h4 class="panel-title">
      <a data-toggle="collapse" data-parent="" href="#collapse2">
      Pantalones</a>
    </h4>
  </div>
  <div id="collapse2" class="panel-collapse collapse">
    <div class="panel-body">    <img class="img-thumbnail" src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16405334_1.jpg" alt="New York" style="width:130px;">
<img class="img-thumbnail" src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16405334_3.jpg" alt="New York" style="width:130px;">
<img class="img-thumbnail" src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16405334_3.jpg" alt="New York" style="width:130px;">
<img class="img-thumbnail" src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16405334_4.jpg" alt="New York" style="width:130px;"></div>

  </div>
</div>
 <div class="panel panel-default ">
  <div class="panel-heading">
    <h4 class="panel-title">
      <a data-toggle="collapse" data-parent="" href="#collapse3">
      Blusas</a>
    </h4>
  </div>
  <div id="collapse3" class="panel-collapse collapse">
    <div class="panel-body">    <img class="img-thumbnail" src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16405334_1.jpg" alt="New York" style="width:130px;">
<img class="img-thumbnail" src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16405334_3.jpg" alt="New York" style="width:130px;">

<img class="img-thumbnail" src="https://localhost/COMERCIOELECTRONICO/frontend/vistas/img/modal/16405334_4.jpg" alt="New York" style="width:130px;"></div>

  </div>

</div>

</div>

</div><div class="container " style="margin-bottom: 60px;">

  <div class="col-md col-sm"> <p>
    <h2><span class="label label-primary"> Emprendedora 
Textil</span></h2>
  
Ofrecemos una gran variedad de vestidos, blusas de viscosa en gamas de color y diseños que permite seguir siempre a la vanguardia textil nacional e internacional.
  <h4><span class="label label-default">  
Tela: Viscosa Nacional</span></h4>
 <h4><span class="label label-default">  
 Composición: Viscosa 95.98% – Licra 4.15%</span> <span class="label label-default">  
  Tela: Nacional</span></h4>
</p></div>

</div>
    </div>
    <div id="menu1" class="tab-pane fade">
    <div class=" jumbotron">
    <center><p  style="padding: 30px;">Somos especialistas en fabricar y maquilar ropa para dama de excelente calidad de acuerdo a los gustos y tendencias del mercado. Cumpliendo con los requerimientos de nuestros clientes nacionales como internacionales.</p></center><center>
      
      <h2><span class="label label-primary">SOLUCIÓN INTEGRAL</span></h2>
    </center><br><br>
  <div class="container">
    
<div class="row">
  <div

class="col-md-3 text-center"><center><img width="100"  class="img-responsive" src="http://www.jys.com.mx/wp-content/uploads/2015/10/icon-estampado--367x321.png"></center><br>

  <p class="text-center">Acabado</p>



</div>
<div

class="col-md-3 text-center"><center><img width="100"  class="img-responsive" src="https://www.proun.es/wp-content/uploads/2014/04/servicon07_disenomedi.png"></center>
<br>

  <p class="text-center">Corte y Confección</p>

</div>
<div

class="col-md-3 text-center"><center><img width="100"  class="img-responsive" src="https://toldosserrano.com/wp-content/uploads/2018/02/icono_envios.png"></center>
<br>

  <p class="text-center">Embalaje y Envío</p>

</div>
<div

class="col-md-3 text-center"><center><img width="100"  class="img-responsive" src="http://www.jys.com.mx/wp-content/uploads/2015/10/icon2-367x321.png"></center>
<br>

  <p class="text-center">Corte y Confección</p>

</div>
</div>

  </div>

 </div>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>


<script type="text/javascript">
  var words = document.getElementsByClassName('word');
var wordArray = [];
var currentWord = 0;

words[currentWord].style.opacity = 1;
for (var i = 0; i < words.length; i++) {
  splitLetters(words[i]);
}

function changeWord() {
  var cw = wordArray[currentWord];
  var nw = currentWord == words.length-1 ? wordArray[0] : wordArray[currentWord+1];
  for (var i = 0; i < cw.length; i++) {
    animateLetterOut(cw, i);
  }
  
  for (var i = 0; i < nw.length; i++) {
    nw[i].className = 'letter behind';
    nw[0].parentElement.style.opacity = 1;
    animateLetterIn(nw, i);
  }
  
  currentWord = (currentWord == wordArray.length-1) ? 0 : currentWord+1;
}

function animateLetterOut(cw, i) {
  setTimeout(function() {
    cw[i].className = 'letter out';
  }, i*80);
}

function animateLetterIn(nw, i) {
  setTimeout(function() {
    nw[i].className = 'letter in';
  }, 340+(i*80));
}

function splitLetters(word) {
  var content = word.innerHTML;
  word.innerHTML = '';
  var letters = [];
  for (var i = 0; i < content.length; i++) {
    var letter = document.createElement('span');
    letter.className = 'letter';
    letter.innerHTML = content.charAt(i);
    word.appendChild(letter);
    letters.push(letter);
  }
  
  wordArray.push(letters);
}

changeWord();
setInterval(changeWord, 3000);


</script>
</body>
</html>


