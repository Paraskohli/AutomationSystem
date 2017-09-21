package proj;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class ComplaintDAO 
{
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;
	int sno;
	
	public  ComplaintDAO() 
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
	
   public HibernateException submit(ComplaintBean bean)
   {
	   HibernateException exp=null;
	   
	   try{
			System.out.println("1");
		session=factory.openSession();
		System.out.println("2");
		tx=session.beginTransaction();
		System.out.println("3");
		session.save(bean);
		System.out.println("hlo im in DAO");
		tx.commit();
		System.out.println("Saved....");
		
		  //------------
        
        int i=1;
	    session=factory.openSession();
        
        tx =session.beginTransaction();
        
        String qr="update SelectedPersonBean set avail=:x where serialno=:y";
       
        Query query=session.createQuery(qr);
       
        query.setInteger("x", i);
        query.setInteger("y", sno);
        
        int re=query.executeUpdate();
       
        System.out.println("output:"+re);
        tx.commit();   
		
		}
		catch(HibernateException ex)
		{
			exp=ex;	
		}
	   
	   return exp;
   }
   List<RegBean> getcombo1data()
   {
            session=factory.openSession();
            tx=session.beginTransaction();
            String qr="select distinct ptype from RegBean ";
            Query query=session.createQuery(qr);
            List<RegBean> ls=query.list();
            tx.commit();
            return ls;
   }
   List<RegBean> getcombo11data()
   {
            session=factory.openSession();
            tx=session.beginTransaction();
            String qr=" from RegBean ";
            Query query=session.createQuery(qr);
            List<RegBean> ls=query.list();
            tx.commit();
            return ls;
   }
   
   List<RegBean> getcombo2data(String pro)
   {
            session=factory.openSession();
            tx=session.beginTransaction();
            String qr="from RegBean where product=:x";
            Query query=session.createQuery(qr);
            query.setString("x", pro);
            List<RegBean> ls=query.list();
            tx.commit();
            return ls;
   }
   List<RegBean> getcombo3data(String pro)
   {
            session=factory.openSession();
            tx=session.beginTransaction();
            String qr="from RegBean where ptype=:x";
            Query query=session.createQuery(qr);
            query.setString("x", pro);
            List<RegBean> ls=query.list();
            tx.commit();
            return ls;
   }
   String getAutoEid(String type)
   {
	   String qr;Query query;
	   session=factory.openSession();
       tx=session.beginTransaction();
       qr="select min(serialno) from SelectedPersonBean where avail=:x and (special1=:a or special2=:b or special3=:c) ";
       query=session.createQuery(qr);
       query.setInteger("x", 0);
       query.setString("a", type);
       query.setString("b", type);
       query.setString("c", type);
       List<Integer> ls=query.list();
       tx.commit();
       String eid;
       if(ls.get(0)==null)
         {
    	   System.out.println("null value");
    	   eid="wait";
         }
       else
       {
    	   sno=ls.get(0);
    	   System.out.println(sno);
    	   System.out.println(sno);
    	   System.out.println(sno);

           session=factory.openSession();
           tx=session.beginTransaction();
           qr="from SelectedPersonBean where serialno=:y";
           query=session.createQuery(qr);
           query.setInteger("y", sno);
           SelectedPersonBean obj=(SelectedPersonBean)query.uniqueResult();
           tx.commit();
           System.out.println(obj);
           eid=obj.getEid();
         
       }
       return eid;
   }
}
