package proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;




public class searchall extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public searchall() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			DAOReg dao=new DAOReg();
			List<RegBean> list=dao.searchall();
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
