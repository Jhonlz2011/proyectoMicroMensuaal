/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utils;

/**
 *
 * @author user
 */
public class conexionDB {
    
     private String strDriCon, strStrCon, strUsrCon, strClaCon;

   
    public conexionDB()
    {
        cargar(); 
    }

    private boolean cargar()
    {
       
        boolean res=true;
        try
        {     
            strDriCon = "org.postgresql.Driver";
            strStrCon = "jdbc:postgresql://localhost:5434/dbproyectoweb";
            strUsrCon = "postgres";
            strClaCon = "1234";
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
        return strDriCon;
    }
    
    /**
     * Esta función devuelve la cadena de conexión.
     * @return La cadena de conexión.
     */
    public String getStringConexion()
    {
        return strStrCon;
    }
    
    /**
     * Esta función devuelve el usuario de conexión.
     * @return El usuario de conexión.
     */
    public String getUsuarioConexion()
    {
        return strUsrCon;
    }
    
    /**
     * Esta función devuelve la clave de conexión.
     * @return La clave de conexión.
     */
    public String getClaveConexion()
    {
        return strClaCon;
    }
    
}

