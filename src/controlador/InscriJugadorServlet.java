package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Deportefuncionario;
import entities.Funcionario;
import modelo.DeporteFuncionarioDao;
import modelo.FuncionarioDao;
import util.Controlador;

/**
 * Servlet implementation class InscriJugadorServlet
 */
@WebServlet("/InscriJugadorServlet")
public class InscriJugadorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriJugadorServlet() {
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
			int idjugador = Integer.parseInt(request.getParameter("funcionario"));
//			c.registrarInscripcion(idequipo, iddeporte, grupo);
			c.actualizarDeporteFuncionario(id, idequipo, iddeporte, idjugador);
			response.sendRedirect("views/ListaFuncionariosDeportes.jsp");
			
		}else if( item ==3){
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			c.eliminarInscripcionJugador(id);
			response.sendRedirect("views/ListaFuncionariosDeportes.jsp");
		}else if(item == 4){
			 System.out.println("hola");
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			DeporteFuncionarioDao d = new DeporteFuncionarioDao();
			Deportefuncionario eq = d.find(id);
			request.setAttribute("dejugador",eq);
			RequestDispatcher rd = request.getRequestDispatcher("views/EditDeporteFuncionario.jsp");
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
				int idjugador = Integer.parseInt(request.getParameter("funcionario"));
//				c.registrarInscripcion(idequipo, iddeporte, grupo);
				c.registrarDeporteFuncionario(idequipo, iddeporte, idjugador);
				response.sendRedirect("views/RegistrarInscripcionJugador.jsp");
			}
	}

}
