package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.Db.DBConnect;
import com.User.Post;


@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int uid =Integer.parseInt(request.getParameter("uid"));
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		
		PostDAO  dao=new PostDAO(DBConnect.getConn());
		boolean f=dao.AddNotes(title, content, uid);
		
		if(f) {
			HttpSession session=request.getSession();
			session.setAttribute("add1", "Add Successfully");

			response.sendRedirect("showNotes.jsp");	

//			System.out.println("data insert successfully...");
			
			
		}else {
			System.out.println("Not insert ...");

		}
	}


}
