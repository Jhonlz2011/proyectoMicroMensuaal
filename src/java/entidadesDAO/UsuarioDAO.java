/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesDAO;
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
public class UsuarioDAO
{
    private conexionDB db;
    private Connection con;
    private Statement stm;
    private ResultSet rst;
    private String strSQL;
    
    public UsuarioDAO()
    {
        db=new conexionDB();
    }
    
    public List<Usuario> getListadoUsuarios()
    {
        List<Usuario> objLisUsr=new ArrayList<Usuario>();
        try
        {
            //Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/dbestudiantes", "postgres", "ClavePostgreSQL2017");
            con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                stm=con.createStatement();
                strSQL=" SELECT id_usuario, nombre_usuario, estado_usuario, clave_usuario";
                strSQL+=" FROM tblusuarios";
                //strSQL+=" WHERE st_reg='A'";
                strSQL+=" ORDER BY id_usuario";
                rst=stm.executeQuery(strSQL);
                while (rst.next())
                {
                    Usuario objUsr=new Usuario();
                    objUsr.setId_usuario(rst.getInt("id_usuario"));
                    objUsr.setNombre_usuario(rst.getString("nombre_usuario"));
                    objUsr.setEstado_usuario(rst.getString("estado_usuario"));
                    objUsr.setClave(rst.getString("clave_usuario"));
                    objLisUsr.add(objUsr);
                }
                rst.close();
                stm.close();
                con.close();
            }
        }
        catch (java.sql.SQLException e)
        {
            objLisUsr=null;
            System.out.println("Excepción: " + e.toString());
        }
        catch (Exception e)
        {
            objLisUsr=null;
            System.out.println("Excepción: " + e.toString());
        }
        return objLisUsr;
    }
    
}
