
package Intefaces;

import entidades.Profesor;
import java.util.List;


public interface CRUD {
    public List listar();
    public Profesor list(int id);
    public boolean add(Profesor per);
    public boolean edit(Profesor per);
    public boolean eliminar(int id);
}
