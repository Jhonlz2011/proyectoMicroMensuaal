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

    
    public Periodo(){}

    public Periodo(int id_periodo, String semestre_modulo) {
        this.id_periodo= id_periodo;
        this.semestre_modulo= semestre_modulo;
    }

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
}
