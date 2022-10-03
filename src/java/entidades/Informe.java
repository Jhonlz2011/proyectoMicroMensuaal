/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.sql.Date;

/**
 *
 * @author user
 */
public class Informe {

    private int id_informe;
    private Materia materia;
    private Profesor profesor;
    private Periodo periodo;
    private Horario horario;
    private int micro;
    private Date fecha_entrega;
    
    public Informe() {}
    

    public Informe(int id_informe, Materia materia, Profesor profesor, Periodo periodo, Horario horario, int micro, Date fecha_entrega) {
        this.id_informe = id_informe;
        this.materia = materia;
        this.profesor = profesor;
        this.periodo = periodo;
        this.horario = horario;
        this.micro = micro;
        this.fecha_entrega = fecha_entrega;
    }
       
    public int getId_informe() {
        return id_informe;
    }

    public void setId_informe(int id_informe) {
        this.id_informe = id_informe;
    }

    public Materia getMateria() {
        return materia;
    }

    public void setMateria(Materia materia) {
        this.materia = materia;
    }

    public Profesor getProfesor() {
        return profesor;
    }

    public void setProfesor(Profesor profesor) {
        this.profesor = profesor;
    }

    public Periodo getPeriodo() {
        return periodo;
    }

    public void setPeriodo(Periodo periodo) {
        this.periodo = periodo;
    }

    public Horario getHorario() {
        return horario;
    }

    public void setHorario(Horario horario) {
        this.horario = horario;
    }

    public int getMicro() {
        return micro;
    }

    public void setMicro(int micro) {
        this.micro = micro;
    }

    public Date getFecha_entrega() {
        return fecha_entrega;
    }

    public void setFecha_entrega(Date fecha_entrega) {
        this.fecha_entrega = fecha_entrega;
    }
}
