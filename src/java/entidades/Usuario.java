/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author Eddye
 */
public class Usuario
{
    private int id_usuario;
    private String nombre_usuario, clave_usuario, estado_usuario, nombre;

    public Usuario()
    {
        
    }

    public int getId_usuario()
    {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario)
    {
        this.id_usuario = id_usuario;
    }
    
    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    public String getNombre_usuario()
    {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario)
    {
        this.nombre_usuario = nombre_usuario;
    }

    public String getEstado_usuario()
    {
        return estado_usuario;
    }

  public void setEstado_usuario(String estado_usuario)
   {
       this.estado_usuario = estado_usuario;
  }

    public String getClave()
   {
        return clave_usuario;
    }

    public void setClave(String clave_usuario)
   {
        this.clave_usuario = clave_usuario;
    }
    
}
