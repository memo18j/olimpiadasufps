package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Controlador;

/**
 * Servlet implementation class DeporteServlet
 */
@WebServlet("/DeporteServlet")
public class DeporteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeporteServlet() {
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
			String nombre = request.getParameter("nombre");
			c.registrarDeporte(nombre);
			RequestDispatcher rd = request.getRequestDispatcher("views/registrar.jsp");
        	rd.forward(request, response);
		}else if (item == 2){
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			String nombre = request.getParameter("nombre");
			c.ActualizarDeporte(id, nombre);
			response.sendRedirect("registrarDeporte.jsp");
			
		}else if( item ==3){
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			c.eliminarDeporte(id);
			response.sendRedirect("registrarDeporte.jsp");
		}
	
	}

}
