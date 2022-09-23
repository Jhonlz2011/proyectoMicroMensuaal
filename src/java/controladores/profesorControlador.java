/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import entidades.Profesor;
import entidadesDAO.ProfesorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
@WebServlet(name = "profesorControlador", urlPatterns = {"/profesorControlador"})
public class profesorControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
           try (PrintWriter out = response.getWriter())
        {
            ProfesorDAO p =new ProfesorDAO();
            List<Profesor> objLisUsr= p.getListadoProfesor();
            request.setAttribute("listadoUsuarios", objLisUsr); //Para que esté disponible en la página JSP.
            request.getRequestDispatcher("vistas2/profesores.jsp").forward(request, response);
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

      private void cerrarsession(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuario", null);
        sesion.invalidate();
        response.sendRedirect("index.jsp");

    }

    private void listarProfesor(HttpServletRequest request, HttpServletResponse response) {
         ProfesorDAO p = new ProfesorDAO();
         List<Profesor> profe = null;
          try{
            profe = p.getListadoProfesor();
            request.setAttribute("profesor", profe);
            
        }catch(Exception e){
            request.setAttribute("msje", "No se pudo listar los profesores" + e.getMessage());
        }finally{
            p = null;
        }
       try{
            this.getServletConfig().getServletContext()
                    .getRequestDispatcher("/vistas2/profesores.jsp").forward(request, response);
        }catch(Exception ex){
            request.setAttribute("msje", "No se puedo realizar la petición" + ex.getMessage());
        }  
    }
    
    
}
