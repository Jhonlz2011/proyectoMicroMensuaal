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
public class Materia {
    private int id_materia;
    private String nombre_materia, estado_materia; 
    
    public Materia(int id_materia, String nombre_materia) {

        this.id_materia = id_materia;
        this.nombre_materia = nombre_materia;
    }

    public Materia() {
    }
    
    /**
     * @return the id_materia
     */
    public int getId_materia() {
        return id_materia;
    }

    /**
     * @param id_materia the id_materia to set
     */
    public void setId_materia(int id_materia) {
        this.id_materia = id_materia;
    }

    /**
     * @return the nombre_materia
     */
    public String getNombre_materia() {
        return nombre_materia;
    }

    /**
     * @param nombre_materia the nombre_materia to set
     */
    public void setNombre_materia(String nombre_materia) {
        this.nombre_materia = nombre_materia;
    }

    /**
     * @return the estado_materia
     */
    public String getEstado_materia() {
        return estado_materia;
    }

    /**
     * @param estado_materia the estado_materia to set
     */
    public void setEstado_materia(String estado_materia) {
        this.estado_materia = estado_materia;
    }

    
}
