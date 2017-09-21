package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;


public class adminprofiledetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public adminprofiledetail() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		adminprofiledao Dao=new adminprofiledao();
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("btn");
		
		if(btn.equals("saveprof")){
			System.out.println("hi");
			String adminid=request.getParameter("adminid");
			String firstn=request.getParameter("firname");
			String secondn=request.getParameter("secname");
			String gmail=request.getParameter("gmailid");
			String mobno=request.getParameter("mobno");
			String passw=request.getParameter("passw");
			String repassw=request.getParameter("repassw");
			String p = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
					+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
			if(gmail.matches(p)){
				
			if(passw.equals(repassw)){
			adminprofilebean bean=new adminprofilebean(adminid, gmail, mobno, firstn,  secondn, passw,repassw,"x");
			HibernateException exp=Dao.saveadmindetail(bean);
			if(exp==null){
				out.println("Submited");
			}
			else{
				out.println("Admin Id alerady exist..Please Try Again!!! ");
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
		else if(btn.equals("updatepro")){
			
			System.out.println("hlo");
			String adminid=request.getParameter("adminid");
			String gmail=request.getParameter("gmailid");
			String mobno=request.getParameter("mobno");
			String passw=request.getParameter("passw");
			String repassw=request.getParameter("repassw");
			String p = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
					+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
			if(gmail.matches(p)){
				
			if(passw.equals(repassw)){
			HibernateException exp=Dao.updateadmindetail(adminid,gmail,mobno,passw,repassw);
			if(exp==null){
				out.println("Updated");
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
		else if(btn.equals("admincheck"))
		{
			String adid=request.getParameter("adid");
			String adpass=request.getParameter("adpass");
			    adminprofilebean ref=Dao.fetchprofile(adid);
			    if(ref!=null){
			    	String password=ref.getPassw();
			    	if(password.equals(adpass)){
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
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
