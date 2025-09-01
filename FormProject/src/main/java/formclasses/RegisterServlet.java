package formclasses;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.io.PrintWriter;

public class RegisterServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h2> Welcome To Register Servlet </h2>");
        
		String name = request.getParameter("user_name");
		String password = request.getParameter("user_name");
		String email = request.getParameter("user_email");
		String gender = request.getParameter("user_gender");
		String course = request.getParameter("user_course");
		String condition = request.getParameter("condition");
		if(condition!=null) {
		if(condition.equals(condition)) {
			
			out.println("<h2> Name : " +name+"</h2>");
			out.println("<h2> Password : " +password+"</h2>");
			out.println("<h2> Email : " +email+"</h2>");
			out.println("<h2> Gender : " +gender+"</h2>");
			out.println("<h2> Course : " +course+"</h2>");
			
			RequestDispatcher rd = request.getRequestDispatcher("success");
			rd.forward(request, response);

		
		}else {
			
			out.println("<h2> You have not accepted terms and conditions </h2>");
		}
		}
			else {
				out.println("<h2> You have not accepted terms and conditions </h2>");
				RequestDispatcher rd = request.getRequestDispatcher("index.html");
				rd.include(request, response);
			}
		}
		
		}

	
