<%@page import="Modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
    ArrayList<Conductor> cond = null;
    Cliente cliente = null;
    ArrayList<Hijo> hijo = null;
    String dni="";
    HttpSession sesionFR = request.getSession();
    if (sesionFR.getAttribute("nombre") == null) {
%>
<jsp:forward page="Login.jsp">
    <jsp:param name="msg" value="Debe Iniciar Sesión obligatoriamente!"/>
</jsp:forward>
<%
    } else {
        cond = (ArrayList<Conductor>) sesionFR.getAttribute("listaCon");
        cliente = (Cliente) sesionFR.getAttribute("datos");
        hijo = (ArrayList<Hijo>) sesionFR.getAttribute("datosh");
        dni=(String) request.getParameter("DNIHijo");
    }
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRAR SOLICITUD</title>
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
                                <a class="nav-link active" aria-current="page" href="login.jsp">Cerrar Sesion</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--</nav>-->
            </nav>
        </header>
        <h2 align="center">Nuevas Solicitudes</h2>

        <div class="container">
            <form action="ServletControler">
                <table class="table">
                    <tr>
                        <% for (int i = 0; i < cond.size(); i++) {
                                Conductor objC = cond.get(i);
                                int IdConductor = Integer.parseInt(request.getParameter("idConductor"));
                                if (objC.getIdconductor() == IdConductor) {
                        %>
                        <td>Nombre del Conductor: </td>
                        <td><input type="text" name="txtNomCon" class="form-control" value="<%=objC.getNombres()%> <%=objC.getApellidos()%>"/></td>
                    </tr><%}
                        }%><tr>
                        <td>Nombre del Apoderado:</td>
                        <td><input type="text" name="txtNomApod" class="form-control" value="<%=cliente.getNombres()%> <%=cliente.getApellidos()%>"/></td>
                    </tr><tr>
                        <td>Dirección del hogar:</td>
                        <td><input type="text" name="txtDirecH" class="form-control" value="<%=cliente.getDireccion()%>"/></td>
                    </tr>

                    <tr>
                        <td>Nombre del Estudiante:</td>
                        <td>
                            <Select class="form-control" name="txtHijo">
                                <% Hijo objH;
                                    for (int i = 0; i < hijo.size(); i++) {
                                        objH= hijo.get(i);
                                       if(objH.getDnihijo().equals(dni)){ 
                                %>
                                <option value="<%=objH.getDnihijo()%>"><%=objH.getNombres()%> <%=objH.getApellidos()%> </option>
                                <%  }} %>
                            </Select>
                        </td>
                    </tr> 
                    <tr>
                        <td>DNI del Estudiante:</td>
                        <td><input type="text" id="dni" name="txtDNIEst" class="form-control" value=""/></td>
                    </tr><tr>
                        <td>Institución Educativa:</td>
                        <td><input type="text" name="txtInstitucion" class="form-control" value=""/></td>
                    </tr><tr>
                        <td>Dirección de la Institución:</td>
                        <td><input type="text" name="txtDirecI" class="form-control" value=""/></td>
                    </tr><tr>
                        <td>Fecha:</td>
                        <td><input type="text" name="txtFecha" class="form-control"/></td>
                    </tr><tr>
                        <td>Hora de Recojo:</td>
                        <td><input type="text" name="txtHoraR" class="form-control"/></td>
                    </tr><tr>
                        <td><input type="submit" name="btn" value="Registrar Solicitud" class="form-control"/></td>
                    </tr>
                    <input type="hidden" name="op" value="insertar"/>
                </table>
            </form>

        </div>


    </body>
</html>
