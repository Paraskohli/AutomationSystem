package proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;


public class Availcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Availcontroller() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
       	PrintWriter out=response.getWriter();
       	AvailsystemDAO dao=new AvailsystemDAO();
       
       	String cid=request.getParameter("cidmodal");
       	String da=request.getParameter("dat");
       	String feedback=request.getParameter("feedarea");
       	String charges=request.getParameter("charges");
    	String warr=request.getParameter("warranty");
    	DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
    	String eid=request.getParameter("sid");
    	System.out.println("*************+++++++++"+eid);
		 java.util.Date javawalli = null;
		try {
			javawalli = format.parse(da);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 java.sql.Date sqlwallidate=new Date(javawalli.getTime());
		 int complaintno=dao.get_cno(cid,eid);
		
		System.out.println(complaintno+"        @@@@@@@@@@@@@@@@@@@@@");
		HibernateException e=dao.updateComplainBean(complaintno, sqlwallidate, feedback, charges, warr);
		if(e!=null)
		{
		  e.printStackTrace();
		}
		//email getting data
		Customerlogin_signinBean ex=dao.get_emailid_of_customer(cid);
		if(ex==null)
		{
		  e.printStackTrace();
		  out.print("Mail is not send to customer,check the connection and retry!!!");
		}
		String emailid=ex.getGmail();
		
		MessagingException mailoutput=MailSend.send(emailid,cid, sqlwallidate, feedback, charges, warr,eid,complaintno);
		if(mailoutput!=null)
		{
			out.println(mailoutput.toString());
		}
		
		e=dao.availapply(eid);
		if(e!=null)
		{
		e.printStackTrace();
		 out.print("Something is wrong,check the connection and retry!!!");
		}
		e=dao.AutomationSystemApply(eid);
		if(e!=null)
		{
		e.printStackTrace();
		out.print("Something is wrong,check the connection and retry!!!");
		}
		else{
			out.print("Done");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
