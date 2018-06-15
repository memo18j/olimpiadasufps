package controlador;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Inscripcion;
import entities.Partidoequipo;
import modelo.InscripcionDao;
import modelo.PartidoEquipoDao;
import util.Controlador;

/**
 * Servlet implementation class PartidoServlet
 */
@WebServlet("/PartidoServlet")
public class PartidoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PartidoServlet() {
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
				int idequipo2 = Integer.parseInt(request.getParameter("equipo2"));
				int idescenario = Integer.parseInt(request.getParameter("escenario"));
				String fase = request.getParameter("fase");
				String descripcion = request.getParameter("descripcion");
				int MarcadorL = Integer.parseInt(request.getParameter("gollocal"));
				int MarcadorV = Integer.parseInt(request.getParameter("golvisitante"));
				String f =  request.getParameter("fecha");
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				Date fecha=null;
				try {
					fecha = formatter.parse(f);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
//				c.registrarPartido(descripcion, fase, fecha, MarcadorL, MarcadorV, idequipo, idequipo2, idescenario);
				c.actualizarPartido(id, descripcion, fase, fecha, MarcadorL,MarcadorV, idequipo, idequipo2, idescenario);
				response.sendRedirect("views/ListaPartidos.jsp");
				
			}else if( item ==3){
				Controlador c = new Controlador();
				int id = Integer.parseInt(request.getParameter("id"));
				c.eliminarPartido(id);
				response.sendRedirect("views/ListaPartidos.jsp");
			}else if(item == 4){
				System.out.println("hola");
				Controlador c = new Controlador();
				int id = Integer.parseInt(request.getParameter("id"));
				PartidoEquipoDao d = new PartidoEquipoDao();
				Partidoequipo eq = d.find(id);
				
				request.setAttribute("partido",eq);
				RequestDispatcher rd = request.getRequestDispatcher("views/EditPartido.jsp");
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
				System.out.println("holajhjhjhjhj");
				int idequipo = Integer.parseInt(request.getParameter("equipo"));
				int idequipo2 = Integer.parseInt(request.getParameter("equipo2"));
				int idescenario = Integer.parseInt(request.getParameter("escenario"));
				String fase = request.getParameter("fase");
				String descripcion = request.getParameter("descripcion");
				System.out.println(idequipo +"-" + idequipo2 +"-" + idescenario+ "-" + descripcion );
				String f =  request.getParameter("fecha");
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				Date fecha=null;
				try {
					fecha = formatter.parse(f);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			c.registrarPartido(descripcion, fase, fecha, idequipo, idequipo2, idescenario);
			response.sendRedirect("views/RegistrarPartido.jsp");
			}
	}

}
