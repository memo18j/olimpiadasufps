package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Equipo;
import entities.Funcionario;
import modelo.EquipoDao;
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
		int item = Integer.parseInt(request.getParameter("accion"));
		if (item == 2){
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			int idequipo = Integer.parseInt(request.getParameter("equipo"));
			String nombre = request.getParameter("nombre");
			c.actualizarFuncionario(id, idequipo, nombre);
			response.sendRedirect("views/ListaFuncionarios.jsp");
			
		}else if( item ==3){
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			c.eliminarFuncionario(id);
			response.sendRedirect("views/ListaFuncionarios.jsp");
		}else if(item==4){
			  System.out.println("hola");
				Controlador c = new Controlador();
				int id = Integer.parseInt(request.getParameter("id"));
				FuncionarioDao d = new FuncionarioDao();
				Funcionario eq = d.find(id);
				System.out.println(eq.getNombre());
				request.setAttribute("funcionario",eq);
				RequestDispatcher rd = request.getRequestDispatcher("views/EditFuncionario.jsp");
				rd.forward(request, response);
		}
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
			response.sendRedirect("views/RegistrarFuncionario.jsp");
		}
	}

}
