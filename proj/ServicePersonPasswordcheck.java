package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.cache.UpdateTimestampsCache;

public class ServicePersonPasswordcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServicePersonPasswordcheck() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
	//	out.println("bcbsjcbjk");
		String btn=request.getParameter("btn");
		DAOAppli dao=new DAOAppli();
		if(btn.equals("check"))
		{
		String serid=request.getParameter("ser_id");
		String serpass=request.getParameter("ser_pass");
		System.out.println(serpass);
		    SelectedPersonBean ref=dao.search_Selectedperson_sid(serid);
		    System.out.println(ref.getSerpass());
		    if(ref!=null){
		    	String password=ref.getSerpass();
		    	System.out.println(password);
		    	if(password.equals(serpass)){
		    		out.println("1");
		    	}
		    	else{
		    		System.out.println("Mai yaha hu");
		    		out.println("Wrong Entry Please Check Again!!!");
		    	}
		    }
		    else{
		    	System.out.println("null hai yr");
	    		out.println("Wrong Entry Please Check Again!!!");
	    	}
		 
		}
		else if(btn.equals("updatepass")){
			String newpass=request.getParameter("npass");
			String repass=request.getParameter("repass");
			String sid=request.getParameter("sid");
			System.out.println(newpass+"   "+repass+"   "+sid);
			if(newpass.equals(repass)){
				HibernateException exp=dao.updatepassword(newpass,sid);
				if(exp==null)
				{
					out.println("updated data");
				}
				else{
					out.println("not updated please try again!!!");
				}
			}
			else{
				out.println("Data is matched please try Again!!!");
				
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
