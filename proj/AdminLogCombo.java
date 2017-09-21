package proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class AdminLogCombo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AdminLogCombo() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("ho");
      PrintWriter out=response.getWriter();
	  String btn=request.getParameter("btn");
	  if(btn.equals("change"))
	  {
		  AdminLogDao dao=new AdminLogDao();
		  List<SelectedPersonBean> data=dao.combodata();
		  Gson json=new Gson();
		  String d=json.toJson(data);
		  System.out.println(d);
		  out.println(d);
	  }
	  else if(btn.equals("data")){ 
		  AdminLogDao dao=new AdminLogDao();
		  String eid=request.getParameter("combotype");
		  String fdate= request.getParameter("fdate");
		  String tdate= request.getParameter("tdate");
		 
		  List<ComplaintBean> data =dao.getthumb(eid,fdate,tdate);
		  Gson json=new Gson();
		  String d=json.toJson(data);
		  System.out.println(d);
		  out.println(d);
		  
	  }
	
	  
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	}

}
