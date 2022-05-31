package Modelo;

public class RegistroCliente {

    private int idcliente;
    private String nombres;
    private String apellidos;
    private String direccion;
    private int telefono;
    private String correo;
    private String contraseña;
    private String usuario;
    private int idtipo;

    public RegistroCliente(String nombres, String apellidos, String direccion, int telefono, String correo, String contraseña, String usuario, int idtipo) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.direccion = direccion;
        this.telefono = telefono;
        this.correo = correo;
        this.contraseña = contraseña;
        this.usuario = usuario;
        this.idtipo = idtipo;
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

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public int getIdtipo() {
        return idtipo;
    }

    public void setIdtipo(int funcion) {
        this.idtipo = idtipo;
    }

  

}
