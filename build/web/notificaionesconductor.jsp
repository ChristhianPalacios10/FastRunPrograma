<%@page import="Modelo.Solicitudes"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NOTIFICACIONES</title>
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
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="ServletController?op=listar"><i class="fa-solid fa-bell"></i> Notificaciones</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="perfilConductor.jsp"><i class="fa-solid fa-address-card"></i> Perfil</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="RutasConductor.jsp"><i class="fa-solid fa-map-location-dot"></i> Rutas</a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
                            <button class="btn btn-outline-light" type="submit">Buscar</button>

                        </form>&nbsp&nbsp&nbsp

                        <ul class="navbar-nav me-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="login.jsp">Cerrar Sesion</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--</nav>-->
            </nav>
        </header>
        <h2 align="center">NUEVAS SOLICITUDES</h2>
        <div class="container">
            
            <br>
            <br>
            <div class="container">
                <div class="row align-items-start">
                    <div class="col">
                        <i class="fa-solid fa-xmark"></i>: Rechazar Carrera
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-check"></i>: Confirmar Carrera
                    </div>
                    <div class="col">
                        1: Estamos cerca de tu hogar
                    </div>
                    <div class="col">
                        2: Nos encontramos a 5 minutos del colegio
                    </div>
                    <div class="col">
                        3: Carrera Terminada!
                    </div>
                    <br>
                    <br><!-- comment -->
                    <br>
                </div>
                <div class="container">
                    <table class=table table-hover">
                        <tr>
                            <th>#</th>
                            <th>Padre</th>
                            <th>Conductor</th>
                            <th>Fecha</th>
                            <th>Colegio</th>
                            <th>Hora de Recojo</th>
                            <th>Dirección</th>
                            <th><i class="fa-solid fa-car"></i></th>
                            <th>Comunicación</th>
                        </tr>

                        <%
                            ArrayList<Solicitudes> lista = (ArrayList<Solicitudes>) request.getAttribute("lista");
                            for (int i = 0; i < lista.size(); i++) {
                                Solicitudes em = lista.get(i);
                        %>
                        <tr>
                            <td><%=em.getIdRegistro()%></td>
                            <td><%=em.getNom()%></td>
                            <td><%=em.getNomconductor()%></td>
                            <td><%=em.getFecha()%></td>
                            <td><%=em.getCole()%></td>
                            <td><%=em.getHorarecogo()%></td>
                            <td><%=em.getDireccion()%></td>
                            <td><a class="btn btn btn-danger" aria-current="page" href="" script='alerta'><i class="fa-solid fa-xmark"></i></a>
                                <a class="btn btn-success" aria-current="page" href="" script='alerta'><i class="fa-solid fa-check"></i></a>
                            </td>
                            <td> 
                                <a class="btn btn-info" aria-current="page" href="" script='alerta'><i class="fa-solid fa-1"></i></a>
                                <a class="btn btn-dark" aria-current="page" href="" script='alerta'><i class="fa-solid fa-2"></i></a>
                                <a class="btn btn-light" aria-current="page" href="" script='alerta'><i class="fa-solid fa-3"></i></a>
                            </td>

                        </tr>
                        <%
                            }
                        %>


                    </table>
                </div>


                </body>
                </html>
