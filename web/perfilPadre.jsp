<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
    String nombre = "";
    Cliente datos = null;
    ArrayList<Hijo> datosh = null;

    HttpSession sesionFR = request.getSession();
    if (sesionFR.getAttribute("logueado") == null) {
%>
<jsp:forward page="Login.jsp">
    <jsp:param name="msg" value="Debe Iniciar Sesión obligatoriamente!"/>
</jsp:forward>
<%
    } else {
        nombre = (String) sesionFR.getAttribute("nombre");
        datos = (Cliente) sesionFR.getAttribute("datos");
        if (sesionFR.getAttribute("datosh") != null) {
            datosh = (ArrayList<Hijo>) sesionFR.getAttribute("datosh");
        }

    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PERFIL</title>
        <link rel="stylesheet" type="text/css" href="css/csslogin.css">
        <link href="css/perfil.css" rel="stylesheet" type="text/css"/>
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

        <nav class="bg-dark">

        </div> 
        <div class="container" >
            <div class="row" >

                <div class="col-4">
                    <div class="cuadro">   

                        <div class="imagen">

                        </div>
                        <br>
                        <h2>DATOS DEL PADRE DE FAMILIA</h2>  

                        <p>Nombre del apoderado :</p>
                        <p><%=datos.getNombres()%> <%=datos.getApellidos()%></p>
                        <p>Correo electrónico :</p>
                        <p><%=datos.getCorreo()%></p>
                        <p>Numero de célular :</p>
                        <p><%=datos.getTelefono()%></p>
                        <p>Dirección: </p>
                        <p><%=datos.getDireccion()%></p>



                    </div>
                </div>

                <div class="col-4" align="center">  
                    <div class="cuadro">
                        <h2>REGISTRAR DATOS DE ESTUDIANTE</h2><br>
                        <form action="ServletRegistroH">
                            <table class="table">

                                <tr>
                                    <td>Ingrese DNI: </td>
                                    <td><input type="text" name="txtDNI" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>Ingrese Nombre: </td>
                                    <td><input type="text" name="txtnomMe" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>Ingrese Apellido: </td>
                                    <td><input type="text" name="txtApellido" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>Ingrese Nombre de Institucion Educativa </td>
                                    <td><input type="text" name="txtNominsti" class="form-control"/></td>
                                </tr>
                                <tr>
                                    <td>Ingrese Direecion de Institucion Educativa </td>
                                    <td><input type="text" name="txtDiCol" class="form-control"/></td>
                                </tr>
                                <input type="hidden" name="op" value="1" />
                                <input type="hidden" name="idcliente" value="<%=datos.getIdcliente()%>" />
                            </table>

                            <div>
                                <td><input type="submit" name="btn" value="Registrar" class="btn btn-primary"/></td>
                            </div>
                        </form>

                    </div>
                </div>  

                <div class="col-4">
                    <div class="cuadro">
                        <h2>DATOS DE ESTUDIANTE</h2><br>
                        <div class="imagen">

                        </div>
                        <br>
                        <div class="accordion" id="accordionExample">
                            <%if (sesionFR.getAttribute("datosh") != null) {
                                    for (int i = 0; i < datosh.size(); i++) {
                                        Hijo obj = datosh.get(i);
                            %>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingOne">

                                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <%=obj.getNombres()%> <%=obj.getApellidos()%>
                                    </button>

                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse " aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>Nombre y Apellido:</p>
                                        <p> <%=obj.getNombres()%> <%=obj.getApellidos()%>  </p>
                                        <p>DNI</p>
                                        <p><%=obj.getDnihijo()%></p>
                                        <p>Direccion de la Institucion Educativa:</p>
                                        <p><%=obj.getDirecinstitucion()%></p>
                                        <p>Nombre de institucion:</p>
                                        <p><%=obj.getNominstitucion()%></p>
                                    </div>

                                </div>
                            </div>
                            <%}
                                }%>
                        </div>
                        <!--                        <h2>DATOS DE ESTUDIANTE</h2>
                                                </%if (sesionFR.getAttribute("validacion").equals("1") ) {%>
                                                <p>Nombre y Apellido:</p>
                                                <p> </%=datosh.getNombres() %> </%=datosh.getApellidos()%>  </p>
                                                <p>DNI</p>
                                                <p><7%=datosh.getDnihijo()%></p>
                                                <p>Direccion de la Institucion Educativa:</p>
                                                <p><7%=datosh.getDirecinstitucion()%></p>
                                                <p>Nombre de institucion:</p>
                                                <p><7%=datosh.getNominstitucion()%></p>
                                                <7% } %>-->
                    </div>
                </div>
            </div>
        </div>   
        <br>

        <div class="container">
            <div class="row col-12">
                <h1 style="color: #ffffff" align="center">Direccion de vivienda</h1>
                <br><br>
                <iframe src="https://www.google.com/maps/embed?
                        pb=!1m18!1m12!1m3!1d124130.9974978055!2d-72.00929001754207!3d-
                        13.529842657332434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3
                        !1m2!1s0x916dd5d826598431%3A0x2aa996cc2318315d!2sCusco!5e0!3m2
                        !1ses-419!2spe!4v1566252558372!5m2!1ses-419!2spe" 
                        width="600" height="450" frameborder="0" 
                        style="border:0" allowfullscreen></iframe>
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
