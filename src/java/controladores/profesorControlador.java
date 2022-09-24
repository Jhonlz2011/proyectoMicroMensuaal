
package controladores;

import Intefaces.CRUD;
import entidades.Profesor;
import entidadesDAO.ProfesorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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

   
    ProfesorDAO dao;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        
        String accion=request.getParameter("accion");
        List<Profesor> p = new ArrayList<>();
        switch (accion){
            case "listar":
                dao= new ProfesorDAO();
                p= dao.getProfesores();
                request.setAttribute("Profesores", p);
                request.getRequestDispatcher("/vistas2/profesores.jsp").forward(request, response);
                break;
            case "Agregar": 
              int r=0;  
              String nombres=request.getParameter("txtNombres");
              String apellidos=request.getParameter("txtApellidos");
              Profesor pro= new Profesor();
              pro.setNombres_profesor(nombres);
              pro.setApellidos_profesor(apellidos);
              r=dao.agregar(pro);
              if(r!=0){
                 // request.setAttribute("config", "alert alert success");
                 //request.setAttribute("mensaje", "Se guardo");
                  request.getRequestDispatcher("profesorControlador?accion=listar").forward(request, response);
              }else{
                  request.getRequestDispatcher("errorInicio.jsp").forward(request, response);
              }
              break;
            default:
                throw new AssertionError();
            
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

    
}