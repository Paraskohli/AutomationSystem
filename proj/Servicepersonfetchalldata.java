package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class Servicepersonfetchalldata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Servicepersonfetchalldata() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
       try{
			
			PrintWriter out=response.getWriter();
			Servicepersonfetchalldao dao=new Servicepersonfetchalldao();
		    String serid=request.getParameter("serid");
		    Beanjob dat=dao.getdata(serid);

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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	}

}
