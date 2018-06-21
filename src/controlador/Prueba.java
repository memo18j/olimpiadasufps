package controlador;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 * Servlet implementation class Prueba
 */
@WebServlet("/Prueba")
public class Prueba extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HttpSession session;
    private OutputStream outStream;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Prueba() {
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
		
		Connection conn=null;
        try {
        	Class.forName("com.mysql.jdbc.Driver"); 
        	conn =(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/OlimpiadasUfps", "root", "");
if(conn==null) {
	System.out.println("Coneecion vacia");
}else {
	System.out.println("1111111111111111111");
}

        } catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("no conecte 2");
        } 
		/*******************************/
		try {
			JasperReport jasperReport=null;
			JasperDesign jasperDesing=null;
			Map parameters=new HashMap();
			  
			String path=getServletContext().getRealPath("/WEB-INF/");
		jasperDesing=JRXmlLoader.load(path+"/DelegacionesDeporte.jrxml");
		jasperReport=JasperCompileManager.compileReport(jasperDesing);
		byte[] byteStream=JasperRunManager.runReportToPdf(jasperReport, parameters,(java.sql.Connection) conn);
		OutputStream outStream =response.getOutputStream();
		response.setContentType("application/pdf");
		response.setContentLength(byteStream.length);
		//response.addHeader("Content-disposition", "attachment; filename=report.pdf");
		outStream.write(byteStream,0,byteStream.length);
		
		
		
		}catch(Exception e) {
		e.printStackTrace();
		}

	}
}
