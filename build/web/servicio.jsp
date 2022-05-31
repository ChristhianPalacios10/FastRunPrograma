<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Modelo.*" %>
<%@page session="true" %>
<%
    String nombre = "";
    ArrayList<Conductor> lista = null;

    HttpSession sesionFR = request.getSession();
    if (sesionFR.getAttribute("logueado") == null) {
%>
<jsp:forward page="Login.jsp">
    <jsp:param name="msg" value="Debe Iniciar Sesión obligatoriamente!"/>
</jsp:forward>
<%
    } else {
        nombre = (String) sesionFR.getAttribute("nombre");
        lista = (ArrayList<Conductor>) sesionFR.getAttribute("listaCon");
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
                            <%                                if (session.getAttribute("logueado") == null) {
                            %>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="nosotros.html">Nosotros</a>
                            </li><%}%>
                            <li class="nav-item dropdown">
                                <a class="nav-link active" aria-current="page" href="servicio.jsp">Servicios</a>

                            </li>
                            <%
                                if (session.getAttribute("logueado") == null) {
                            %>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="contactos.jsp">Contactanos</a>
                            </li><%} else {%>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="perfilPadre.jsp"><i class="fa-solid fa-address-card"></i> Perfil</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="notificacionescliente.jsp"><i class="fa-solid fa-bell"></i> Notificaciones</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="SolicitudesRegistradas.jsp"><i class="fa-solid fa-address-book"></i> Solicitudes Registradas</a>
                            </li><% } %>
                        </ul>

                        <%                            if (session.getAttribute("logueado") == null) {


                        %>
                        <ul class="navbar-nav me-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="login.jsp">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="registro.jsp">Registro</a>
                            </li>
                        </ul>
                        <%                        } else {
                        %> 
                        <ul class="navbar-nav me-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="CerrarSesion.jsp"><i class="fa-solid fa-arrow-right-from-bracket"></i> Cerrar Sesión</a>
                            </li>
                        </ul>
                        <%
                            }
                        %>
                    </div>
                </div>
                <!--</nav>-->
            </nav>
        </header>
        <main>
            <%                if (session.getAttribute("logueado") != null) {
            %>
            <div class="aside_productos-title">
                <h1>Bienvenido: <%=session.getAttribute("nombre")%></h1>
            </div>
            <%
            } else {

            %>
            <div class="aside_productos-title">
                <h1>Servicios</h1>
            </div>
            <%                }
            %>
            <div class="donde">
                <h2>¿En que distrito vives?</h2>
            </div>

            <section class="distritos">

                <div class="list_productos">
                    <% for (int i = 0; i < lista.size(); i++) {
                            Conductor obj;
                            obj = lista.get(i);
                    %>
                    <div class="list_productos-plato">
                        <div class="productos-plato-img">
                            <img src="imagenes/autos/ate.jpg" width="300" height="270">
                        </div>
                        <h3>Conductor: <%=obj.getNombres()%> <%=obj.getApellidos()%></h3>
                        <div class="">
                            <form action="ServletControler">
                                &nbsp&nbsp&nbsp
                                <input type="submit" class="btn btn-info" value="PERFIL">&nbsp&nbsp&nbsp
                                <a class="btn btn-secondary">REGISTRAR NUEVA SOLICITUD</a>&nbsp&nbsp&nbsp
                                <a class="btn btn-success" href="https://wa.me/<%=obj.getTelefono()%>"><i class="fab fa-whatsapp"></i></a>
                                <input type="hidden" name="op" value="buscarC">
                                <input type="hidden" name="idConductor" value="<%=obj.getIdconductor()%>">
                            </form>
                        </div>
                    </div>
                    <%}%>
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