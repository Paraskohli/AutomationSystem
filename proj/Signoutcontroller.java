package proj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Signoutcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Signoutcontroller() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession ssn=request.getSession(true);
		
		System.out.println(ssn);
		//ssn.invalidate();
		
		/*System.out.println("logout successfully");
		 RequestDispatcher rd=request.getRequestDispatcher("Homepage.jsp?");  
         rd.forward(request, response);      */ //home page


	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
