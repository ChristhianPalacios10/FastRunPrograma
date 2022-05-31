package Controlador;

import Modelo.*;

import Utils.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Modelo.*;

/**
 *
 * @author chris
 */
@WebServlet(name = "ServletSesion", urlPatterns = {"/ServletSesion"})
public class ServletSesion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ArrayList<Conductor> listaC;
        ModeloConsulta obj;
        ArrayList<Hijo> listaH;
        String op = request.getParameter("op");
        if (op.equalsIgnoreCase("login")) {
            int tipo = Integer.parseInt(request.getParameter("tipo"));
            if (tipo == 1) {
                String usuario = request.getParameter("txtuser");
                String contraseña = request.getParameter("txtPass");
                Cliente datos = null;
                try {
                    PreparedStatement psta = ConexionDB.getConexion()
                            .prepareStatement("select*from cliente where usuario=? and contraseña=? ");
                    psta.setString(1, usuario);
                    psta.setString(2, contraseña);
                    ResultSet rs = psta.executeQuery();
                    if (rs.next()) {

                        datos = new Cliente(rs.getInt(1), rs.getString(2), rs.getString(3),
                                rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
                        listaC=new ArrayList<>();
                        obj=new ModeloConsulta();
                        listaH=new ArrayList<>();
                        listaC=obj.ListarConductores();
                        listaH=obj.ListarHijos(rs.getInt(1));
                        HttpSession sesionFR = request.getSession();
                        sesionFR.setAttribute("nombre", rs.getString(2));
                        sesionFR.setAttribute("tipo", rs.getInt(9));
                        sesionFR.setAttribute("logueado", 1);
                        sesionFR.setAttribute("datos", datos);
                        sesionFR.setAttribute("listaCon", listaC);
                        sesionFR.setAttribute("datosh", listaH);
                        request.getRequestDispatcher("servicio.jsp").forward(request, response);
                    } else {
                        request.setAttribute("msg", "Usuario o Contraseña Incorrectas!");
                        request.getRequestDispatcher("Login.jsp").forward(request, response);
                    }
                } catch (Exception e) {
                }

            } else if (tipo == 2) {
                String usuario = request.getParameter("txtuser");
                String contraseña = request.getParameter("txtPass");
                Conductor datos = null;
                try {
                    PreparedStatement psta = ConexionDB.getConexion()
                            .prepareStatement("select*from conductor where usuario=? and contraseña=? ");
                    psta.setString(1, usuario);
                    psta.setString(2, contraseña);
                    ResultSet rs = psta.executeQuery();
                    if (rs.next()) {

                        datos = new Conductor(rs.getInt(1), rs.getString(2), rs.getString(3),
                                rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8),
                                 rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13),
                                 rs.getString(14));
                        HttpSession sesionFR = request.getSession();
                        sesionFR.setAttribute("nombre", rs.getString(2));
                        sesionFR.setAttribute("tipo", rs.getInt(15));
                        sesionFR.setAttribute("logueado", 1);
                        sesionFR.setAttribute("datos", datos);
                        sesionFR.setAttribute("validacion", "0");
                        request.getRequestDispatcher("perfilConductor.jsp").forward(request, response);
                    } else {
                        request.setAttribute("msg", "Usuario o Contraseña Incorrectas!");
                        request.getRequestDispatcher("Login.jsp").forward(request, response);
                    }
                } catch (Exception e) {
                }

            } else {
                request.setAttribute("msg", "Usuario o Contraseña Incorrectas!");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
