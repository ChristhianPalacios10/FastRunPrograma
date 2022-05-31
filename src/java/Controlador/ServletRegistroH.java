/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Hijo;
import Utils.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author chris
 */
@WebServlet(name = "ServletRegistroH", urlPatterns = {"/ServletRegistroH"})
public class ServletRegistroH extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
                String DNI = request.getParameter("txtDNI");
                String nom = request.getParameter("txtnomMe");
                String apell = request.getParameter("txtApellido");
                String nomints = request.getParameter("txtNominsti");
                String dircol = request.getParameter("txtDiCol");
                
                int idcliente = Integer.parseInt(request.getParameter("idcliente"));
                
                try {
                    PreparedStatement sta = ConexionDB.getConexion().prepareStatement("insert into hijo values(?,?,?,?,?,?)");
                    
                    sta.setString(1, DNI);
                    sta.setString(2, nom);
                    sta.setString(3, apell);
                    sta.setString(4, nomints);
                    sta.setString(5, dircol);
                    sta.setInt(6, idcliente);
                    sta.executeUpdate();
                    
                } catch (Exception e) {
                    
                }
                Hijo datosh=new Hijo(DNI, nom, apell, nomints, dircol);
                 HttpSession sesionFR=request.getSession();
                     sesionFR.setAttribute("datosh", datosh);
                    request.getRequestDispatcher("perfilPadre.jsp").forward(request, response);
                break;
                
            }
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
