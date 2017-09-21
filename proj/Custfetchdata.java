package proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class Custfetchdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Custfetchdata() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try{
			
			PrintWriter out=response.getWriter();
		    CustfetchdataDAO dao=new CustfetchdataDAO();
		    String custid=request.getParameter("cusid");
		    Customerlogin_signinBean dat=dao.getdata(custid);

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
