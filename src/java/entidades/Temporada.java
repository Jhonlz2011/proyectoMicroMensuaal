/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author user
 */
public class Temporada {

    
     public Temporada(){}
    /**
     * @return the id_temp
     */
    public int getId_temp() {
        return id_temp;
    }

    /**
     * @param id_temp the id_temp to set
     */
    public void setId_temp(int id_temp) {
        this.id_temp = id_temp;
    }

    /**
     * @return the temp
     */
    public String getTemp() {
        return temp;
    }

    /**
     * @param temp the temp to set
     */
    public void setTemp(String temp) {
        this.temp = temp;
    }
     private int id_temp;
    private String temp;
}
