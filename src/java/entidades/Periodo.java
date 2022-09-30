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
public class Periodo {

    private int id_periodo;
    private String semestre_modulo;
    private Temporada temporada;
    
    public Periodo(){}
    
    /**
     * @return the id_periodo
     */
    
    public int getId_periodo() {
        return id_periodo;
    }

    /**
     * @param id_periodo the id_periodo to set
     */
    public void setId_periodo(int id_periodo) {
        this.id_periodo = id_periodo;
    }

    /**
     * @return the semestre
     */
    public String getSemestre_modulo() {
        return semestre_modulo;
    }

    /**
     * @param semestre_modulo the semestre to set
     */
    public void setSemestre_modulo(String semestre_modulo) {
        this.semestre_modulo = semestre_modulo;
    }
   

    /**
     * @return the temporada
     */
    public Temporada getTemporada() {
        return temporada;
    }

    /**
     * @param temporada the temporada to set
     */
    public void setTemporada(Temporada temporada) {
        this.temporada = temporada;
    }

}
