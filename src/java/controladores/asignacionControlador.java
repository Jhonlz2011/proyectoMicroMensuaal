/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import entidades.Asignar;
import entidades.Horario;
import entidades.Materia;
import entidades.Periodo;
import entidades.Profesor;
import entidades.Temporada;
import entidadesDAO.AsignarDAO;
import java.io.IOException;
import java.util.ArrayList;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
    List<Asignar> ad = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {

                case "abrirNuevaAsignacion":
                    cargarComboProfesores(request, response);
                    break;
                case "Asignar":
                    asignar(request, response);
                    break;
                case "listar":
                    listar(request, response);
                    break;
                case "eliminar":
                    eliminar(request, response);
                    break;
                case "limpiar":
                    limpiar(request, response);
                    break;
                default:
                    response.sendRedirect("errorAgregar.jsp");

            }
        } else if (request.getParameter("cambiar") != null) {
            cambiarEstado(request, response);
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

        List<Materia> ListaMateria = DAO.getCboMateria();
        request.setAttribute("Materias", ListaMateria);
        //Cargar combobox Horario

        List<Horario> ListaHorario = DAO.getCboHorario();
        request.setAttribute("Horario", ListaHorario);
        //Cargar combobox Año

        List<Periodo> Lista = DAO.getCboPeriodo();
        request.setAttribute("Periodo", Lista);
        //Cargar combobox Modulo

        List<Temporada> Listat = DAO.getCboTemporada();
        request.setAttribute("Temporada", Listat);
        request.getRequestDispatcher("vistas2/asignarProfesor.jsp").forward(request, response);
        // en que JSP esta el combobox

    }

    private void asignar(HttpServletRequest request, HttpServletResponse response) {
        try {

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
            Asignar asignar = new Asignar();
            asignar.setMateria(m);
            asignar.setProfesor(p);
            asignar.setHorario(h);
            asignar.setPeriodo(pe);
            asignar.setTemporada(t);
            AsignarDAO a = new AsignarDAO();
            a.agregar(asignar);

            response.sendRedirect("asignacionControlador?accion=listar");
        } catch (Exception e) {
            try {
                response.sendRedirect("errorAgregar.jsp");
            } catch (IOException ex) {
                Logger.getLogger(asignacionControlador.class.getName()).log(Level.SEVERE, null, ex);
            }
        } //To change body of generated methods, choose Tools | Templates.
    }

    private void cambiarEstado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AsignarDAO DAO1;
        Asignar asig;
        try {
            DAO1 = new AsignarDAO();
            asig = new Asignar();

            if (request.getParameter("cambiar").equals("activar")) {
                asig.setMicro(1);
            } else if (request.getParameter("cambiar").equals("aprobar")) {
                asig.setMicro(3);
            } else {
                asig.setMicro(2);
            }

            if (request.getParameter("id_asignacion") != null) {
                asig.setId_asignacion(Integer.parseInt(request.getParameter("id_asignacion")));
                DAO1.cambiarEstadoMicro(asig);
            } else {
                request.setAttribute("msje", "No se obtuvo el id");
            }

        } catch (NumberFormatException e) {
            request.setAttribute("msje", e.getMessage());
        }
        this.listar(request, response);
    }

    private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        dao = new AsignarDAO();

        ad = dao.getAsignaciones();
        request.setAttribute("asignaciones", ad);
        request.getRequestDispatcher("/vistas2/menuPrincipal.jsp").forward(request, response);
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) {
        AsignarDAO dao = new AsignarDAO();
        Asignar a = new Asignar();
        if (request.getParameter("id_asignacion") != null) {
            a.setId_asignacion(Integer.parseInt(request.getParameter("id_asignacion")));
            try {
                dao.eliminar(a);

            } catch (Exception e) {
                request.setAttribute("msje", "No se pudo acceder a la base de datos" + e.getMessage());
            }
        } else {
            request.setAttribute("msje", "No se encontro el usuario");
        }
    }

    private void limpiar(HttpServletRequest request, HttpServletResponse response) {
        AsignarDAO dao = new AsignarDAO();
        Asignar a = new Asignar();
        try {
            a.setMicro(3);
            dao.limpiar(a);
            
            response.sendRedirect("asignacionControlador?accion=listar");
        } catch (Exception e) {
            request.setAttribute("msje", "No se pudo acceder a la base de datos" + e.getMessage());
        }
    }
}
