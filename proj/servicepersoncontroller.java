package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class servicepersoncontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public servicepersoncontroller() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out=response.getWriter();
		servicepersonDAO dao=new servicepersonDAO();
		String btn=request.getParameter("btn");
		if(btn.equals("fetch"))
		{
			
			String eid=request.getParameter("serid"); //---get service-Person ID
			System.out.println(eid);
			ComplaintBean bean=dao.getdata(eid);
			Gson json=new Gson();
			String data=json.toJson(bean);
			out.println(data);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
