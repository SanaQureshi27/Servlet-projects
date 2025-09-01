package com.code.verse.servlets;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.code.verse.entity.User;
import com.code.verse.dao.UserDao;
import com.code.verse.helper.ConnectionProvider;

import java.io.IOException;
import java.io.PrintWriter;


 
public class Register_Servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registration Status</title>");
            out.println("<link rel='stylesheet' href='css/myStyle.css'>"); // Include CSS
            out.println("</head>");
            out.println("<body>");

            boolean isChecked ="on".equals(request.getParameter("check")); // Get checkbox value

            if (!isChecked) { // If checkbox is not checked
                out.println("<h3 style='color:red;'>Please accept terms and conditions!</h3>");
            } 
            else {
            // Fetch form data
            String name = request.getParameter("user_name");
            String email = request.getParameter("user_email");
            String password = request.getParameter("user_password");
            String gender = request.getParameter("gender");
            String about = request.getParameter("about");
          
            User user =new User(name,email,password,gender,about);

               UserDao dao = new UserDao(ConnectionProvider.getConnection());
              
               if( dao.saveUser(user)) {
            	   
            	   out.println("Done");
               }
               else {
            	   out.println("no");
               }
            }

            out.println("</body>");
            out.println("</html>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

   
    }
