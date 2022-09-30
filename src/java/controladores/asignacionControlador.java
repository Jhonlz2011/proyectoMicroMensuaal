/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;
import entidades.Asignar;
import entidades.Carrera;
import entidades.Horario;
import entidades.Materia;
import entidades.Periodo;
import entidades.Profesor;
import entidades.Temporada;
import entidadesDAO.AsignarDAO;
import java.io.IOException;

import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "asignacionControlador", urlPatterns = {"/asignacionControlador"})
public class asignacionControlador extends HttpServlet {

    AsignarDAO dao;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         String accion = request.getParameter("accion");
       switch(accion){
            case"abrirNuevaAsignacion":
                cargarComboProfesores(request,response);
                break;
            case "asignar":
                Materia m = new Materia();
                Profesor p = new Profesor();
                Horario h = new Horario();
                Periodo pe = new Periodo();
                Temporada t = new Temporada();
                int r = 0;
                m.setId_materia(Integer.parseInt(request.getParameter("cboMaterias")));
                p.setId_profesor(Integer.parseInt(request.getParameter("cboProfesor")));           
                h.setId_horario(Integer.parseInt(request.getParameter("cboHorario"))); 
                pe.setId_periodo(Integer.parseInt(request.getParameter("cboPeriodo"))); 
                t.setId_temp(Integer.parseInt(request.getParameter("cboTemp"))); 
                
                break;
                
                
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


    private void cargarComboProfesores(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AsignarDAO DAO = new AsignarDAO();
        //Cargar combobox Profesores
        List<Profesor> ListaProfesor = DAO.getCboProfesor(); 
        request.setAttribute("Profesores", ListaProfesor);
        //Cargar combobox Materias
         AsignarDAO DAO1 = new AsignarDAO();
        List<Materia> ListaMateria = DAO1.getCboMateria(); 
        request.setAttribute("Materias", ListaMateria);
        //Cargar combobox Horario
        AsignarDAO DAO2 = new AsignarDAO();
        List<Horario> ListaHorario = DAO2.getCboHorario(); 
        request.setAttribute("Horario", ListaHorario);
        //Cargar combobox Año
        AsignarDAO DAO3 = new AsignarDAO();
        List<Periodo> Lista = DAO3.getCboPeriodo(); 
        request.setAttribute("Periodo", Lista);
        //Cargar combobox Modulo
         AsignarDAO DAO4 = new AsignarDAO();
        List<Temporada> Listat = DAO4.getCboTemporada(); 
        request.setAttribute("Temporada", Listat);
        request.getRequestDispatcher("vistas2/asignarProfesor.jsp").forward(request, response);
        // en que JSP esta el combobox
       
    }
}