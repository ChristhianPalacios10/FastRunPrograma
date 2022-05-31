package Controlador;

import Modelo.Conductor;
import Utils.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Solicitudes;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

@WebServlet(name = "ServletControler", urlPatterns = {"/ServletControler"})
public class ServletControler extends HttpServlet {

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
        String op = request.getParameter("op");
        ResultSet rs=null;
        HttpSession sesionFR = request.getSession();
        if (op.equals("listar")) {
            try {
                PreparedStatement sta = ConexionDB.getConexion()
                        .prepareStatement("select * from prueba");
                 rs= sta.executeQuery();

                ArrayList<Solicitudes> lista = new ArrayList<>();
                while (rs.next()) {
                    Solicitudes sl = new Solicitudes(rs.getInt(1), rs.getString(2),
                            rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
                    lista.add(sl);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("notificacionesconductor.jsp").forward(request, response);
            } catch (Exception e) {
            }

        } else if (op.equals("insertar")) {
            int cod = Integer.parseInt(request.getParameter("txtReg"));
            String nomcl = request.getParameter("txtNom");
            String nomco = request.getParameter("txtNomCon");
            String fh = request.getParameter("txtFecha");
            String itn = request.getParameter("txtInstitucion");
            String hora = request.getParameter("txtHora");
            String drc = request.getParameter("txtDireccion");
            
            try {
                PreparedStatement sta=ConexionDB.getConexion()
                        .prepareStatement("insert into prueba values(?,?,?,?,?,?,?)");
                
                sta.setInt(1, cod);
                sta.setString(2, nomcl);
                sta.setString(3, nomco);
                sta.setString(4, fh);
                sta.setString(5, itn);
                sta.setString(6, hora);
                sta.setString(7, drc);
                
                sta.executeUpdate();
                request.getRequestDispatcher("MensajeN.jsp").forward(request, response);
            } catch (Exception e) {
            }
            
        } else if(op.equals("buscarC")){
            int idConductor=Integer.parseInt(request.getParameter("idConductor"));
            try {
                PreparedStatement sta=ConexionDB.getConexion()
                        .prepareStatement("Select * from conductor where idConductor='"+idConductor+"'");
                rs=sta.executeQuery();
                Conductor conductor=null;
                while(rs.next()){
                    conductor=new Conductor();
                    conductor.setIdconductor(rs.getInt(1));
                        conductor.setNombres(rs.getString(2));
                        conductor.setApellidos(rs.getString(3));
                        conductor.setEdad(rs.getInt(4));
                        conductor.setNacionalidad(rs.getString(5));
                        conductor.setDni(rs.getString(6));
                        conductor.setDireccion(rs.getString(7));
                        conductor.setTelefono(rs.getString(8));
                        conductor.setCorreo(rs.getString(9));
                        conductor.setUsuario(rs.getString(10));
                        conductor.setContraseña(rs.getString(11));
                        conductor.setBrevete(rs.getString(12));
                        conductor.setPlaca(rs.getString(13));
                        conductor.setModelo(rs.getString(14));
                        conductor.setIdtipo(rs.getInt(15));
                }
                request.setAttribute("conductor", conductor);
                request.getRequestDispatcher("perfilConductorVC.jsp").forward(request, response);
            } catch (Exception e) {
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
