/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;

import entidades.Carrera;
import entidades.Horario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import utils.conexionDB;

/**
 *
 * @author user
 */
public class HorarioDAO {
    private conexionDB db;
    private Connection con;
    private Statement stm;
    private ResultSet rst;
    private PreparedStatement pst;
    private String strSQL;
    
    public HorarioDAO() {
        db = new conexionDB();
    }
    public List getHorario() {
        List<Horario> list=new ArrayList<>();
        try
        {
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                stm=con.createStatement();
                strSQL=" SELECT *";
                strSQL+=" FROM tblhorario";
                rst=stm.executeQuery(strSQL);
                while (rst.next())
                {
                    Horario horario=new Horario();
                    horario.setId_horario(rst.getInt("id_horario"));
                    horario.setHorario(rst.getString("horario"));              
                    list.add(horario);
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
