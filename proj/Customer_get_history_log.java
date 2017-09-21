package proj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


public class Customer_get_history_log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Customer_get_history_log() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		get_customer_data_DAO dao=new get_customer_data_DAO();
		String btn=request.getParameter("btn");
	  if(btn.equals("cust"))
	  {
		String cusid=request.getParameter("custid");
		System.out.println(cusid);
		List<ComplaintBean> list=dao.getdataV(cusid);
		System.out.println("hlo");
		System.out.println(list);
		Gson json=new Gson();
		String data=json.toJson(list);
		System.out.println(data);
		out.println(data);
		
	  }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
