
package Intefaces;

import entidades.Profesor;
import java.util.List;


public interface CRUD {
    public List getProfesores();
    public Profesor getProfesor(int id);
    public int agregar(Profesor p);
    public int editar(Profesor p);
    public int eliminar(int id);
}
