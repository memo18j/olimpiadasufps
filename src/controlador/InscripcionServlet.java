package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Controlador;

/**
 * Servlet implementation class InscripcionServlet
 */
@WebServlet("/InscripcionServlet")
public class InscripcionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscripcionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 int item = Integer.parseInt(request.getParameter("accion"));
			
			if(item == 1){
				Controlador c = new Controlador();
				int idequipo = Integer.parseInt(request.getParameter("equipo"));
				int idequipo2 = Integer.parseInt(request.getParameter("equipo2"));
				int iddeporte = Integer.parseInt(request.getParameter("deporte"));
				int idescenario = Integer.parseInt(request.getParameter("escenario"));
				String grupo = request.getParameter("grupo");
				String descripcion = request.getParameter("descripcion");
				c.registrarInscripcion(idequipo, iddeporte, grupo);
				response.sendRedirect("views/RegistrarInscripcion.jsp");
			}else if (item == 2){
				Controlador c = new Controlador();
				int id = Integer.parseInt(request.getParameter("id"));
				int idequipo = Integer.parseInt(request.getParameter("equipo"));
				int idequipo2 = Integer.parseInt(request.getParameter("equipo2"));
				int iddeporte = Integer.parseInt(request.getParameter("deporte"));
				int idescenario = Integer.parseInt(request.getParameter("escenario"));
				String grupo = request.getParameter("grupo");
				String descripcion = request.getParameter("descripcion");
				String MarcadorL = request.getParameter("gollocal");
				String MarcadorV = request.getParameter("golvisitante");
				c.actualizarInscripcion(id, idequipo, iddeporte, grupo);
				response.sendRedirect("registrarDeporte.jsp");
				
			}else if( item ==3){
				Controlador c = new Controlador();
				int id = Integer.parseInt(request.getParameter("id"));
				c.eliminarInscripcion(id);
				response.sendRedirect("registrarDeporte.jsp");
			}
	}

}
