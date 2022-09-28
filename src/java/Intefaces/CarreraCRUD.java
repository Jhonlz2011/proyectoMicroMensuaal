
package Intefaces;

import entidades.Carrera;
import java.util.List;


public interface CarreraCRUD {
    public List getCarreras();
    public Carrera getCarrera(int id_carrera);
    public int agregar(Carrera c);
    public int editar(Carrera c);
    public void eliminar(Carrera id_carrera);
}
