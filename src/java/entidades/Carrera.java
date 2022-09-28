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
public class Carrera {

    private int id_carrera;
    private String nombre_carrera;
    private String estado_carrera;
   

    public Carrera(int id_carrera, String nombre_carrera) {

        this.id_carrera = id_carrera;
        this.nombre_carrera = nombre_carrera;
    }
        public Carrera(){}
    /**
     * @return the id_carerra
     */
    public int getId_carrera() {
        return id_carrera;
    }

    /**
     * @param id_carrera
     */
    public void setId_carrera(int id_carrera) {
        this.id_carrera = id_carrera;
    }

    /**
     * @return the nombre_carrera
     */
    public String getNombre_carrera() {
        return nombre_carrera;
    }

    /**
     * @param nombre_carrera the nombre_carrera to set
     */
    public void setNombre_carrera(String nombre_carrera) {
        this.nombre_carrera = nombre_carrera;
    }

    /**
     * @return the estado_carrera
     */
    public String getEstado_carrera() {
        return estado_carrera;
    }

    /**
     * @param estado_carrera the estado_carrera to set
     */
    public void setEstado_carrera(String estado_carrera) {
        this.estado_carrera = estado_carrera;
    }
}