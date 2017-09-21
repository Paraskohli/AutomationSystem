package proj;

import java.sql.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class AdminLogDao {

	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;
	public  AdminLogDao()
	{
		try
		{
	    System.out.println(" ***************************** ");
		conf=new AnnotationConfiguration();
		conf.configure("hibernate.cfg.xml");
		factory= conf.buildSessionFactory();
		}
		catch (HibernateException h) {
			h.printStackTrace();
		}
	}
	
	public  List<SelectedPersonBean> combodata()
	{
		 List<SelectedPersonBean> ex=null;
		
		try{
			   session=factory.openSession();
	           tx=session.beginTransaction();
	           String qr="from SelectedPersonBean";
	           Query query=session.createQuery(qr);
	           ex=query.list();
	           tx.commit();
	          
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
		}
		return ex;
	}
	public  List<ComplaintBean>  getthumb(String eid,String frmdate,String todate)
	{
		List<ComplaintBean> ex=null;
		try
		{
			session=factory.openSession();
	        tx=session.beginTransaction();
	        String qr="from ComplaintBean  where eid=:x and str(recievedate) between :a and :b";
	        Query query=session.createQuery(qr);
	        query.setString("x", eid);
	        query.setParameter("a", frmdate);
	        query.setParameter("b", todate);
	        ex=query.list();
	        System.out.println(ex);
            tx.commit();
	        
		}
		catch(HibernateException e){
			e.printStackTrace();
		}
		return  ex;
	}
}
