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
public class Horario {

    private int id_horario;
    private String horario;

     public Horario() {}

    public Horario(int id_horario, String horario) {
     this.id_horario= id_horario;   
     this.horario= horario;
    }
    /**
     * @return the id_horario
     */
    public int getId_horario() {
        return id_horario;
    }

    /**
     * @param id_horario the id_horario to set
     */
    public void setId_horario(int id_horario) {
        this.id_horario = id_horario;
    }

    /**
     * @return the horario
     */
    public String getHorario() {
        return horario;
    }

    /**
     * @param horario the horario to set
     */
    public void setHorario(String horario) {
        this.horario = horario;
    }

}
