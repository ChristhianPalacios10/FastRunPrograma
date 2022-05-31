<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrate</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/csslogin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/742049c140.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="imagenes/AHORASI.png" type="jpg" />

    </head>
    <body >
        <header>

            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <!-- Navbar content -->

                <!-- <nav class="navbar navbar-expand-lg navbar-light bg-light">-->
                <div class="container-fluid">
                    <img src="imagenes/AHORASI.png" style="width: 120px">
                    <a class="navbar-brand" href=""></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="nosotros.html">Nosotros</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link active" aria-current="page" href="servicio.jsp">Servicios</a>

                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="contactos.jsp">Contactanos</a>
                            </li>
                        </ul>
                        nbsp&nbsp&nbsp

                        <ul class="navbar-nav me-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Login.jsp">Iniciar Sesión</a>
                            </li>
                            <li class="nav-item">
                                <div class="dropdown">
                                    <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                        Registrate
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                        <li><a class="dropdown-item" href="RegistroCon.jsp">Conductor</a></li>
                                        <li><a class="dropdown-item" href="RegistroCC.jsp">Madre/Padre</a></li>

                                    </ul>
                                </div>
                            </li>

                        </ul> 
                        <ul>

                        </ul>
                    </div>
                </div>
                <!--</nav>-->
            </nav>
        </header>

        <nav class="bg-dark">
        <div class="container"  >
            <div class="row" >

                <div class="col-12" align="center">  
                    <div class="cuadro" >
                        <h2>REGISTRO DE CONDUCTORES <i class="fa-solid fa-car"></i></h2><br>
                        <form action="ServletRegistroCo">
                            <table class="table">

                                <div class="sticky-sm-bottom">
                                    <tr>
                                        <td><i class="fa-solid fa-pencil"></i> Ingrese Nombre:</td>
                                        <td><input type="text" name="txtNombre" class="form-control" placeholder="Nombre" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fa-pencil"></i> Ingrese Apellido:</td>
                                        <td><input type="text" name="txtApellido" class="form-control" placeholder="Apellido" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fa-pencil"></i> Ingrese Edad:</td>
                                        <td><input type="text" name="txtEdad" class="form-control" placeholder="Edad" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fas fa-flag"></i> Ingrese Nacionalidad:</td>
                                        <td><input type="text" name="txtNacionalidad" class="form-control" placeholder="Nacionalidad" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fas fa-address-card"></i> Ingrese DNI:</td>
                                        <td><input type="text" name="txtDNI" class="form-control" placeholder="DNI" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fa-pencil"></i> Ingrese Direccion:</td>
                                        <td><input type="text" name="txtDireccion" class="form-control" placeholder="Dirección" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fa-mobile-screen-button"></i> Ingrese Telefono: </td>
                                        <td><input type="text" name="txtFono" class="form-control" placeholder="Telefono" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fa-envelopes-bulk"></i> Ingrese Correo: </td>
                                        <td><input type="text" name="txtCorreo" class="form-control" placeholder="example@gmail.com" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fas fa-address-card"></i> Número de Placa: </td>
                                        <td><input type="text" name="txtPlaca" class="form-control" placeholder="Número de Placa" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fas fa-address-card"></i> Tipo de Brevete: </td>
                                        <td><input type="text" name="txtBrevete" class="form-control" placeholder="Brevete" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fas fa-address-card"></i> Modelo de Vehiculo: </td>
                                        <td><input type="text" name="txtModelo" class="form-control" placeholder="Modelo Vehículo" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-regular fa-user"></i> Ingrese Usuario: </td>
                                        <td><input type="text" name="txtUsuario" class="form-control" placeholder="Usuario" required></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-solid fa-key"></i> Ingrese Contraseña: </td>
                                        <td><input type="Password" name="txtPass" class="form-control" placeholder="****" required></td>
                                    </tr>

                            </table>
                            <tr>
                                <td><input type="submit" name="btn" value="Registrar" class="btn btn-primary"/></td>
                            </tr>
                            <input type="hidden" name="op" value="1"/>


                        </form>

                    </div>
                </div>  


            </div>
        </div>   
        <br>





    </nav>



    <footer>
        <div class="footer py-4 bg-dark">
            <div class="container">
                <div class="row align-item-center">
                    <div class="col-lg-4 text-start" style="color: white">
                        Copyright &copy; Website 2022
                    </div> 
                    <div class="col-lg-4 text-center">
                        <a class="btn btn-primary btn-social mx-2" href="#!">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="btn btn-primary btn-social mx-2" href="#!">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                    </div>
                    <div class="col-lg-4 text-end">
                        <a class="link-light text-decoration-none me-3" href="#">atencionFastRun@fastrun.com</a>
                        <a class="link-light text-decoration-none" href="+51 924 845 613">tlf: 924845613</a>
                    </div>

                </div>
            </div>
        </div>
    </footer>
</body>
</html>