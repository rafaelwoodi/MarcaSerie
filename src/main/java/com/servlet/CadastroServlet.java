package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.banco.UserDao;
import com.classes.User;


	@SuppressWarnings("serial")
	public class CadastroServlet extends HttpServlet {
		 
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
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	    	
	    	
	        String login = request.getParameter("login");
	        String senha = request.getParameter("senha");
	        String nome_completo = request.getParameter("nome_completo");
	        int idade = Integer.parseInt(request.getParameter("idade"));
	        
	        
	        User user = new User();
	        user.setLogin(login);
	        user.setSenha(senha);
	        user.setNome_completo(nome_completo);
	        user.setIdade(idade);
	        
	        UserDao dao = new UserDao();
	        
	        dao.adiciona(user);

	        response.sendRedirect("users.jsp");
	        
	    }		
	}
