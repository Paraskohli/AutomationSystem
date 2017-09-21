package proj;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class Servicepersonfetchalldao {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;

	
	public Servicepersonfetchalldao() 
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
	Beanjob getdata(String serid)
    {
             session=factory.openSession();
             tx=session.beginTransaction();
             System.out.println(serid);
             String qr="from Beanjob where eid=:x";
             Query query=session.createQuery(qr);
             query.setString("x", serid);
             Beanjob ls=(Beanjob)query.uniqueResult();
             tx.commit();
             return ls;
    }

}
