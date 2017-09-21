package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class sms_to_customer_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public sms_to_customer_password() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		Customerlogin_signinDao dao=new Customerlogin_signinDao();
		String btn=request.getParameter("btn");
		if(btn.equals("msg"))
		{
			String cid=request.getParameter("cusid"); //---get Customer ID
			System.out.println(cid+"******************");
			Customerlogin_signinBean bean=dao.getpasscust(cid);
			if(bean!=null)
			{  
				String emailid=bean.getGmail();
				String password=bean.getPassw();
				System.out.println("password=  "+password);
				System.out.println("emailid=  "+emailid);
				MessagingException exp=Mailsend_cus_pass.send(emailid, password, cid);
				System.out.println(exp);
				if(exp!=null)
				{
					out.print("Please referesh the page and retry!!!");
				}
				else{
					
					out.print("Your password is send to your registered mail id");
				}
			}
			else{
				out.println("123");
			}
			
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
