/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;

import Intefaces.CarreraCRUD;
import entidades.Carrera;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import utils.conexionDB;

/**
 *
 * @author Eddye
 */
public class CarreraDAO implements CarreraCRUD {

    private conexionDB db;
    private Connection con;
    private Statement stm;
    private ResultSet rst;
    private PreparedStatement pst;
    private String strSQL;

    public CarreraDAO() {
        db = new conexionDB();
    }

    @Override
    public List getCarreras() {
        List<Carrera> listCarre=new ArrayList<>();
        try
        {
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                stm=con.createStatement();
                strSQL=" SELECT id_carrera, nombre_carrera";
                strSQL+=" FROM tblcarrera";
               strSQL+=" WHERE estado_carrera='A'";
                strSQL+=" ORDER BY id_carrera";
                rst=stm.executeQuery(strSQL);
                while (rst.next())
                {
                    Carrera carrera=new Carrera();
                    carrera.setId_carrera(rst.getInt("id_carrera"));
                    carrera.setNombre_carrera(rst.getString("nombre_carrera"));              
                    listCarre.add(carrera);
                }
                rst.close();
                stm.close();
                con.close();
            }
        } catch (java.sql.SQLException e) {
            listCarre = null;
            System.out.println("Excepción: " + e.toString());
        } catch (Exception e) {
            listCarre = null;
            System.out.println("Excepción: " + e.toString());
        }
        return listCarre;

    }

    @Override
    public Carrera getCarrera(int id) { 
        Carrera carrera= new Carrera();
        try
        {
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                pst=con.prepareStatement("SELECT nombre_carrera from tblcarrera WHERE id_materia=?");
                pst.setInt(1, id);
                rst = pst.executeQuery(strSQL);
                while (rst.next()){   
                    carrera.setNombre_carrera(rst.getString(1));    
                }
            }
        } catch (SQLException ex) {
            System.err.println("Error "+ ex);
        }
        return carrera;
    }

    @Override
    public int agregar(Carrera c) {
        int resultado = 0;
        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                pst = con.prepareStatement("INSERT INTO tblcarrera(nombre_carrera) VALUES (?)");
                pst.setString(1, c.getNombre_carrera());
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
    public int editar(Carrera c) {
        int r = 0;

        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                pst = con.prepareStatement("UPDATE tblcarrera SET nombre_carrera=? WHERE id_carrera=?");
              
                pst.setString(1, c.getNombre_carrera());     
                pst.setInt(2, c.getId_carrera());
                r = pst.executeUpdate();
                con.close();
                pst.close();
            }
        } catch (SQLException e) {
            System.out.println("Error al actualizar en la BD");
        }
        return r;
    }

   
    @Override
    public void eliminar(Carrera id_carrera) {
       
       try{
           con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null){
            pst=con.prepareStatement("UPDATE tblcarrera SET estado_carrera= 'I' WHERE id_carrera= " + id_carrera.getId_carrera());
            pst.executeUpdate();
            pst.close();
            con.close();
            }
       }catch(SQLException e){
           System.out.println("Excepción: " + e.toString());
       }
    }   
}