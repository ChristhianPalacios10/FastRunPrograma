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

@WebServlet(name = "ServletRegistroC", urlPatterns = {"/ServletRegistroC"})
public class ServletRegistroC extends HttpServlet {

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
                String drc = request.getParameter("txtDireccion");
                int cell = Integer.parseInt(request.getParameter("txtFono"));
                String gmail = request.getParameter("txtCorreo");
                String contra = request.getParameter("txtPass");
                String usuario = request.getParameter("txtUsuario");
                
                try {
                    PreparedStatement sta = ConexionDB.getConexion().prepareStatement("insert into cliente values(null,?,?,?,?,?,?,?,?)");
                    
                    sta.setString(1, nom);
                    sta.setString(2, apell);
                    sta.setString(3, drc);
                    sta.setInt(4, cell);
                    sta.setString(5, gmail);
                    sta.setString(6, usuario);
                    sta.setString(7, contra);
                    sta.setInt(8, 1);
                    
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
