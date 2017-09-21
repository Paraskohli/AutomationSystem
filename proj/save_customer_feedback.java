package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;


public class save_customer_feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public save_customer_feedback() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String radiob=request.getParameter("rad");
		String code=request.getParameter("code");
		String custid=request.getParameter("cid");
	if(custid==null)
	{
		save_customer_Feedback_DAO dao=new save_customer_Feedback_DAO();
		HibernateException exp;
		if(radiob.equals("agree"))
		{
			 exp=dao.Feedbackupdate("agree",Integer.parseInt(code),custid);
		}
		else{
			String describe=request.getParameter("desribe");
			exp=dao.Feedbackupdate(describe,Integer.parseInt(code),custid);
		}
		
		if(exp==null)
		{    System.out.println("Everything is all right!!!");
			 RequestDispatcher rd=request.getRequestDispatcher("thanksFeedback.jsp");  
	         rd.forward(request, response); 
		}
		else{
			out.println("***Please retry !!! Weak Connection***");
		}
	}
	else{
		 RequestDispatcher rd=request.getRequestDispatcher("Customerfeedbackform.jsp");  
         rd.forward(request, response); 
	}
		
		
	}

}
