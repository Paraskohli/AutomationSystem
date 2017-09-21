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

public class Adminprofilepic extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Adminprofilepic() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hlo");
		PrintWriter out=response.getWriter();
		adminprofiledao dao=new adminprofiledao();
	    	String path="C:\\Users\\user\\Dropbox\\Eclipse_mars_work_Advance\\new_proj\\WebContent\\Adminpics";
		 MultipartRequest m=new MultipartRequest(request, path);
		 String pic=m.getOriginalFileName("samplefile");
		 String adminid=m.getParameter("adminid");
		 HibernateException exp=dao.updateadminpic(pic, adminid);
		 if(exp==null)
		 {
			 System.out.println("saved");
			 RequestDispatcher rd=request.getRequestDispatcher("Adminprofiledetail.jsp?adid="+adminid);  
	         rd.forward(request, response);  
		     
		 }
	}

}
