
package Modelo;

public class Hijo {
    private String dnihijo;
    private String nombres;
    private String apellidos;
    private String nominstitucion;
    private String direcinstitucion;
    private int idcliente;

    public Hijo(String dnihijo, String nombres, String apellidos, String nominstitucion, String direcinstitucion) {
        this.dnihijo = dnihijo;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.nominstitucion = nominstitucion;
        this.direcinstitucion = direcinstitucion;
    }

    public Hijo() {
    }
    

    public String getDnihijo() {
        return dnihijo;
    }

    public void setDnihijo(String dnihijo) {
        this.dnihijo = dnihijo;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNominstitucion() {
        return nominstitucion;
    }

    public void setNominstitucion(String nominstitucion) {
        this.nominstitucion = nominstitucion;
    }

    public String getDirecinstitucion() {
        return direcinstitucion;
    }

    public void setDirecinstitucion(String direcinstitucion) {
        this.direcinstitucion = direcinstitucion;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }
}
