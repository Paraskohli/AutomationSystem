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


public class ServicePersonprofilepic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServicePersonprofilepic() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hlo========================================================");
		PrintWriter out=response.getWriter();
		ServicepersonProfileDao dao=new ServicepersonProfileDao();
	    	String path="C:\\Users\\user\\Dropbox\\Eclipse_mars_work_Advance\\new_proj\\WebContent\\project_temp";
		 MultipartRequest m=new MultipartRequest(request, path);
		 String pic=m.getOriginalFileName("samplefile");
		 String gmailbo=m.getParameter("gmailid");
		 String serid=m.getParameter("serid");
		
		 System.out.println(gmailbo);
		 System.out.println(serid+"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
		 HibernateException exp=dao.updateServicePersonpic(pic,gmailbo);
		 if(exp==null)
		 {
			 System.out.println("saved");
			 RequestDispatcher rd=request.getRequestDispatcher("servicepersonprofile.jsp?serid="+serid);  
	         rd.forward(request, response);
		     
		 }
	}

}
