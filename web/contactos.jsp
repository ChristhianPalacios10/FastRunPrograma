
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CONTACTANOS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/csslogin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/f368768ce7.js" crossorigin="anonymous" ></script>
        <link rel="shortcut icon" href="imagenes/AHORASI.png" type="jpg" />

    </head>
    <body>
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
                        &nbsp&nbsp&nbsp

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
                    </div>
                </div>
                <!--</nav>-->
            </nav>
        </header>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <div class="cuadro">
                    <div class="row">
                        <div class="col-6 ">
                            <div class="imagen">
                                <img src="imagenes/contacto.webp ">
                            </div>
                        </div>
                        <div class="col-6">
                            <h3 class="titulo ">
                                <span>NOS IMPORTA TU OPINION!
                                </span>
                            </h3>
                            <br>
                            <form action="Validate" method="POST" class="row g-3 needs-validation" novalidate>

                                <div class="input-group">
                                    <input type="text" required class="form-control" placeholder="Nombre">
                                    <span>-</span>
                                    <input type="text" required class="form-control" placeholder="Apellido">
                                </div>
                                <div >
                                    <input type="text" name ="txtpass" class="form-control" placeholder="Correo Electronico" required>

                                </div>

                                <div >
                                    <input type="text" name ="txtpass" class="form-control" placeholder="Número de Télefono" required>

                                </div>
                                <div >
                                    <textarea class="form-control" rows="5px" cols="65px" placeholder="Comentario"></textarea>

                                </div>

                                <div>
                                    <a class="btn btn-success mb-4" aria-current="page" href="login.jsp" script='alerta'>Enviar</a>
                                </div>


                            </form>
                        </div>
                    </div>
                </div>
            </div>
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
