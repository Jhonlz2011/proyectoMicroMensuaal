/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.conexionDB;



/**
 *
 * @author user
 */
@WebServlet(name = "iniciarSesControlador", urlPatterns = {"/iniciarSesControlador"})
public class iniciarSesControlador extends HttpServlet {
      
        private String nombre_usuario, clave_usuario, nombre;
        conexionDB db =new conexionDB();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            
            if (cargarDriver())
            {
                nombre_usuario=request.getParameter("nombre_usuario")==null?"":request.getParameter("nombre_usuario");
                clave_usuario=request.getParameter("clave_usuario")==null?"":request.getParameter("clave_usuario");
                if (isUsuarioValido())
                {
                    response.sendRedirect("vistas2/menuPrincipal.jsp?usr=" + nombre);
                } else
                {
                   // response.sendRedirect("vistas/SisPanErr.jsp");
                    response.sendRedirect("errorInicio.jsp");
                }
                
            }else{
            
            System.out.println("Error consola: No se pudo cargar el Driver.");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet iniciarSesControlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet iniciarSesControlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
             }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    
    public boolean cargarDriver()
    {
        boolean blnRes=true;
        try
        {
           // Class.forName("org.postgresql.Driver");
           Class.forName(db.getDriverConexion());
        }
        catch (ClassNotFoundException e)
        {
            blnRes=false;
//            JOptionPane.showMessageDialog(this, "Excepción: " + e.toString());
        }
        return blnRes;
    }
    
    public boolean isUsuarioValido()
    {
        String strSQL;
        boolean blnRes=true;
        try
        {
    
            //Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5433/dbproyectoweb", "postgres", "admin");
            Connection con=DriverManager.getConnection(db.getStringConexion(), db.getUsuarioConexion(), db.getClaveConexion());
            if (con!=null)
            {
                Statement stm=con.createStatement();
                strSQL=" SELECT nombre_usuario, nombre";
                strSQL+=" FROM tblusuario";
                strSQL+=" WHERE nombre_usuario='" + nombre_usuario + "'";
                strSQL+=" AND clave_usuario='" + clave_usuario + "'";
                strSQL+=" AND estado_usuario='A'";
                ResultSet rst=stm.executeQuery(strSQL);
                if (rst.next())
                {
                    nombre=rst.getString("nombre");
                }
                
                else
                {
                    blnRes=false;
                }
                rst.close();
                stm.close();
                con.close();
            }
        }
        catch (java.sql.SQLException e)
        {
            blnRes=false;
           // JOptionPane.showMessageDialog(this, "Excepción: " + e.toString());
        }
        catch (Exception e)
        {
            blnRes=false;
         // JOptionPane.showMessageDialog(this, "Excepción: " + e.toString());
        }
        return blnRes;
    }
    
}
