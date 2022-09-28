
package Intefaces;

import entidades.Materia;
import java.util.List;


public interface MateriaCRUD {
    public List getMaterias();
    public Materia getMateria(int id_materia);
    public int agregar(Materia m);
    public int editar(Materia m);
    public void eliminar(Materia id_materia);
}
