/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class conexionDB {
    
     private String strDriCon, strStrCon, strUsrCon, strClaCon;
      private String strDriCon2, strStrCon2, strUsrCon2, strClaCon2;
   
    public conexionDB()
    {
        cargar(); 
    }

    private boolean cargar()
    {
       
        boolean res=true;
        try
        {
//          
//            java.util.Properties proArc=new java.util.Properties();
//            try (java.io.FileInputStream fis = new java.io.FileInputStream("config/conexion.properties")) {
//                proArc.load(fis);
//            }
//           
//            strDriCon=proArc.getProperty("DriverConexion");
//            strStrCon=proArc.getProperty("StringConexion");
//            strUsrCon=proArc.getProperty("UsuarioConexion");
//            strClaCon=proArc.getProperty("ClaveConexion");
//            proArc=null;
            
            
            strDriCon2 = "org.postgresql.Driver";
            strStrCon2 = "jdbc:postgresql://localhost:5433/dbproyectoweb";
            strUsrCon2 = "postgres";
            strClaCon2 = "admin";
        }
//        catch (java.io.IOException e)
//        {
//            res=false;
//        }
        catch (Exception e)
        {
            res=false;
        }
        return res;
    }
    

    /**
     * Esta función devuelve el driver de conexión.
     * @return El driver de conexión.
     */
    public String getDriverConexion()
    {
        return strDriCon2;
    }
    
    /**
     * Esta función devuelve la cadena de conexión.
     * @return La cadena de conexión.
     */
    public String getStringConexion()
    {
        return strStrCon2;
    }
    
    /**
     * Esta función devuelve el usuario de conexión.
     * @return El usuario de conexión.
     */
    public String getUsuarioConexion()
    {
        return strUsrCon2;
    }
    
    /**
     * Esta función devuelve la clave de conexión.
     * @return La clave de conexión.
     */
    public String getClaveConexion()
    {
        return strClaCon2;
    }
    
    
    public Connection conectar ( ) {
        
    Connection cn = null ;
    try{
        Class.forName (strDriCon);
        cn = DriverManager.getConnection(strStrCon ,strUsrCon, strClaCon);
    }catch(ClassNotFoundException | SQLException e) {
        System.out.println ("Error al conectar" + e.getMessage()) ;                              
    }
         return cn ;
    }
}

