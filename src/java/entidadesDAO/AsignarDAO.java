/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;

import Intefaces.AsignarCRUD;
import entidades.Asignar;
import java.util.List;

/**
 *
 * @author user
 */
public class AsignarDAO implements AsignarCRUD{

    @Override
    public List getCboProfesor() {
         ProfesorDAO list = new ProfesorDAO();
        return list.getProfesores();
    }

    @Override
    public List getCboMateria() {
        MateriaDAO list = new MateriaDAO();
        return list.getMaterias();
    }

    @Override
    public List getCboPeriodo() {
        PeriodoDAO list = new PeriodoDAO();
        return list.getPeriodos();
    }

    @Override
    public List getCboHorario() {
         HorarioDAO list = new HorarioDAO();
        return list.getHorario();
    }
    
      @Override
    public List getCboTemporada() {
        TemporadaDAO list = new TemporadaDAO();
        return list.getTemporada();
    }

    @Override
    public List getCboMicro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List getAsignaciones() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int agregar(Asignar a) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int editar(Asignar p) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void eliminar(Asignar id_asignacion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

  
    
}
