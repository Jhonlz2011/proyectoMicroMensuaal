/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author user
 */
public class Profesor {
    
    private int id_profesor;
    private String nombres_profesor, apellidos_profesor, estado;
    
    public Profesor(){}
    /**
     * @return the id_profesor
     */
    public int getId_profesor() {
        return id_profesor;
    }

    /**
     * @param id_profesor the id_profesor to set
     */
    public void setId_profesor(int id_profesor) {
        this.id_profesor = id_profesor;
    }

    /**
     * @return the nombres_profesor
     */
    public String getNombres_profesor() {
        return nombres_profesor;
    }

    /**
     * @param nombres_profesor the nombres_profesor to set
     */
    public void setNombres_profesor(String nombres_profesor) {
        this.nombres_profesor = nombres_profesor;
    }

    /**
     * @return the apellidos_profesor
     */
    public String getApellidos_profesor() {
        return apellidos_profesor;
    }

    /**
     * @param apellidos_profesor the apellidos_profesor to set
     */
    public void setApellidos_profesor(String apellidos_profesor) {
        this.apellidos_profesor = apellidos_profesor;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }
}
