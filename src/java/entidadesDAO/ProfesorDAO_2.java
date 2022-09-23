
package entidadesDAO;

import utils.Conexion;
import Intefaces.CRUD;
import entidades.Profesor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProfesorDAO_2 implements CRUD{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Profesor p=new Profesor();
    
    @Override
    public List listar() {
        ArrayList<Profesor>list=new ArrayList<>();
        String sql="select id_profesor, nombres_profesor, apellidos_profesor from tblprofesor";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Profesor per=new Profesor();
                per.setId_profesor(rs.getInt("id_profesor"));
                per.setNombres_profesor(rs.getString("nombres_profesor"));
                per.setApellidos_profesor(rs.getString("apellidos_profesor"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Profesor list(int id_profesor) {
        String sql="select id_profesor, nombres_profesor, apellidos_profesor from tblprofesor where id_profesor="+id_profesor;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setId_profesor(rs.getInt("id_profesor"));
                p.setNombres_profesor(rs.getString("nombres_profesor"));
                p.setApellidos_profesor(rs.getString("apellidos_profesor"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Profesor per) {
       String sql="insert into tblprofesor(nombres_profesor, apellidos_profesor) values('"+per.getNombres_profesor()+"','"+per.getApellidos_profesor()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Profesor per) {
        String sql="update tblprofesor set nombres_profesor='"+per.getNombres_profesor()+"',apellidos_profesor='"+per.getApellidos_profesor()+"'where id_profesor="+per.getId_profesor();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id_profesor) {
        String sql="delete from tblprofesor where id_profesor="+id_profesor;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }  
}
