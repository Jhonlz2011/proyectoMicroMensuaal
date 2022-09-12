/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Utils;

/**
 *
 * @author user
 */
public class conexionDB {
    
  private String strDriCon, strStrCon, strUsrCon, strClaCon;

    public conexionDB()
    {
        if (!cargar())
            javax.swing.JOptionPane.showMessageDialog(null, "Error al leer el archivo de configuración.");
    }

    private boolean cargar()
    {
        boolean res=true;
        try
        {
          
            java.util.Properties proArc=new java.util.Properties();
          
            java.io.FileInputStream fis=new java.io.FileInputStream("config/Conexion.properties");
            proArc.load(fis);
            fis.close();
           
            strDriCon=proArc.getProperty("DriverConexion");
            strStrCon=proArc.getProperty("StringConexion");
            strUsrCon=proArc.getProperty("UsuarioConexion");
            strClaCon=proArc.getProperty("ClaveConexion");
            proArc=null;
        }
        catch (java.io.IOException e)
        {
            res=false;
        }
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

