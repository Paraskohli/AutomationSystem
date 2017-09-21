package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;

import com.oreilly.servlet.MultipartRequest;


public class Customerprofilepic extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Customerprofilepic() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hiiiiiiiiiiiiiiiiii");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hlo");
		PrintWriter out=response.getWriter();
		Customerlogin_signinDao dao=new Customerlogin_signinDao();
	    	String path="C:\\Users\\user\\Dropbox\\Eclipse_mars_work_Advance\\new_proj\\WebContent\\customerpics";
		 MultipartRequest m=new MultipartRequest(request, path);
		 String pic=m.getOriginalFileName("samplefile");
		 String custid=m.getParameter("custid");
		 if(pic!=null)
		{
		 HibernateException exp=dao.updateCustomerpic(pic,custid);
		 if(exp==null)
		 {
			 System.out.println("saved");
			 RequestDispatcher rd=request.getRequestDispatcher("Customerfrontdiv.jsp?cuid="+custid);  
	         rd.forward(request, response);  
		     
		 }
		}
		else{
			 System.out.println("not selected the pic yet!!");
			 RequestDispatcher rd=request.getRequestDispatcher("Customerfrontdiv.jsp?cuid="+custid);  
	         rd.forward(request, response); 
		    }
		
	}
}


