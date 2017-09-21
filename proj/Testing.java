package proj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Testing extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Testing() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		System.out.println("jjjjjjjjjjjjjjjjjjjjjjj");
	//	HttpSession ssn=request.getSession(false);
	//	System.out.println(ssn);
	//	ssn.invalidate();
		 RequestDispatcher rd=request.getRequestDispatcher("Homepage.jsp");  
         rd.forward(request, response); 
		System.out.println("huaaaaaaaaaaa");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
