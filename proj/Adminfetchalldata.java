package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class Adminfetchalldata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Adminfetchalldata() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try{
				
				PrintWriter out=response.getWriter();
				Adminfetchalldao dao=new Adminfetchalldao();
			    String adid=request.getParameter("adid");
			    System.out.println(adid);
			    adminprofilebean dat=dao.getdata(adid);

				System.out.println(dat);
				Gson json=new Gson();
				String data=json.toJson(dat);
				System.out.println(data);
				out.println(data);
			    
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
