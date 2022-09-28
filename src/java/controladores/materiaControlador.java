package controladores;



import entidades.Materia;
import entidadesDAO.MateriaDAO;
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
@WebServlet(name = "materiaControlador", urlPatterns = {"/materiaControlador"})
public class materiaControlador extends HttpServlet {

    MateriaDAO dao;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String accion = request.getParameter("accion");
        List<Materia> p = new ArrayList<>();
        switch (accion) {
            case "listar":
                dao = new MateriaDAO();
                p = dao.getMaterias();
                request.setAttribute("Materias", p);
                request.getRequestDispatcher("/vistas2/materias.jsp").forward(request, response);
                break;
            case "Agregar":
                int r = 0;
                String nombres = request.getParameter("txtNombres");
                if (!"".equals(nombres)) {
                    Materia mate = new Materia();
                    mate.setNombre_materia(nombres);
                    r = dao.agregar(mate);
                    if (r != 0) {
                        request.getRequestDispatcher("materiaControlador?accion=listar").forward(request, response);
                    } else {
                        request.getRequestDispatcher("errorAgregar.jsp").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("errorAgregar.jsp").forward(request, response);
                }
                break;
            case "Actualizar":            
                int id= Integer.valueOf(request.getParameter("txtid"));
                String n= request.getParameter("txtNombre");

                Materia mate = new Materia(id,n);
                int respuesta=dao.editar(mate);
                if(respuesta != 0){
                     request.getRequestDispatcher("materiaControlador?accion=listar").forward(request, response);
                }else {
                    request.getRequestDispatcher("errorAgregar.jsp").forward(request, response);
                }
                break;
            case "eliminarMateria":
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
        MateriaDAO DAO = new MateriaDAO();
        Materia m = new Materia();
        if (request.getParameter("id_materia") != null) {
            m.setId_materia(Integer.parseInt(request.getParameter("id_materia")));
            try {
                DAO.eliminar(m);
                response.sendRedirect("materiaControlador?accion=listar");
            } catch (IOException e) {
                request.setAttribute("msje", "No se pudo acceder a la base de datos" + e.getMessage());
            }
        } else {
            request.setAttribute("msje", "No se encontro la carrera");
        }
    }

}
