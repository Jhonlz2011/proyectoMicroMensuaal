/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;


import entidades.Periodo;
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
public class PeriodoDAO {

    private conexionDB db;
    private Connection con;
    private Statement stm;
    private ResultSet rst;
    private PreparedStatement pst;
    private String strSQL;

    public PeriodoDAO() {
        db = new conexionDB();
    }

     public List getPeriodos() {
        List<Periodo> list=new ArrayList<>();
        try
        {
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                stm=con.createStatement();
                strSQL=" Select * FROM tblperiodo";       
                rst=stm.executeQuery(strSQL);
                while (rst.next())
                {
                    Periodo p =new Periodo();
                    p.setId_periodo(rst.getInt("id_periodo"));
                    p.setSemestre_modulo(rst.getString("semestre_modulo"));    
                    list.add(p);
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
