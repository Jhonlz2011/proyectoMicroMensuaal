/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;
import entidades.Profesor;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;
import entidades.Usuario;

import utils.conexionDB;

/**
 *
 * @author Eddye
 */
public class ProfesorDAO
{
    private conexionDB db;
    private Connection con;
    private Statement stm;
    private ResultSet rst;
    private String strSQL;
    
    public ProfesorDAO()
    {
        db=new conexionDB();
    }
    
    public List<Profesor> getListadoProfesor()
    {
        List<Profesor> listProfe=new ArrayList<>();
        try
        {
            
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                stm=con.createStatement();
                strSQL=" SELECT id_profesor, nombres_profesor, apellidos_profesor";
                strSQL+=" FROM tblprofesor";
                strSQL+=" WHERE estado='A'";
                strSQL+=" ORDER BY id_profesor";
                rst=stm.executeQuery(strSQL);
                while (rst.next())
                {
                    Profesor profesor=new Profesor();
                    profesor.setId_profesor(rst.getInt("id_usuario"));
                    profesor.setNombres_profesor(rst.getString("nombres_profesor"));
                    profesor.setApellidos_profesor(rst.getString("apellidos_profesor"));
                 //   profesor.setEstado(rst.getString("clave_usuario"));
                    listProfe.add(profesor);
                }
                rst.close();
                stm.close();
                con.close();
            }
        }
        catch (java.sql.SQLException e)
        {
            listProfe=null;
            System.out.println("Excepción: " + e.toString());
        }
        catch (Exception e)
        {
            listProfe=null;
            System.out.println("Excepción: " + e.toString());
        }
        return listProfe;
    }
    
}
