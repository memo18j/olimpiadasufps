package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Equipo;
import modelo.EquipoDao;
import util.Controlador;

/**
 * Servlet implementation class DelegacionServlet
 */
@WebServlet("/DelegacionServlet")
public class DelegacionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelegacionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EquipoDao d= new EquipoDao();
		Equipo eq= new Equipo();
		Controlador c= new Controlador();
		
		String nombre = request.getParameter("nombre");
		String delegado = request.getParameter("delegado");
		String telefono=request.getParameter("telefono");
		System.out.println("nombre"+nombre);
		System.out.println("delegado"+delegado);
		c.registrarEquipo(delegado, nombre, telefono);
		RequestDispatcher rd=request.getRequestDispatcher("registrarDelegacion.jsp");
		rd.forward(request, response);
		System.out.println("ENTRO DOGET");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	    
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		EquipoDao d= new EquipoDao();
//		Equipo eq= new Equipo();
//		Controlador c= new Controlador();
//		
//		String nombre = request.getParameter("nombre");
//		String delegado = request.getParameter("delegado");
//		String telefono=request.getParameter("telefono");
//		System.out.println("nombre"+nombre);
//		System.out.println("delegado"+delegado);
//		c.registrarEquipo(delegado, nombre, telefono);
//
//		
//		RequestDispatcher rd=request.getRequestDispatcher("registrarDelegacion.jsp");
//
//		rd.forward(request, response);
		
        int item = Integer.parseInt(request.getParameter("accion"));
		
		if(item == 1){
			Controlador c = new Controlador();
			String nombre = request.getParameter("nombre");
			String delegado = request.getParameter("delegado");
			String telefono=request.getParameter("telefono");
			c.registrarEquipo(delegado, nombre, telefono);
			response.sendRedirect("registrarDeporte.jsp");
		}else if (item == 2){
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			String nombre = request.getParameter("nombre");
			String delegado = request.getParameter("delegado");
			String telefono=request.getParameter("telefono");
			c.ActualizarDelegacion(id, delegado, nombre, telefono);
			response.sendRedirect("registrarDeporte.jsp");
			
		}else if( item ==3){
			Controlador c = new Controlador();
			int id = Integer.parseInt(request.getParameter("id"));
			c.eliminarDelegacion(id);
			response.sendRedirect("registrarDeporte.jsp");
		}
	
		
	}

}
