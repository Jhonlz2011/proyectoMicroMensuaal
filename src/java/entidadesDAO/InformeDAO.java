/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;

import Intefaces.AsignarCRUD;
import Intefaces.InformeCRUD;
import entidades.Asignar;
import entidades.Carrera;
import entidades.Horario;
import entidades.Informe;
import entidades.Materia;
import entidades.Periodo;
import entidades.Profesor;
import entidades.Temporada;
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
public class InformeDAO implements InformeCRUD {

    private conexionDB db;
    private Connection con;
    private Statement stm;
    private ResultSet rst;
    private PreparedStatement pst;
    private String strSQL;

    public InformeDAO() {
        db = new conexionDB();
    }

    @Override
    public List getInforme() {

        List<Informe> list = new ArrayList<>();
        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                strSQL = " SELECT a.id_asignacion,  p.id_profesor,p.nombres_profesor,h.id_horario, h.horario,\n"
                        + "pe.id_periodo,pe.semestre_modulo,a.id_micro, m.id_materia,m.nombre_materia\n"
                        + "FROM public.tblasignar a \n"
                        + "JOIN public.tblprofesor p ON a.id_profesor=p.id_profesor\n"
                        + "JOIN public.tblhorario h ON a.id_horario = h.id_horario \n"
                        + "JOIN public.tblperiodo pe ON a.id_periodo = pe.id_periodo\n"
                        + "JOIN public.tblmaterias m ON a.id_materia = m.id_materia WHERE a.id_micro=3";
                rst = stm.executeQuery(strSQL);
                
                int i = 1;
                
                while (rst.next()) {
                    Informe a = new Informe();
                    a.setId_informe(rst.getInt(i));
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
                    
                    i++;
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
}
