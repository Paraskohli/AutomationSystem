package proj;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class Adminfetchalldao {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;

	
	public Adminfetchalldao() 
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
	adminprofilebean getdata(String adid)
    {
             session=factory.openSession();
             tx=session.beginTransaction();
             System.out.println(adid);
             String qr="from adminprofilebean where adminid=:x";
             Query query=session.createQuery(qr);
             query.setString("x", adid);
             adminprofilebean ls=(adminprofilebean)query.uniqueResult();
             tx.commit();
             return ls;
    }

}
