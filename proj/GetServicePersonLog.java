package proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class GetServicePersonLog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public GetServicePersonLog() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("btn");
		ServicepersonLogDao dao=new ServicepersonLogDao();
		if(btn.equals("data"))
		{
	    String txt=request.getParameter("txt");
		List<ComplaintBean> ls=dao.fetchdata(txt);
		System.out.println("hlo");
		System.out.println(ls);
		Gson json=new Gson();
		String data=json.toJson(ls);
		System.out.println(data);
		out.println(data);
		}
		else{
			System.out.println("hi");
			 String cid=request.getParameter("cid");
			ComplaintBean ls=dao.fetchdetail(Integer.parseInt(cid));
			System.out.println("hlo");
			System.out.println(ls);
			Gson json=new Gson();
			String data=json.toJson(ls);
			System.out.println(data);
			out.println(data);
		}
	    
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
	}

}
