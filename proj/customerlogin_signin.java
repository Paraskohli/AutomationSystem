package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern;


public class customerlogin_signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public customerlogin_signin() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Customerlogin_signinDao Dao=new Customerlogin_signinDao();
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("btn");
		
		if(btn.equals("signin")){
			String firstn=request.getParameter("firname");
			String secondn=request.getParameter("secname");
			String gmail=request.getParameter("gmailid");
			String cusid=request.getParameter("custid");
			String passw=request.getParameter("passw");
			String repassw=request.getParameter("repassw");
			String p = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
					+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
			if(gmail.matches(p)){
				
			if(passw.equals(repassw)){
			Customerlogin_signinBean bean=new Customerlogin_signinBean(firstn,secondn,gmail,cusid,passw,repassw,"x");
			HibernateException exp=Dao.savecustsignin(bean);
			if(exp==null){
				out.println("Submited");
			}
			else{
				out.println("Customer Id alerady exist..Please Try Again!!! ");
			}
			}
			else{
				out.println("Your password is not matched!!!");
			}
			}
			else{
				out.println("123");
			}
		}
		else if(btn.equals("login"))
		{
			String custid=request.getParameter("custid");
			String password=request.getParameter("passwo");
			Customerlogin_signinBean ref=Dao.search_Customerdata_based_on_cid(custid);
			 if(ref!=null){
				 String passw=ref.getPassw();
				 if(passw.equals(password))
				 {
					 HttpSession ssn=request.getSession(true);
							 ssn.setAttribute("custmer",custid);
					 out.println("1");
					 
				 }
				 else{
			    		out.println("Wrong Entry Please Check Again!!!");
			    	}
			 }
			 else{
		    		out.println("Wrong Entry Please Check Again!!!");
		    	}
		}
		else if(btn.equals("updatepro")){
			
			String gmail=request.getParameter("gmailid");
			String cusid=request.getParameter("custid");
			String passw=request.getParameter("passw");
			String repassw=request.getParameter("repassw");
			String p = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
					+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
			if(gmail.matches(p)){
				
			if(passw.equals(repassw)){
			HibernateException exp=Dao.updatecustdetail(gmail,cusid,passw,repassw);
			if(exp==null){
				out.println("Submited");
			}
			else{
				out.println("Some problem occure..Please Try Again!!! ");
			}
			}
			else{
				out.println("Your password is not matched!!!");
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
