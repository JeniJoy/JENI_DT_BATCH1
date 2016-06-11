

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookdeal.online.dao.UserDao;


@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("<b>Do get method will be invoked</b>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		//out.println("<b>Do post method  will be invoked</b>");
		//String s1=request.getParameter("txt1");
		//out.println("<br/>Welcome"+s1);
		String username=(String) request.getParameter("username");
		String password=(String) request.getParameter("password");
		
		out.println(username + password);
		
	
		 
		if(UserDao.isvalidcredentials(username,password)==true)
		{
			RequestDispatcher dispatcher=request.getRequestDispatcher("Home.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			//PrintWriter out=response.getWriter();
			RequestDispatcher dispatcher=request.getRequestDispatcher("BookDeal.jsp");
			//dispatcher.forward(request, response);
			out.println("Invalid credentials");
			dispatcher.include(request, response);
		}
		
	}

}
