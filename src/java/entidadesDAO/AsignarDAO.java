/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;

import Intefaces.AsignarCRUD;
import entidades.Asignar;
import entidades.Horario;
import entidades.Materia;
import entidades.Periodo;
import entidades.Profesor;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import utils.conexionDB;

/**
 *
 * @author user
 */
public class AsignarDAO implements AsignarCRUD {

    private conexionDB db;
    private Connection con;
    private Statement stm;
    private ResultSet rst;
    private PreparedStatement pst;
    private String strSQL;

    public AsignarDAO() {
        db = new conexionDB();
    }

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

        List<Asignar> list = new ArrayList<>();
        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                strSQL = " SELECT a.id_asignacion, a.id_micro, p.id_profesor,p.nombres_profesor,h.id_horario, h.horario,\n"
                        + "pe.id_periodo,pe.semestre_modulo,m.id_materia,m.nombre_materia\n"
                        + "FROM public.tblasignar a \n"
                        + "JOIN public.tblprofesor p ON a.id_profesor=p.id_profesor\n"
                        + "JOIN public.tblhorario h ON a.id_horario = h.id_horario \n"
                        + "JOIN public.tblperiodo pe ON a.id_periodo = pe.id_periodo\n"
                        + "JOIN public.tblmaterias m ON a.id_materia = m.id_materia WHERE a.estado_asignacion='A'";
                rst = stm.executeQuery(strSQL);
                while (rst.next()) {
                    Asignar a = new Asignar();
                    a.setId_asignacion(rst.getInt("id_asignacion"));
                    a.setMateria(new Materia(rst.getInt("id_materia"),
                            rst.getString("nombre_materia")));
                    a.setProfesor(new Profesor(rst.getInt("id_profesor"),
                            rst.getString("nombres_profesor")));
                    a.setHorario(new Horario(rst.getInt("id_horario"),
                            rst.getString("horario")));
                    a.setPeriodo(new Periodo(rst.getInt("id_periodo"),
                            rst.getString("semestre_modulo")));
                    a.setMicro(rst.getInt("id_micro"));

                    list.add(a);
                }
                rst.close();
                stm.close();
                con.close();
            }
        } catch (java.sql.SQLException e) {
            list = null;
            System.out.println("Excepción: " + e.toString());
        } catch (Exception e) {
            list = null;
            System.out.println("Excepción: " + e.toString());
        }
        return list;
    }

    @Override
    public int agregar(Asignar a) {
        int resultado = 0;
        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                pst = con.prepareStatement("INSERT INTO tblasignar(\n"
                        + " id_profesor, id_materia, id_periodo, id_horario, id_temp)\n"
                        + " VALUES (?, ?, ?, ?, ?);");
                pst.setInt(1, a.getProfesor().getId_profesor());
                pst.setInt(2, a.getMateria().getId_materia());
                pst.setInt(3, a.getPeriodo().getId_periodo());
                pst.setInt(4, a.getHorario().getId_horario());
                pst.setInt(5, a.getTemporada().getId_temp());
                resultado = pst.executeUpdate();
                stm.close();
                con.close();
                pst.close();
            }
        } catch (SQLException e) {
            System.out.println("Error al agregar en la BD");
        }
        return resultado;
    }

    @Override
    public int editar(Asignar p) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void eliminar(Asignar id_asignacion) {
     try{
           con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null){
            pst=con.prepareStatement("UPDATE tblasignar SET estado_asignacion= 'I' WHERE id_asignacion= " + id_asignacion.getId_asignacion());
            pst.executeUpdate();
            
            pst.close();
            con.close();
            }
       }catch(SQLException e){
           System.out.println("Excepción: " + e.toString());
       }
    }

    @Override
    public void cambiarEstadoMicro(Asignar a) {
        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                pst = con.prepareStatement("UPDATE tblasignar SET fecha_entrega=now(), id_micro="
                        + (a.getMicro()== 1 || a.getMicro()== 2 ? 2 : 3 )
                        + " WHERE id_asignacion = " + a.getId_asignacion());
 
                pst.executeUpdate();
                con.close();
                pst.close();
            }
        } catch (SQLException e) {
            System.out.println("Error al actualizar estado en la BD");
        }
    }

}
