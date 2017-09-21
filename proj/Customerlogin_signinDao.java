package proj;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class Customerlogin_signinDao {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;
	public  Customerlogin_signinDao() 
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
	HibernateException savecustsignin(Customerlogin_signinBean bean){
		
		HibernateException exp=null;
		try 
		{	
			session=factory.openSession();
			tx=session.beginTransaction();
			session.save(bean);
			System.out.println("hlo im in DAO");
			tx.commit();
			System.out.println("Saved....");	
		} 
		catch (HibernateException e) {
			exp=e;
			e.printStackTrace();
		}
		return exp;
	}
	Customerlogin_signinBean search_Customerdata_based_on_cid(String custid)
	  {       
	           session=factory.openSession();
	           tx=session.beginTransaction();
	           String qr="from Customerlogin_signinBean where cusid=:x";
	           Query query=session.createQuery(qr);
	           query.setString("x", custid);
	           Customerlogin_signinBean ls=(Customerlogin_signinBean) query.uniqueResult();
	           tx.commit();
	           return ls;
	            
	  }
	HibernateException updatecustdetail(String gmail,String cusid,String passw,String repassw)
	{
		HibernateException exp=null;
		try{
		  session=factory.openSession();
          tx=session.beginTransaction();
          String qry="update Customerlogin_signinBean set gmail=:x,passw=:y,repassw=:z where cusid=:a";
          Query query=session.createQuery(qry);
          query.setString("x", gmail);
          query.setString("y", passw);
          query.setString("z", repassw);
          query.setString("a", cusid);
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
	HibernateException updateCustomerpic(String pic,String cusid)
	{
		HibernateException exp=null;
		try{
		  session=factory.openSession();
          tx=session.beginTransaction();
          String qry="update Customerlogin_signinBean set custpic=:x where cusid=:a";
          Query query=session.createQuery(qry);
          query.setString("x", pic);
          query.setString("a", cusid);
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
	Customerlogin_signinBean getpasscust(String cid)
	{
		Customerlogin_signinBean bean=null;
		
		  session=factory.openSession();
          tx=session.beginTransaction();
          String qr="from Customerlogin_signinBean where cusid=:x";
          Query query=session.createQuery(qr);
          query.setString("x", cid);
          bean=(Customerlogin_signinBean) query.uniqueResult();
          tx.commit();
          
		return bean;
	}
}