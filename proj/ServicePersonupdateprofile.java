package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;

public class ServicePersonupdateprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ServicePersonupdateprofile() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServicepersonProfileDao Dao=new ServicepersonProfileDao();
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("btn");
         if(btn.equals("updatepro")){
			
			String serid=request.getParameter("serid");
			String gmail=request.getParameter("gmailid");
			String mobil=request.getParameter("mobil");
			String addr=request.getParameter("addr");
			String cit=request.getParameter("cit");
			String stat=request.getParameter("stat");
			String age=request.getParameter("age");
			String p = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
					+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
			if(gmail.matches(p)){
				
			
			HibernateException exp=Dao.updateservicpersondetail(serid,gmail,mobil,addr,cit,stat,age);
			if(exp==null){
				out.println("Submited");
			}
			else{
				out.println("Some problem occure..Please Check your filled data Again!!! ");
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
