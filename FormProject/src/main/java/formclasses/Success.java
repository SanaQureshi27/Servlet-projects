package formclasses;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.PrintWriter;
import java.io.IOException;

public class Success extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h2>SUCCESSFULLY REGISTERED </h2>");
	}
	
}
