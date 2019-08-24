<?php

$ventas = ControladorVentas::ctrMostrarTotalVentas();

$visitas = ControladorVisitas::ctrMostrarTotalVisitas();

$usuarios = ControladorUsuarios::ctrMostrarTotalUsuarios("id");
$totalUsuarios = count($usuarios);

$productos = ControladorProductos::ctrMostrarTotalProductos("id");
$totalProductos = count($productos);

?>

<!--=====================================
CAJAS SUPERIORES
======================================-->


  <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="ion ion-bag"></i></span>

            <div class="info-box-content">


              <span class="info-box-text">Ventas</span>
              <span class="info-box-number"><?php echo number_format($ventas["total"]); ?></span>
            </div>
            <center> <a href="ventas" class="small-box-footer text-center">Más Info <i class="fa fa-arrow-circle-right"></i></a></center>
               
          </div>
         
        </div>
<!-- col -->

<!--===========================================================================-->


<!--===========================================================================-->

<!-- col -->


  <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="ion ion-person-add"></i></span>

            <div class="info-box-content">


              <span class="info-box-text">USUARIOS</span>
              <span class="info-box-number"><?php echo number_format($totalUsuarios); ?></span>
            </div>
            <center> <a href="usuarios" class="small-box-footer text-center">Más Info <i class="fa fa-arrow-circle-right"></i></a></center>
               
          </div>
         
        </div>

<!-- col -->

<!--===========================================================================-->

<!-- col -->
  <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-info"><i class="ion ion-pie-graph"></i></span>

            <div class="info-box-content">


              <span class="info-box-text">PRODUCTOS</span>
              <span class="info-box-number"><?php echo number_format($totalProductos); ?></span>
            </div>
            <center> <a href="productos" class="small-box-footer text-center">Más Info <i class="fa fa-arrow-circle-right"></i></a></center>
               
          </div>
         
        </div>
        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon btn-info"><i class="ion ion-pie-graph"></i></span>

            <div class="info-box-content">


              <span class="info-box-text">Visitas</span>
              <span class="info-box-number"><?php echo number_format($visitas["total"]); ?></span>
            </div>
            <center> <a href="visitas" class="small-box-footer text-center">Más Info <i class="fa fa-arrow-circle-right"></i></a></center>
               
          </div>
         
        </div>
   <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon btn- bg-green"><i class="fa fa-envelope"></i></span>

            <div class="info-box-content">


              <span class="info-box-text">Mensajes</span>

            </div>
            <center> <a href="mensajes2" class="small-box-footer text-center">Más Info <i class="fa fa-arrow-circle-right"></i></a></center>
               
          </div>
         
        </div>

<!-- col -->
