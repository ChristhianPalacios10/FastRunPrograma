<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
    Conductor cond = null;
    ArrayList<Hijo> hijo = null;
    HttpSession sesionFR = request.getSession();
    if (sesionFR.getAttribute("logueado") == null) {
%>
<jsp:forward page="Login.jsp">
    <jsp:param name="msg" value="Debe Iniciar Sesión obligatoriamente!"/>
</jsp:forward>
<%
    } else {
        cond = (Conductor) request.getAttribute("conductor");
        hijo = (ArrayList<Hijo>) sesionFR.getAttribute("datosh");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Conductor</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/csslogin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/f368768ce7.js" crossorigin="anonymous" ></script>
        <link rel="shortcut icon" href="imagenes/AHORASI.png" type="jpg" />

    </head>
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
                            <a class="nav-link active" aria-current="page" href="login.jsp">Cerrar Sesion</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--</nav>-->
        </nav>
    </header>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">


            <div class="container">
                <div class="row">
                    <div class="col-6" >
                        <div class="cuadro">
                            <div  class="imagen">
                                <img src="imagenes/CONDUCTOR.png" width="70" height="300">
                            </div>
                            <div>
                                <h3>Conductor:</h3>
                                <h4><%=cond.getNombres()%> <%=cond.getApellidos()%></h4>
                                <h3>Edad:</h3>
                                <h4><%=cond.getEdad()%></h4>
                                <h3> Correo:</h3>
                                <h4><%=cond.getCorreo()%></h4>
                                <h3> Celular:</h3>
                                <h4><%=cond.getTelefono()%></h4>
                                <h3> DNI:</h3>
                                <h4><%=cond.getDni()%></h4>

                            </div>
                        </div>

                    </div>


                    <div class="col-6"> 
                        <div class="cuadro" >
                            <div > 
                                <h1> Información Adicional </h1>
                                <h4> Modelo de Vehiculo: <%=cond.getModelo()%></h4>
                                <h4> Número de Placa: <%=cond.getPlaca()%></h4>
                                <h4>Dirección: <%=cond.getDireccion()%></h4>
                                <h4> Brevete: <%=cond.getBrevete()%></h4>
                                <h4> Nacionalidad: <%=cond.getNacionalidad()%></h4>
                            </div>

                            <br><br>
                            <h3>Nombre del Estudiante:</h3>
                            <Select class="form-control" name="txtHijo">
                                <% Hijo objH=null;
                                    for (int i = 0; i < hijo.size(); i++) {
                                        objH = hijo.get(i);
                                %>
                                <option value="<%=objH.getDnihijo()%>"><%=objH.getNombres()%> <%=objH.getApellidos()%> </option>
                                <%  }%>
                            </Select><br>
                            <a class="btn btn-primary btn-social mx-2" href="Solicitudes.jsp?idConductor=<%=cond.getIdconductor()%>&DNIHijo=<%=objH.getDnihijo() %>">
                                <i class="fas fa-edit"></i>REGISTRAR NUEVA SOLICITUD
                            </a>

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
