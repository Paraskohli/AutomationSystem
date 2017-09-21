package proj;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class save_customer_Feedback_DAO {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;

	
	public save_customer_Feedback_DAO() 
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
	public HibernateException Feedbackupdate(String feedback,int cid,String custid)
	{
		HibernateException exp=null;
		try
		{
			 session=factory.openSession();
             tx=session.beginTransaction();
             
             String qry="update ComplaintBean set feedback=:a where cid=:x and CustID=:y";
             
             Query query = session.createQuery(qry);
              query.setString("a",feedback);
			  query.setInteger("x",cid );
			  query.setString("y",custid);
			
			  int r = query.executeUpdate();
			 System.out.println("chl gya  "+r);
			  tx.commit();
		}
		catch(HibernateException e)
		{
			exp=e;
		}
		return exp;
	}
}
