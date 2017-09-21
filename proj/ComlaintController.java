package proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;

import com.oreilly.servlet.MultipartRequest;


public class ComlaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Date currentdate=null;
    public ComlaintController() {
        super(); 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out=response.getWriter();
		ComplaintDAO dao=new ComplaintDAO();
		String path="C:\\Users\\user\\Dropbox\\Eclipse_mars_work_Advance\\new_proj\\WebContent\\project_temp";
		MultipartRequest m=new MultipartRequest(request, path);
		
		
		 String btn=m.getParameter("btnsub");
		 System.out.println(btn);
		  if(btn.equals("Submit"))
		  {
			 String txtcid=m.getParameter("txtcid");
			 String txtname=m.getParameter("txtcname");
			 String comboproduct=m.getParameter("comboproduct");
			 String combotype=m.getParameter("combotype");
			 String lstmodal=m.getParameter("lstmodal");
			 String txtserial=m.getParameter("txtserial");
			 String txtdes=m.getParameter("txtdes");
			 String pic=m.getOriginalFileName("samplefile");
			 String txtadd=m.getParameter("txtadd");
			 String txtphone=m.getParameter("txtphone");
			 String txtcity=m.getParameter("txtcity");
			 String wproof=m.getOriginalFileName("wproof");
			 String warranty=m.getParameter("warranty");
			
			 
			  String eid=dao.getAutoEid(combotype);
			 
			  System.out.println(eid);
			
			  Calendar c=Calendar.getInstance();
			  c.setTime(new java.util.Date());
			  java.util.Date dt=c.getTime();
			 
			  currentdate=new Date(dt.getTime());
			  if(txtcid!=null && txtname!=null&& (comboproduct.equals("none")==false) && (combotype.equals("select")==false) && lstmodal!=null && txtserial!=null && txtdes!=null && txtadd!=null && txtphone!=null && txtcity!=null)
			  {
			  ComplaintBean bean=new ComplaintBean(txtcid,txtname, comboproduct,combotype,lstmodal,txtserial, txtdes,pic, txtadd ,txtphone, txtcity,currentdate ,eid,wproof,warranty,"no");
			 
	         HibernateException ex=dao.submit(bean);
		     if(ex==null)
		      {
		    	 System.out.println("saved");
		    	 RequestDispatcher rd=request.getRequestDispatcher("thankspage.jsp");  
		         rd.forward(request, response);
		      }
		     else
		     {
		    	 ex.printStackTrace();
		     }
			  }
			  else{
				  out.print(" <h1 style='text-align:center;' >Some mandatory (*) data is not fill properly..Please try again!!!</h1>");
			  }
	   }
	}

}
