package Controlador;

import Utils.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author chris
 */
@WebServlet(name = "ServletRegistroCo", urlPatterns = {"/ServletRegistroCo"})
public class ServletRegistroCo extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        int op = Integer.parseInt(request.getParameter("op"));
        switch (op) {
            case 1: {
                String nom = request.getParameter("txtNombre");
                String apell = request.getParameter("txtApellido");
                int edad = Integer.parseInt(request.getParameter("txtEdad"));
                String nac = request.getParameter("txtNacionalidad");
                String dni = request.getParameter("txtDNI");
                String drc = request.getParameter("txtDireccion");
                String cell = request.getParameter("txtFono");
                String gmail = request.getParameter("txtCorreo");
                String placa = request.getParameter("txtPlaca");
                String brevete = request.getParameter("txtBrevete");
                String modelo = request.getParameter("txtModelo");
                String usuario = request.getParameter("txtUsuario");
                String contra = request.getParameter("txtPass");

                try { //falta base de datos reconductor
                    PreparedStatement sta = ConexionDB.getConexion().prepareStatement("insert into conductor values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                    sta.setString(1, nom);
                    sta.setString(2, apell);
                    sta.setInt(3, edad);
                    sta.setString(4, nac);
                    sta.setString(5, dni);
                    sta.setString(6, drc);
                    sta.setString(7, cell);
                    sta.setString(8, gmail);
                    sta.setString(9, usuario);
                    sta.setString(10, contra);
                    sta.setString(11, brevete);
                    sta.setString(12, placa);
                    sta.setString(13, modelo);

                    sta.setInt(14, 2);

                    sta.executeUpdate();
                    request.getRequestDispatcher("MensajeRegistro.jsp").forward(request, response);
                } catch (Exception e) {
                }

                break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
