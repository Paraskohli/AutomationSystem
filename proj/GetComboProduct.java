package proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class GetComboProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetComboProduct() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		 String btn=request.getParameter("btn");
		 PrintWriter out=response.getWriter();
		 if(btn.equals("auto"))
		  {
		    try
		    {
		    	    ComplaintDAO dao=new ComplaintDAO();
				    List<RegBean> list=dao.getcombo1data();
					System.out.println("hlo");
					System.out.println(list);
					
					Gson json=new Gson();
					String data=json.toJson(list);
					System.out.println(data);
					out.println(data);
			
		    }
		    catch(Exception e)
		    {
			e.printStackTrace();
		    }
		  }
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
	}

}
