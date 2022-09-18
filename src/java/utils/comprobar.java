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
public class comprobar {

    public static void main (String [] args ) {
        conexionDB c = new conexionDB () ;
        if(c.conectar()!= null){
            System.out.println ("conexion es correcta") ;
            System.out.println(c.getStringConexion());
            
        }else{
                System.out.println ("conexion es incorrecta") ;    
                    }
    } 
 }
