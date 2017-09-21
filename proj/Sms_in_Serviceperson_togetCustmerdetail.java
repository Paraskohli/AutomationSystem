package proj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class Sms_in_Serviceperson_togetCustmerdetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Sms_in_Serviceperson_togetCustmerdetail() {
        super();   
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		servicepersonDAO dao=new servicepersonDAO();
		String btn=request.getParameter("btn");
		if(btn.equals("fetch"))
		{
			
			String eid=request.getParameter("serid"); //---get service-Person ID
			System.out.println(eid);
			ComplaintBean bean=dao.getdata(eid);
			String msg="Product:"+bean.Product
					  +"Prod Type:"+bean.typ
					  +"Prod Sr No:"+bean.serial
					  
					  +"Add:"+bean.address
					  +"M.No:"+bean.mobile
					  +"City:"+bean.city
					  +"Complaint Date:"+bean.currentdate
					  +"Warranty:"+bean.warranty;
			System.out.println("msg=  "+msg);
			DAOAppli dao1=new DAOAppli();
			Beanjob b=dao1.getSingletdata(eid);
			String mob=b.mob;
			System.out.println("mob=  "+mob);
			String data=Smsclass.bceSunSoftSend(mob, msg);
			System.out.println(data);
			out.print(data);
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
