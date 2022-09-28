package controladores;


import entidades.Carrera;
import entidadesDAO.CarreraDAO;
import java.io.IOException;
import java.util.ArrayList;
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
@WebServlet(name = "carreraControlador", urlPatterns = {"/carreraControlador"})
public class carreraControlador extends HttpServlet {

    CarreraDAO dao;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        String accion = request.getParameter("accion");
        List<Carrera> p = new ArrayList<>();
        switch (accion) {
            case "listar":
                dao = new CarreraDAO();
                p = dao.getCarreras();
                request.setAttribute("Carreras", p);
                request.getRequestDispatcher("/vistas2/carreras.jsp").forward(request, response);
                break;
            case "Agregar":
                int r = 0;
                String nombres = request.getParameter("txtNombres");
                if (!"".equals(nombres)) {
                    Carrera carr = new Carrera();
                    carr.setNombre_carrera(nombres);
                    r = dao.agregar(carr);
                    if (r != 0) {
                        request.getRequestDispatcher("carreraControlador?accion=listar").forward(request, response);
                    } else {
                        request.getRequestDispatcher("errorAgregar.jsp").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("errorInicio.jsp").forward(request, response);
                }
                break;
            case "Actualizar":            
                int id= Integer.valueOf(request.getParameter("txtid"));
                String n= request.getParameter("txtNombre");

                Carrera carr = new Carrera(id,n);
                int respuesta=dao.editar(carr);
                if(respuesta != 0){
                     request.getRequestDispatcher("carreraControlador?accion=listar").forward(request, response);
                }else {
                    request.getRequestDispatcher("errorAgregar.jsp").forward(request, response);
                }
                break;
            case "eliminarCarrera":
                eliminar(request, response);
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

    private void eliminar(HttpServletRequest request, HttpServletResponse response) {
        CarreraDAO DAO = new CarreraDAO();
        Carrera usus = new Carrera();
        if (request.getParameter("id_carrera") != null) {
            usus.setId_carrera(Integer.parseInt(request.getParameter("id_carrera")));
            try {
                DAO.eliminar(usus);
                response.sendRedirect("carreraControlador?accion=listar");
            } catch (IOException e) {
                request.setAttribute("msje", "No se pudo acceder a la base de datos" + e.getMessage());
            }
        } else {
            request.setAttribute("msje", "No se encontro la carrera");
        }
    }

}
