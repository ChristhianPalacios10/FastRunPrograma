<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
                        &nbsp&nbsp&nbsp

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
        <div class="container">
            <h1 align="center">TUS SOLICITUDES</h1>
            <br>
            <br>
            <div class="row">
                <div class="col-sm-8">
                    <div class="card border-dark">
                        <div class="card-body">
                            <table class="table table-hover">

                                <tr>
                                    <th>#</th>
                                    <th>Estado</th>
                                    <th>Nombre</th>

                                    <th>Dirección</th>
                                    <th>Colegio</th>
                                    <th><i class="fa-solid fa-car"></i></th>

                                    <%
                                        Connection con = null;
                                        Statement sta = null;
                                        ResultSet rs = null;
                                        String cadena = "jdbc:mysql://localhost/notificaiones?user=root&password=";

                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection(cadena);
                                            sta = con.createStatement();
                                            rs = sta.executeQuery("select * from solicitudesregistrados");
                                            while (rs.next()) {
                                    %>
                                <tr>
                                    <td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>

                                    <td><%=rs.getString(5)%></td>
                                    <td><%=rs.getString(6)%></td>
                                    <td> <a class="btn btn btn-danger" aria-current="page" href="" script='alerta'><i class="fa-regular fa-trash-can"></i></a>
                                    </td>
                                </tr>
                                <%
                                        }
                                        rs.close();
                                        sta.close();
                                        con.close();
                                    } catch (Exception e) {
                                    }


                                %>
                        </div>

                        </table>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 ">
                <div class="card border-dark">
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col"><i class="fa-solid fa-message"></i> Carrera-P001</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">Estamos cerca de tu hogar</th>

                                </tr>
                                <tr>
                                    <th scope="row">Nos encontramos a 5 minutos del colegio</th>

                                </tr>
                                <tr>
                                    <th scope="row">Carrera Terminada!</th>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
