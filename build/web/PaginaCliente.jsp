<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
    String nombre= "";
    String funcion= "";

    HttpSession sesionFR=request.getSession();
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
<html>
    <head>
        <title>FASTRUN</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/f368768ce7.js" crossorigin="anonymous" ></script>
        <link rel="shortcut icon" href="imagenes/AHORASI.png" type="jpg" />
        <link rel="stylesheet" href="css/servicios.css">

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
                                <a class="nav-link active" aria-current="page" href="PaginaCliente.jsp">Servicios</a>

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
                         <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
                            <button class="btn btn-outline-light" type="submit">Buscar</button>

                        </form>&nbsp&nbsp&nbsp

                        <ul class="navbar-nav me-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="PruebaLogin.jsp">Cerrar Sesion</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--</nav>-->

            </nav>
        </header>
        <main>
            <div class="aside_productos-title">
                <h1>Servicios</h1>
            </div>

            <div class="donde">
                <h2>¿En que distrito vives?</h2>
            </div>

            <section class="distritos">

                <div class="list_productos">
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/ate.jpg" width="300" height="270">
                        </div>
                        <h3>Ate</h3>
                        <div class="list_productos-opt">
                            <span>Conductor: Rogelio Espinoza</span>
                            <a href="https://wa.me/984574250"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/sjl.jpg" width="300" height="270">
                        </div>
                        <h3>San Juan de Lurigancho</h3>
                        <div class="list_productos-opt">
                            <span>Conductor: Maria del Carmen Quispe</span>
                            <a href="https://wa.me/984574250"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/villa.jpg" width="300" height="270">
                        </div>
                        <h3>Villa el salvador</h3>
                        <div class="list_productos-opt">
                            <span>Conductor: Raul Sifuentes</span>
                            <a href="https://wa.me/984574250"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/Chaclacayo.jpg" width="300" height="270">
                        </div>
                        <h3>Chaclacayo</h3>
                        <div class="list_productos-opt">
                            <span>Conductor: Maritza Castillo</span>
                            <a href="https://wa.me/984574250"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/olivos.jpg" width="300" height="270">
                        </div>
                        <h3>Los Olivos</h3>
                        <div class="list_productos-opt">
                            <span>Conductor: Juaquin Lopez</span>
                            <a href="https://wa.me/984574250"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/molina.jpg" width="300" height="270">
                        </div>
                        <h3>La Molina</h3>
                        <div class="list_productos-opt">
                            <span>Conductor: Nancy Huamani</span>
                            <a href="https://wa.me/984574250"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/comas.jpg" width="300" height="270">
                        </div>
                        <h3>Comas</h3>
                        <div class="list_productos-opt">
                            <span>Conductor: Brayan Salazar</span>
                            <a href="https://wa.me/984574250"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/breña.jpg" width="300" height="270">
                        </div>
                        <h3>Breña</h3>
                        <div class="list_productos-opt">
                            <span>Conductor: Rosalinda Retamozo</span>
                            <a href="https://wa.me/984574250"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/Lima.jpg" width="300" height="270">
                        </div>
                        <h3>Cercado de Lima</h3>
                        <div class="list_productos-opt">
                            <span>Conductor: Cirili Nuñez</span>
                            <a href="https://wa.me/984574250"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>
                </div>
            </section>      
        </main>

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