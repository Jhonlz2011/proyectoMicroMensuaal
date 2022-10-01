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
public class Asignar {

    private int id_asignacion;
    private Materia materia;
    private Profesor profesor;
    private Periodo periodo;
    private Horario horario;
    private Micro micro;
    private Date fecha_entrega;
    private String estado_asignacion;
    private Temporada temporada;
    
    public Asignar() {profesor = new Profesor();}
    

    public Asignar(int id_asignacion, Materia materia, Profesor profesor, Periodo periodo, Horario horario, Micro micro, Date fecha_entrega) {
        this.id_asignacion = id_asignacion;
        this.materia = materia;
        this.profesor = profesor;
        this.periodo = periodo;
        this.horario = horario;
        this.micro = micro;
        this.fecha_entrega= fecha_entrega;
    }
    
    public Asignar(int id_asignacion, Materia materia, Profesor profesor, Periodo periodo, Horario horario, Micro micro) {
        this.id_asignacion = id_asignacion;
        this.materia = materia;
        this.profesor = profesor;
        this.periodo = periodo;
        this.horario = horario;
        this.micro = micro;    
    }
    
    public int getId_asignacion() {
        return id_asignacion;
    }

    public void setId_asignacion(int id_asignacion) {
        this.id_asignacion = id_asignacion;
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

    public Micro getMicro() {
        return micro;
    }

    public void setMicro(Micro micro) {
        this.micro = micro;
    }

    public Date getFecha_entrega() {
        return fecha_entrega;
    }

    public void setFecha_entrega(Date fecha_entrega) {
        this.fecha_entrega = fecha_entrega;
    }

    public String getEstado_asignacion() {
        return estado_asignacion;
    }

    public void setEstado_asignacion(String estado_asignacion) {
        this.estado_asignacion = estado_asignacion;
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
