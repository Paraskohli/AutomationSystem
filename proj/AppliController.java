package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;

import com.oreilly.servlet.MultipartRequest;

public class AppliController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
    public AppliController() {
        super();
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("hlo");
		System.out.println(request.getParameter("eid"));
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eid,name, pic, email, mob, add,city,  state,  tknow,  exp,special1, special2,  special3, idproof,idbrowse;
		 int sid=0, age;
		 String btn;
		System.out.println("hiiiiiiiiiiiiiiiiiiii");
		 DAOAppli dao=new DAOAppli();
		 String path="C:\\Users\\user\\Dropbox\\Eclipse_mars_work_Advance\\new_proj\\WebContent\\project_temp";
		 PrintWriter out=response.getWriter();
		 MultipartRequest m=new MultipartRequest(request, path);
		 btn=m.getParameter("btn");
		 System.out.println(btn);
		  if(btn.equals("Save"))
		  {
			  eid=m.getParameter("uid");
			  name=m.getParameter("name");
			  String ag=m.getParameter("age");
			 
			  pic=m.getOriginalFileName("pic");
			  email=m.getParameter("eid");
			  mob=m.getParameter("mob");
			  add=m.getParameter("address");
			  city=m.getParameter("city");
			  state=m.getParameter("state");
			  tknow=m.getParameter("techq");
			  exp=m.getParameter("exp");
			  System.out.println(exp);
			  special1=m.getParameter("sp1");
			  System.out.println(special1);
			  
			  special2=m.getParameter("sp2");
			  System.out.println(special2);
			  
			  special3=m.getParameter("sp3");
			  System.out.println(special3);
			  idproof=m.getParameter("comb");
			  
			  idbrowse=m.getOriginalFileName("InputFile");
			  if(eid!=null && name!=null && ag!=null && pic!=null && email!=null && mob!=null && add!=null && city!=null && state!=null && (exp.equals("none")==false) && (special1.equals("none")==false) && idproof!=null && idbrowse!=null)
			  {
				  age=Integer.parseInt(ag);
				   Beanjob bean=new Beanjob( sid, eid,  name,  age,  pic,  email,  mob, add,
					 city,  state,  tknow,  exp,  special1, special2,special3,idproof,
						 idbrowse);
			 
	              HibernateException ex=dao.Save(bean);
		          if(ex==null)
		          {
		        	 System.out.println("saved");
		    	     RequestDispatcher rd=request.getRequestDispatcher("thankspageforjob.jsp");  
		             rd.forward(request, response);
		          }
		          else
		          {
		    	     ex.printStackTrace();
		    	     out.print("Some data is not fill properly..Please try again!!!");
		          }
			  }
			  else
			  {
			  out.print(" <h1 style='text-align:center;' >Some mandatory (*) data or Profile Picture/Identity Picture is not fill properly..Please try again!!!</h1>");
			  }
	      }
		 

    }
}
