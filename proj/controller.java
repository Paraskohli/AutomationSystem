package proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;

import com.google.gson.Gson;






public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public controller() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("btn");
		 DAOReg dao=new DAOReg();
		  if(btn.equals("Save"))
		  {
		
			
			 
			 String product=request.getParameter("product");
			 String ptype=request.getParameter("ptype");
			 String modal=request.getParameter("modal");
			
			if(product!="" && ptype!="" && modal!="")
		   {
			 System.out.println(product+"  "+ptype+"  "+modal);
			 RegBean bean=new RegBean(product,ptype,modal);
	         HibernateException exp=dao.Save(bean);
		     if(exp==null)
		      {
		    	 System.out.println("saved");
			      out.print("Saved");
		      }
		     else
		     {
		    	System.out.println("problem");
			    out.println("Duplicate ID not Allowed");
			    exp.printStackTrace();
		     }
		   }
		 else
		   {
				 out.println("Fill All Empty Column");
		   }
		  }
		  else if(btn.equals("Delete"))
		  {
			  System.out.println("hlohi");
			   String pid=request.getParameter("id");
					   System.out.println(pid);
				 HibernateException exp=dao.Delete(java.lang.Integer.parseInt(pid.trim()));
				  if(exp==null)
				  {
					  System.out.println("Delete");
					  out.print("Data Deleted");
				  }
				  else
				  {
					  System.out.println("not Deleted yet ");
					  out.println("Data not Deleted");
				  }
		  }
		  else if(btn.equals("Edit"))
		    {
			
				 
				 String id=request.getParameter("id");
				 String product=request.getParameter("productu");
				 String ptype=request.getParameter("ptype");
				 String modal=request.getParameter("modalu");
				 if(product!="" && ptype!="" && modal!="")
				 {
				    System.out.println(product+"   "+modal);
				    RegBean bea=new RegBean(Integer.parseInt(id),product,ptype,modal);
				
				 
				    HibernateException exp=dao.Update(bea);
				    if(exp==null)
				    {
					  System.out.println("Update");
					  out.print("Data Updated");
				    }
				    else
				    {
					  System.out.println("not Updated yet ");
					  out.println("Data not Updated");
				    }
				  }
				 else
				 {
					 out.println("Fill All Empty Column");
				 }
		    }
		  else if(btn.equals("fetch"))
		  {
			  String pid=request.getParameter("id");
			  System.out.println(pid);
			   RegBean list=dao.fetchdata(java.lang.Integer.parseInt(pid));
			   System.out.println(list);
			   Gson json=new Gson();
			   String data=json.toJson(list);
		       System.out.println(data);
			   out.println(data);
			  
		  }
		  
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
