/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;

import Intefaces.CRUD;
import entidades.Profesor;
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
public class ProfesorDAO implements CRUD {

    private conexionDB db;
    private Connection con;
    private Statement stm;
    private ResultSet rst;
    private PreparedStatement pst;
    private String strSQL;

    public ProfesorDAO() {
        db = new conexionDB();
    }

    @Override
    public List getProfesores() {

        List<Profesor> listProfe=new ArrayList<>();
        try
        {
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                stm=con.createStatement();
                strSQL=" SELECT id_profesor, nombres_profesor, apellidos_profesor, cedula";
                strSQL+=" FROM tblprofesor";
               strSQL+=" WHERE estado='A'";
                strSQL+=" ORDER BY id_profesor";
                rst=stm.executeQuery(strSQL);
                while (rst.next())
                {
                    Profesor profesor=new Profesor();
                    profesor.setId_profesor(rst.getInt("id_profesor"));
                    profesor.setNombres_profesor(rst.getString("nombres_profesor"));
                    profesor.setApellidos_profesor(rst.getString("apellidos_profesor"));
                    profesor.setCedula(rst.getString("cedula"));
                    listProfe.add(profesor);
                }
                rst.close();
                stm.close();
                con.close();
            }
        } catch (java.sql.SQLException e) {
            listProfe = null;
            System.out.println("Excepción: " + e.toString());
        } catch (Exception e) {
            listProfe = null;
            System.out.println("Excepción: " + e.toString());
        }
        return listProfe;

    }

    @Override
    public Profesor getProfesor(int id) {
        Profesor profesor= new Profesor();
        try
        {
            
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {        
                pst=con.prepareStatement("SELECT nombres_profesor, apellidos_profesor from tblprofesor WHERE id_profesor=?");
                pst.setInt(1, id);
                rst = pst.executeQuery(strSQL);
                
                while (rst.next()){
                 
                    profesor.setNombres_profesor(rst.getString(1));
                    profesor.setApellidos_profesor(rst.getString(2));
                }
            }
        } catch (SQLException ex) {
            System.err.println("Error "+ ex);
        }
        return profesor;
    }

    @Override
    public int agregar(Profesor p) {
       int resultado=0;
        
         try{
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null){
           // stm=con.createStatement();
            pst=con.prepareStatement("INSERT INTO tblprofesor(nombres_profesor, apellidos_profesor, cedula) VALUES (?,?,?)");
            pst.setString(1, p.getNombres_profesor());
            pst.setString(2, p.getApellidos_profesor());
            pst.setString(3, p.getCedula());
            resultado=pst.executeUpdate();
          //  stm.close();
            con.close();
            pst.close();
            }
         }catch(SQLException e){
             System.out.println("Error al agregar en la BD");
         } 
         return resultado;
    }

    @Override
    public int editar(Profesor p) {
        int r = 0;

        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                pst = con.prepareStatement("UPDATE tblprofesor SET cedula=?, nombres_profesor=?, apellidos_profesor=? WHERE id_profesor=?");
                pst.setString(1, p.getCedula());
                pst.setString(2, p.getNombres_profesor());
                pst.setString(3, p.getApellidos_profesor());
                pst.setInt(4, p.getId_profesor());
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
    public void eliminar(Profesor id_profesor) {
       
       try{
           con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null){
            pst=con.prepareStatement("UPDATE tblprofesor SET estado= 'I' WHERE id_profesor= " + id_profesor.getId_profesor());
            pst.executeUpdate();
            
            pst.close();
            con.close();
            }
       }catch(SQLException e){
           System.out.println("Excepción: " + e.toString());
       }
    }   
}
