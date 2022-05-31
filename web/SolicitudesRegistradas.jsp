

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
    String nombre = "";
    String funcion = "";

    HttpSession sesionFR = request.getSession();
    if (sesionFR.getAttribute("nombre") == null) {
%>
<jsp:forward page="PruebaLogin.jsp">
    <jsp:param name="msg" value="Debe Iniciar Sesión obligatoriamente!"/>
</jsp:forward>
<%
    } else {
        nombre = (String) sesionFR.getAttribute("nombre");
        funcion = (String) sesionFR.getAttribute("funcion");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOLICITUDES REGISTRADAS</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/f368768ce7.js" crossorigin="anonymous" ></script>
        <link rel="shortcut icon" href="imagenes/AHORASI.png" type="png" />
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
                            <li class="nav-item dropdown">
                                <a class="nav-link active" aria-current="page" href="servicio.jsp">Servicios</a>

                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="perfilPadre.jsp"><i class="fa-solid fa-address-card"></i> Perfil</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="notificacionescliente.jsp"><i class="fa-solid fa-bell"></i> Notificaciones</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="SolicitudesRegistradas.jsp"><i class="fa-solid fa-address-book"></i> Solicitudes Registradas</a>
                            </li>
                        </ul>


                        <ul class="navbar-nav me-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="CerrarSesion.jsp"><i class="fa-solid fa-arrow-right-from-bracket"></i> Cerrar Sesión</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--</nav>-->
            </nav>
        </header>
        <br>
        <div class="container">
            <h1 align="center">SOLICITUDES REGISTRADAS</h1>
            <br>
            <table class="table">
                <tr>
                    <td>Colegio:</td>
                    <td><input type="text"></td>
                    <td>Conductor:</td>
                    <td><input type="text"></td>
                    <td>Fecha:</td>
                    <td><input type="text"></td>
                    <td>Estado:</td>
                    <td><input type="text"></td>
                    <td><input class="btn btn-dark" type="button" value="Filtrar" ></td>
                </tr>
            </table>
            <table class="table">
                <thead>
                    <tr>
                        <th rowspan="2">codigo</th>
                        <th colspan="3"><center>Conductor</center></th>
                <th colspan="2"><center>Hijo</center></th>
                <th colspan="2"><center>Registro</center></th>
                </tr>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Dirección</th>
                    <th>Nombre</th>
                    <th>Institución Educativa</th>
                    <th>Fecha</th>
                    <th>Estado</th>
                </tr>

                </thead>
                <tr>
                </tr>

            </table>
        </div>
        <!--<footer>
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
        </footer>-->
    </body>
</html>
