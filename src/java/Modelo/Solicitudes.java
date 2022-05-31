
package Modelo;


public class Solicitudes {
    private int codreg;
    private String nomclie;
    private String nomcon;
    private String fecha;
    private String cole;
    private String hrecog;
    private String direc;

    public Solicitudes(int codreg, String nomclie, String nomcon, String fecha, 
            String cole, String hrecog, String direc) {
        this.codreg = codreg;
        this.nomclie = nomclie;
        this.nomcon = nomcon;
        this.fecha = fecha;
        this.cole = cole;
        this.hrecog = hrecog;
        this.direc = direc;
    }

    public int getCodreg() {
        return codreg;
    }

    public void setCodreg(int codreg) {
        this.codreg = codreg;
    }

    public String getNomclie() {
        return nomclie;
    }

    public void setNomclie(String nomclie) {
        this.nomclie = nomclie;
    }

    public String getNomcon() {
        return nomcon;
    }

    public void setNomcon(String nomcon) {
        this.nomcon = nomcon;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getCole() {
        return cole;
    }

    public void setCole(String cole) {
        this.cole = cole;
    }

    public String getHrecog() {
        return hrecog;
    }

    public void setHrecog(String hrecog) {
        this.hrecog = hrecog;
    }

    public String getDirec() {
        return direc;
    }

    public void setDirec(String direc) {
        this.direc = direc;
    }
    
}
