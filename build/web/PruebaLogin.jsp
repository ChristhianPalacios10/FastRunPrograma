
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Iniciar Sesión</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/csslogin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/742049c140.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="imagenes/AHORASI.png" type="jpg" />

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <div class="cuadro col-12">
                    <div class="row ">
                        <div class="col-6">
                            <div class="imagen">
                                <img src="imagenes/session.webp">
                            </div>
                        </div>
                        <div class="col-6">
                            <h3 class="titulo ">
                                <span class="linea ">Iniciar Sesión</span>
                                <br>
                            </h3>
                            <br>
                            <br>
                            <form action="ServletSesion" class="row g-3 needs-validation" >
                                <table class="table">
                                    <tr>
                                        <td>Ingresar Usuario:</td>
                                        <td> <input type="text" name ="txtuser" class="form-control" placeholder="Usuario"
                                                    required/></td>
                                    </tr>
                                    <tr>
                                        <td>Ingresar Contraseña:</td>
                                        <td> <input type="password" name ="txtPass" class="form-control" placeholder="*********"
                                                    required/></td>
                                    </tr>

                                </table>
                                <th><input type="submit" name="btn" class="btn btn-primary"   value="Iniciar" /></th>
                                <h5 align="center">¿Se encuentra Registrado?
                                    <a href="RegistroCC.jsp">Registrate Ahora!</a></h5>
                                <input type="hidden" name="op" value="login" />

                                <h5>
                                    <%
                                        if (request.getAttribute("msg") != null) {
                                            String msg = request.getAttribute("msg").toString();
                                    %>
                                    <div class="alert alert-danger" role="alert">
                                        <i class="fa-solid fa-triangle-exclamation"></i> <%=msg%>
                                    </div>
                                    <%
                                        }
                                    %> 
                                </h5>
                                  <h5>
                                    <%
                                        if (request.getParameter("msg") != null) {
                                            String msg = request.getParameter("msg").toString();
                                    %>
                                    <div class="alert alert-danger" role="alert">
                                        <i class="fa-solid fa-triangle-exclamation"></i> <%=msg%>
                                    </div>
                                    <%
                                        }
                                    %> 
                                </h5>
                            </form>
                            <br>
                            <br>
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
