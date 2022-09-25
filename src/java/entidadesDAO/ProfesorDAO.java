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
import entidades.Usuario;
import java.sql.PreparedStatement;

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
        List<Profesor> listProfe = new ArrayList<>();
        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                strSQL = " SELECT *";
                strSQL += " FROM tblprofesor";
                // strSQL+=" WHERE estado='A'";
                strSQL += " ORDER BY id_profesor";
                rst = stm.executeQuery(strSQL);
                while (rst.next()) {
                    Profesor profesor = new Profesor();
                    profesor.setId_profesor(rst.getInt("id_profesor"));
                    profesor.setNombres_profesor(rst.getString("nombres_profesor"));
                    profesor.setApellidos_profesor(rst.getString("apellidos_profesor"));
                    profesor.setEstado(rst.getString("estado"));
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
        Profesor profesorSeleccionado = new Profesor();
        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                pst = con.prepareStatement("SELECT * FROM tblprofesor WHERE id_profesor='?'");
                pst.setString(1, ""+id);
                rst = stm.executeQuery(strSQL);

                profesorSeleccionado.setId_profesor(id);
                profesorSeleccionado.setNombres_profesor(rst.getString("nombres_profesor"));
                profesorSeleccionado.setApellidos_profesor(rst.getString("apellidos_profesor"));
                profesorSeleccionado.setEstado(rst.getString("estado"));

                rst.close();
                stm.close();
                con.close();
            }
        } catch (java.sql.SQLException e) {
            profesorSeleccionado = null;
            System.out.println("Excepción: " + e.toString());
        } catch (Exception e) {
            profesorSeleccionado = null;
            System.out.println("Excepción: " + e.toString());
        }
        return profesorSeleccionado;
    }

    @Override
    public int agregar(Profesor p) {
        int resultado = 0;

        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                pst = con.prepareStatement("INSERT INTO tblprofesor(nombres_profesor, apellidos_profesor) VALUES (?,?)");
                pst.setString(1, p.getNombres_profesor());
                pst.setString(2, p.getApellidos_profesor());
                resultado = pst.executeUpdate();
                stm.close();
                con.close();
                pst.close();
            }
        } catch (Exception e) {
            System.out.println("Error al agregar en la BD");
        }
        return resultado;
    }

    @Override
    public int editar(Profesor p) {
        int resultado = 0;

        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                pst = con.prepareStatement("UPDATE tblprofesor SET nombres_profesor='?', apellidos_profesor='?' WHERE id_profesor='?'");
                pst.setString(1, p.getNombres_profesor());
                pst.setString(2, p.getApellidos_profesor());
                pst.setString(2, String.valueOf(p.getId_profesor()));
                resultado = pst.executeUpdate();
                stm.close();
                con.close();
                pst.close();
            }
        } catch (Exception e) {
            System.out.println("Error al actualizar en la BD");
        }
        return resultado;
    }

    @Override
    public int eliminar(int id) {
        int resultado = 0;

        try {
            con = DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con != null) {
                stm = con.createStatement();
                pst = con.prepareStatement("DELETE FROM tblprofesor WHERE id_profesor='?'");
                pst.setString(1, String.valueOf(id));
                resultado = pst.executeUpdate();
                stm.close();
                con.close();
                pst.close();
            }
        } catch (Exception e) {
            System.out.println("Error al borrar en la BD");
        }
        return resultado;
    }

}
