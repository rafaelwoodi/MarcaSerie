package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.banco.UserDao;
import com.classes.User;

public class ApagaUsersServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
        } finally { 
            out.close();
        }
    } 

protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
    processRequest(request, response);
} 

/** 
 * Handles the HTTP <code>POST</code> method.
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
	
	
    int Id_user = Integer.parseInt(request.getParameter("id_user"));
    
    User user = new User();
    user.setId_user(Id_user);
    
    UserDao dao = new UserDao();
    
    dao.apaga(user);

    response.sendRedirect("users.jsp");
    
}

}
