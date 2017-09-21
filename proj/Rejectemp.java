package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;


public class Rejectemp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Rejectemp() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("btn");
		String eid=request.getParameter("id");
	    DAOAppli dao=new DAOAppli();
		System.out.println("xajhjxaljlskjjxjasvhvchvljsvhchvjv");
		
		  if(btn.equals("delete"))
		  {	
			  HibernateException exp=dao.Delete(eid);
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
		  else if(btn.equals("selected"))
		  {
			 
			//  HibernateException exp=dao.putval(eid);
			  //------------
			  System.out.println("hloiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
			  Beanjob ref= dao.selectedperson(eid);
			 
			         if(ref==null)
			        {
			    	 System.out.println("***data is not coming**");
			        }
			         else
			        {
			        	 System.out.println(ref.getSid()+"   pppppppppppppppppppppp");
			        	 if(ref.getSid()==0)
						  {
			                  HibernateException exp=dao.putval(eid);
			    	          System.out.println(System.currentTimeMillis());
			    	          long genratepassword=System.currentTimeMillis();
			    	          String mobileselectedperson=ref.getMob();
			    	          SelectedPersonBean data=new SelectedPersonBean(1, ref.getEid(),ref.getName(), ref.getEmail(), ref.getMob(), ref.getSpecial1(),ref.getSpecial2(),ref.getSpecial3(),0,String.valueOf(genratepassword));	
	                          HibernateException mo=dao.saveselectedperson(data);
	                          if(mo==null)
	            			  {
	            				  System.out.println("Person data stored"); 
	            				  //message send to selected service person
	            				  System.out.println(mobileselectedperson);
	            			  }
	            			  else
	            			  {
	            				  System.out.println("not Person data store");
	            			  }
	                          if(exp==null)
	        				  {
	        					  System.out.println("Person Selected");
	        					  out.print("Person Selected");
	        				  }
	        				  else
	        				  {
	        					  System.out.println("not Person Selected ");
	        					  out.println(" not Person Selected");
	        				  }
						  }
			        	 else{
			        		 out.println("This Person is Already Selected");
			        	 }
			          } 
		     }
		  
		     else if(btn.equals("deleteSelected"))
	         {   
		    	 System.out.println("Seleted Person Delete id="+eid);
		    	 String ret=dao.getSelectedPerson_Customer_and_put_wait_into_it(eid);
	             if(ret.equals("no"))
	             {
		    	  HibernateException exp=dao.DeleteSelectedPerson(eid);
				  if(exp==null)
				  {
					  System.out.println("Delete");
					  out.print("Service Person is Unselected");
				  }
				  else
				  {
					  System.out.println("not Deleted yet ");
					  out.println("Service Person is not Unselected Yet,Try Again!!!");
				  }
	             }
	             else{
	            	 out.println("Something is Wrong,Please Refresh the page !!! ");
	             }
	         }
		  
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
