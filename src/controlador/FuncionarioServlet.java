package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Funcionario;
import modelo.FuncionarioDao;
import util.Controlador;

/**
 * Servlet implementation class FuncionarioServlet
 */
@WebServlet("/FuncionarioServlet")
public class FuncionarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FuncionarioServlet() {
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
        int item = Integer.parseInt(request.getParameter("accion"));
		
		if(item == 1){
			Controlador c = new Controlador();
			int idequipo = Integer.parseInt(request.getParameter("equipo"));
			String nombre = request.getParameter("nombre");
			c.registrarFuncionario(nombre, idequipo);
			response.sendRedirect("views/RegistrarDeporte.jsp");
		}else if (item == 2){
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			int idequipo = Integer.parseInt(request.getParameter("equipo"));
			String nombre = request.getParameter("nombre");
			c.actualizarFuncionario(id, idequipo, nombre);
			response.sendRedirect("registrarDeporte.jsp");
			
		}else if( item ==3){
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			c.eliminarFuncionario(id);
			response.sendRedirect("registrarDeporte.jsp");
		}
	}

}
