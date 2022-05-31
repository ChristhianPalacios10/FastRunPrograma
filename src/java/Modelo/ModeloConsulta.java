
package Modelo;

import Utils.ConexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

public class ModeloConsulta {
    
    Conductor conductor=null;
    Hijo hijo=null;
    Connection cn=null;
    PreparedStatement stp=null;
    ResultSet rs=null;
    ArrayList<Conductor> listaC=null;
     ArrayList<Hijo> listaH=null;
    
    public ArrayList<Conductor> ListarConductores(){
        try {
                    PreparedStatement psta = ConexionDB.getConexion()
                            .prepareStatement("select * from conductor");
                    ResultSet rs = psta.executeQuery();
                    listaC=new ArrayList<>();
                    while(rs.next()) {
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
                        listaC.add(conductor); 
                    }
                } catch (Exception e) {
                }
        return listaC;
    }
    public ArrayList<Hijo> ListarHijos(int idCliente){
        try {
                    PreparedStatement psta = ConexionDB.getConexion()
                            .prepareStatement("select * from hijo where idCliente='"+idCliente+"' ");
                    ResultSet rs = psta.executeQuery();
                    listaH=new ArrayList<>();
                    while(rs.next()) {
                        hijo=new Hijo();
                        hijo.setDnihijo(rs.getString(1));
                        hijo.setNombres(rs.getString(2));
                        hijo.setApellidos(rs.getString(3));
                        hijo.setNominstitucion(rs.getString(4));
                        hijo.setDirecinstitucion(rs.getString(5));
                        hijo.setIdcliente(rs.getInt(6));
                        listaH.add(hijo); 
                    }
                } catch (Exception e) {
                }
        return listaH;
    }
}
