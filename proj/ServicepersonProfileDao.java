package proj;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class ServicepersonProfileDao {
	
	
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;
	public   ServicepersonProfileDao() 
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

	HibernateException updateservicpersondetail(String serid,String gmail,String mobil,String addr,String cit,String stat,String age)
	{
		HibernateException exp=null;
		try{
		  session=factory.openSession();
          tx=session.beginTransaction();
          String qry="update Beanjob set email=:a,mob=:b,addr=:c,city=:d,state=:e,age=:f where eid=:x";
          Query query=session.createQuery(qry);
          query.setString("a",gmail );
          query.setString("b",mobil);
          query.setString("c",addr);
          query.setString("d",cit);
          query.setString("e",stat);
          query.setString("f",age);
          query.setString("x",serid);
          int re=query.executeUpdate();
          System.out.println(re);
          tx.commit();
		}
		catch(HibernateException e)
		{
			exp=e;
			e.printStackTrace();
		}
		return exp;
	}
	HibernateException updateServicePersonpic(String pic,String gmailbo)
	{
		HibernateException exp=null;
		try{
		  session=factory.openSession();
          tx=session.beginTransaction();
          String qry="update Beanjob set pic=:x where email=:a";
          Query query=session.createQuery(qry);
          query.setString("x", pic);
          query.setString("a", gmailbo);
          int re=query.executeUpdate();
          System.out.println(re);
          tx.commit();
		}
		catch(HibernateException e)
		{
			exp=e;
			e.printStackTrace();
		}
		return exp;
	}
}
