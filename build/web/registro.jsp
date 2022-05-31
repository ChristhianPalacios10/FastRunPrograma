
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>REGISTRATE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/csslogin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/f368768ce7.js" crossorigin="anonymous" ></script>
        <link rel="shortcut icon" href="imagenes/AHORASI.png" type="jpg" />

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <div class="cuadro">
                    <div class="row">
                        <div class="col-6 ">
                            <div class="imagen">
                                <img src="imagenes/AHORASI.png ">
                            </div>
                        </div>
                        <div class="col-6">
                            <h3 class="titulo ">
                                <span class="linea ">Regístrate Ahora
                                </span>
                            </h3>
                            <br>
                            <form action="Validate" method="POST" class="row g-3 needs-validation" novalidate>
                                <div class="col-12 mb-2 mt-2 ">
                                    <select class="form-control">
                                        <option >Conductor</option>
                                        <option>Cliente</option>
                                    </select>
                                </div>
                                <div class="input-group">
                                    
                                    <input type="text" required class="form-control" placeholder="Nombre">
                                    <span>-</span>
                                    <input type="text" required class="form-control" placeholder="Apellido">
                                </div>
                                <div >
                                    <input type="text" name ="txtpass" class="form-control" placeholder="Correo Electronico" required>

                                </div>
                                <div >
                                    <input type="text" name ="txtpass" class="form-control" placeholder="Usuario" required>
                                </div>
                                <div >
                                    <input type="text" name ="txtpass" class="form-control" placeholder="Contraseña" required>
                                </div>

                                <div >
                                    <input type="text" name ="txtpass" class="form-control" placeholder="Número de Télefono" required>

                                </div>

                                <div>
                                    <a class="btn btn-success mb-4" aria-current="page" href="login.jsp" script='alerta'>Registrarse</a>
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
