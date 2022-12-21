/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;

import Intefaces.MateriaCRUD;
import entidades.Materia;

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
public class MateriaDAO implements MateriaCRUD {

    private conexionDB db;
    private Connection con;
    private Statement stm;
    private ResultSet rst;
    private PreparedStatement pst;
    private String strSQL;

    public MateriaDAO() {
        db = new conexionDB();
    }

    @Override
    public List getMaterias() {

        List<Materia> listMate=new ArrayList<>();
        try
        {
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                stm=con.createStatement();
                strSQL=" SELECT id_materia, nombre_materia, codigo_materia";
                strSQL+=" FROM tblmaterias";
               strSQL+=" WHERE estado_materia='A'";
                strSQL+=" ORDER BY id_materia";
                rst=stm.executeQuery(strSQL);
                while (rst.next())
                {
                    Materia materia=new Materia();
                    materia.setId_materia(rst.getInt("id_materia"));
                    materia.setNombre_materia(rst.getString("nombre_materia"));
                     materia.setCodigo_materia(rst.getString("codigo_materia"));
                    listMate.add(materia);
                }
                rst.close();
                stm.close();
                con.close();
            }
        } catch (java.sql.SQLException e) {
            listMate = null;
            System.out.println("Excepción: " + e.toString());
        } catch (Exception e) {
            listMate = null;
            System.out.println("Excepción: " + e.toString());
        }
        return listMate;

    }

    @Override
    public Materia getMateria(int id) {  
        Materia materia= new Materia();
        try
        {
            
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                pst=con.prepareStatement("SELECT nombre_materia from tblmaterias WHERE id_materia=?");
                pst.setInt(1, id);
                rst = pst.executeQuery(strSQL);
                
                while (rst.next()){
                    materia.setNombre_materia(rst.getString(1));   
                }
            }
        } catch (SQLException ex) {
            System.err.println("Error "+ ex);
        }
        return materia;
    }

    @Override
    public int agregar(Materia m) {
        int resultado = 0;

        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                pst = con.prepareStatement("INSERT INTO tblmaterias(nombre_materia, codigo_materia) VALUES (?,?)");
                pst.setString(1, m.getNombre_materia()); 
                pst.setString(2, m.getCodigo_materia()); 
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
    public int editar(Materia m) {
        int r = 0;

        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                pst = con.prepareStatement("UPDATE tblmaterias SET nombre_materia=?, codigo_materia=? WHERE id_materia=?");
              
                pst.setString(1, m.getNombre_materia());
                pst.setString(2, m.getCodigo_materia());
                pst.setInt(3, m.getId_materia());
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
    public void eliminar(Materia id_materia) {
       
       try{
           con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null){
            pst=con.prepareStatement("UPDATE tblmaterias SET estado_materia= 'I' WHERE id_materia= " + id_materia.getId_materia());
            pst.executeUpdate();
            pst.close();
            con.close();
            }
       }catch(SQLException e){
           System.out.println("Excepción: " + e.toString());
       }
    }   
}
