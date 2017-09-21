package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class HomepageEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public HomepageEmailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("h111111");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String mob=request.getParameter("phone");
		String message=request.getParameter("message");
		System.out.println("h111111");
		MessagingException res= MainsendFromHomepage.send(name,email,mob,message);
		if(res!=null)
		{
			//out.println(res.toString());
			out.println("Please refresh your page and Check your connection to internet service!!!");
		}
		else{
			out.print("Thank You for your suggesion!!! we will work on soon ");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
