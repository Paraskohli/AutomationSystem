package proj;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class servicepersonDAO {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;
	
	 public servicepersonDAO() 
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
	
	 public ComplaintBean getdata(String eid)
	 {
		 System.out.println(eid);
		 ComplaintBean bean=null;
		
		 try
		 {	//select min(cid) from ComplaintBean
			 
		   session=factory.openSession();
		   tx=session.beginTransaction();
		   String qr="select max(cid) from ComplaintBean where eid=:x and feedSperson=:y";
		   Query query=session.createQuery(qr);
	       query.setString("x", eid);
	       query.setString("y", "no");
		   List<Integer> id=query.list();
		   
		   tx.commit();
		   System.out.println(id);
		   int cid=id.get(0);
		   System.out.println(cid);
		   session=factory.openSession();
		   tx=session.beginTransaction();
		   qr=" from ComplaintBean where cid=:x ";
		   query=session.createQuery(qr);
	       query.setInteger("x", cid);
		   bean=(ComplaintBean)query.uniqueResult();
		   tx.commit();
		 }
		catch(Exception e)
		{
		   e.printStackTrace();
		}
		 
		 return bean;
	 }

}
