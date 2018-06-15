package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Funcionario;
import entities.Inscripcion;
import modelo.FuncionarioDao;
import modelo.InscripcionDao;
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
		int item = Integer.parseInt(request.getParameter("accion"));
		 if (item == 2){
				Controlador c = new Controlador();
				int id = Integer.parseInt(request.getParameter("id"));
				int idequipo = Integer.parseInt(request.getParameter("equipo"));
				int iddeporte = Integer.parseInt(request.getParameter("deporte"));
				String grupo = request.getParameter("grupo");
				c.actualizarInscripcion(id, idequipo, iddeporte, grupo);
				response.sendRedirect("views/ListaEquiposInscritos.jsp");
				
			}else if( item ==3){
				Controlador c = new Controlador();
				int id = Integer.parseInt(request.getParameter("id"));
				c.eliminarInscripcion(id);
				response.sendRedirect("views/ListaEquiposInscritos.jsp");
			}else if(item==4){
				  System.out.println("hola");
					Controlador c = new Controlador();
					int id = Integer.parseInt(request.getParameter("id"));
					InscripcionDao d = new InscripcionDao();
					Inscripcion eq = d.find(id);
					System.out.println(eq.getGrupo());
					request.setAttribute("inscripcion",eq);
					RequestDispatcher rd = request.getRequestDispatcher("views/EditInscripcion.jsp");
					rd.forward(request, response);
			}
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
				int iddeporte = Integer.parseInt(request.getParameter("deporte"));
				String grupo = request.getParameter("grupo");
				c.registrarInscripcion(idequipo, iddeporte, grupo);
				response.sendRedirect("views/RegistrarInscripcion.jsp");
			}
	}

}
