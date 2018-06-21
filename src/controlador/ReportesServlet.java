
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

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 * Servlet implementation class ReportesServlet
 */
@WebServlet("/ReportesServlet")
public class ReportesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int item = Integer.parseInt(request.getParameter("accion"));
		System.out.println(item);
		String imagen="C:\\Users\\ANDRES\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\"
				+ "olimpiadasufps\\WEB-INF\\logo.jpg";
		if(item==1) {
		String deporte=request.getParameter("deporte");
		int iddeport=-1;
		if(!deporte.equalsIgnoreCase("")) {
			 iddeport= Integer.parseInt(request.getParameter("deporte"));
			 
		}else {
			iddeport=-1;
			System.out.println(iddeport+"deporte");
		}
		
		
		if(iddeport<0) {
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
				parameters.put("imagen", imagen);
				  
			
				  
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
			
		}else {
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
				parameters.put("deporte", iddeport);
				parameters.put("imagen", imagen);
				  
				String path=getServletContext().getRealPath("/WEB-INF/");
			jasperDesing=JRXmlLoader.load(path+"/DelegacionDepor.jrxml");
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
		if(item==2) {
			String deporte=request.getParameter("equipo");
			System.out.println(deporte+"equipoooooooooooooooo");
			int iddeport=-1;
			if(!deporte.equalsIgnoreCase("")) {
				 iddeport= Integer.parseInt(request.getParameter("equipo"));
				 System.out.println(iddeport+"idequipoooooooo");
				 
			}else {
				iddeport=-1;
				System.out.println(iddeport+"deporte");
			}
			
			
			if(iddeport<0) {
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
					parameters.put("imagen", imagen);
					  
			
					  
					String path=getServletContext().getRealPath("/WEB-INF/");
				jasperDesing=JRXmlLoader.load(path+"/FuncionariosDelegacion.jrxml");
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
				
			}else {
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
					parameters.put("ID", iddeport);
					parameters.put("imagen", imagen);
					  
					String path=getServletContext().getRealPath("/WEB-INF/");
				jasperDesing=JRXmlLoader.load(path+"/DelegacionFuncio.jrxml");
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
		if(item==3) {
			
		}
		
		if(item==4) {
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
				
				parameters.put("imagen", imagen);
				  
				String path=getServletContext().getRealPath("/WEB-INF/");
			jasperDesing=JRXmlLoader.load(path+"/Delegaciones.jrxml");
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
	
			
			System.out.println("VER DELEGACIONES");
		}
		
		

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("accion"));
		System.out.println(id);
	}

}
