package proj;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class ServicepersonLogDao
{
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;
	public  ServicepersonLogDao()
	{
		try
		{
	    System.out.println(" ***************************** ");
		conf=new AnnotationConfiguration();
		conf.configure("hibernate.cfg.xml");
		factory= conf.buildSessionFactory();
		}
		catch (HibernateException h) 
		{
			h.printStackTrace();
		}
	}
	
	List<ComplaintBean> fetchdata(String eid)
    {
		List<ComplaintBean> ls=null;
		
		try{
             session=factory.openSession();
             tx=session.beginTransaction();
             String qr="from ComplaintBean where eid=:x";
             Query query=session.createQuery(qr);
             query.setString("x", eid);
             ls=query.list();
             tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		 return ls;
    }		
	
	ComplaintBean fetchdetail(int cid)
    {
		ComplaintBean ls=null;
		
		try{
             session=factory.openSession();
             tx=session.beginTransaction();
             String qr="from ComplaintBean where cid=:x";
             Query query=session.createQuery(qr);
             query.setInteger("x", cid);
             ls=(ComplaintBean)query.uniqueResult();
             tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		 return ls;
    }		
}
