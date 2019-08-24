

<div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100">
        <div class="login100-pic js-tilt" data-tilt>
          <img src="https://localhost/COMERCIOELECTRONICO/backend2/vistas/img/plantilla/img-01.png" alt="IMG">
        </div>

        <form method="post" class="login100-form validate-form">
          <span class="login100-form-title">
            Ingreso al Comercio
          </span>

          <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
            <input class="input100" type="text" name="ingEmail" placeholder="Email">
            <span class="focus-input100"></span>
            <span class="symbol-input100">
              <i class="fa fa-envelope" aria-hidden="true"></i>
            </span>
          </div>

          <div class="wrap-input100 validate-input" data-validate = "Password is required">
            <input class="input100" type="password" name="ingPassword" placeholder="Password">
            <span class="focus-input100"></span>
            <span class="symbol-input100">
              <i class="fa fa-lock" aria-hidden="true"></i>
            </span>
          </div>
          
          <div class="container-login100-form-btn">
            <button type="submit" class="login100-form-btn">
              Ingresar
            </button>
          </div>

          <div class="text-center p-t-12">
            <span class="txt1">
              Olvidó
            </span>
            <a class="txt2" href="#">
              ¿su nombre de usuario / contraseña?
            </a>
          </div>

 


           <?php

        $login = new ControladorAdministradores();
        $login -> ctrIngresoAdministrador();

      ?>
        </form>
      </div>
    </div>
  </div>

