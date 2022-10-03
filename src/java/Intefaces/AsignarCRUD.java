
package Intefaces;

import entidades.Asignar;
import java.util.List;


public interface AsignarCRUD {
    public List getCboProfesor();
    public List getCboMateria();
    public List getCboPeriodo();
    public List getCboTemporada();
    public List getCboHorario();
    public List getCboMicro();
    public List getAsignaciones();
    public int agregar(Asignar a);
    public int editar(Asignar p);
    public void eliminar(Asignar id_asignacion);
    public void cambiarEstadoMicro(Asignar a);
    
}
