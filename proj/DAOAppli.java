package proj;

import java.util.ArrayList;
import java.util.List;

import javax.swing.Spring;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class DAOAppli {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;

	
	public DAOAppli() 
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
	
	public HibernateException Save(Beanjob bean)
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
		}
		catch(HibernateException ex)
		{
			exp=ex;
			
		}
		return exp;
		
	}
	
	List<Beanjob> getdataV()
    {
             session=factory.openSession();
             tx=session.beginTransaction();
             String qr="from Beanjob";
             Query query=session.createQuery(qr);
             List<Beanjob> ls=query.list();
             tx.commit();
             return ls;
    }
  Beanjob getSingletdata(String id)
    {
             session=factory.openSession();
             tx=session.beginTransaction();
             String qr="from Beanjob where eid=:x";
             Query query=session.createQuery(qr);
             query.setString("x", id);
             Beanjob ls=(Beanjob)query.uniqueResult();
             tx.commit();
             return ls;
    }
 
  public HibernateException Delete(String pid)
  {
     HibernateException exp=null;
     try
     {
          System.out.println("1");
            session=factory.openSession();
            System.out.println("2");
            tx =session.beginTransaction();
            System.out.println("3");
            String qry="delete from Beanjob where eid=:x";
            System.out.println("4");
            Query query=session.createQuery(qry);
            System.out.println("5");
            query.setString("x", pid);
            System.out.println("6");
            int re=query.executeUpdate();
            System.out.println("7");
           System.out.println(re+"Deletion");
           System.out.println("8");
            tx.commit();
            System.out.println("9");
     }
     catch(HibernateException e)
     {
  	   e.printStackTrace();
  	   exp=e;   
     }
            return exp;
  }
  
 String getSelectedPerson_Customer_and_put_wait_into_it (String id)
  {   HibernateException exp=null;
         
           session=factory.openSession();
           tx=session.beginTransaction();
           String qr="from ComplaintBean where eid=:x and feedSperson=:y";
           Query query=session.createQuery(qr);
           query.setString("x", id);
           query.setString("y","no");
           ComplaintBean lss=(ComplaintBean)query.uniqueResult();
           tx.commit();     
            
           if(lss==null){
        	   return "no";
           }
           else{
        	   int value=lss.getCid();
        	   String type=lss.getTyp();
        	   int re;
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
            	   int sno=ls.get(0);
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
                  //---------avail change
                   session=factory.openSession();
                   tx=session.beginTransaction();
                   qr=" update SelectedPersonBean set avail=:x where serialno=:y";
                   query=session.createQuery(qr);
                   query.setInteger("x", 1);
                   query.setInteger("y", sno);
                    re=query.executeUpdate();
                   System.out.println(re);
                   tx.commit();
                   
                   
                  }
        	        	   
        	   session=factory.openSession();
               tx=session.beginTransaction();
               qr=" update ComplaintBean set eid=:x where cid=:y";
               query=session.createQuery(qr);
               query.setString("x", eid);
               query.setInteger("y", value);
               re=query.executeUpdate();
               System.out.println(re);
               tx.commit();
               if(re==0)
               {
            	   return "yes";
               }
             
              
           }
           return "no";
         
  }
  public HibernateException DeleteSelectedPerson(String pid)
  {
     HibernateException exp=null;
     try
     {
          System.out.println("1");
            session=factory.openSession();
            System.out.println("2");
            tx =session.beginTransaction();
            System.out.println("3");
            String qry="delete from SelectedPersonBean where eid=:x";
            System.out.println("4");
            Query query=session.createQuery(qry);
            System.out.println("5");
            query.setString("x", pid);
            System.out.println("6");
            int re=query.executeUpdate();
            System.out.println("7");
           System.out.println(re+"Deletion");
           System.out.println("8");
            tx.commit();
            System.out.println("9");
           //------------
            
            int i=0;
    	    session=factory.openSession();
            System.out.println("2");
            tx =session.beginTransaction();
            System.out.println("3");
            qry="update Beanjob set sid=:x where eid=:y";
            System.out.println("4");
            query=session.createQuery(qry);
            System.out.println("5");
            query.setInteger("x", i);
            query.setString("y", pid);
            System.out.println("6");
            int ree=query.executeUpdate();
            System.out.println(ree+" updated in jobappli");
            tx.commit();     
            
            
     }
     catch(HibernateException e)
     {
  	   e.printStackTrace();
  	   exp=e;   
     }
            return exp;
  }
  
  
  public HibernateException putval(String id)
  {
	     HibernateException exp=null;
	     try
	     { 
	    	    int i=1;
	    	    session=factory.openSession();
	            System.out.println("2");
	            tx =session.beginTransaction();
	            System.out.println("3");
	            String qry="update Beanjob set sid=:x where eid=:y";
	            System.out.println("4");
	            Query query=session.createQuery(qry);
	            System.out.println("5");
	            query.setInteger("x", i);
	            query.setString("y", id);
	            System.out.println("6");
	            int re=query.executeUpdate();
	            System.out.println("7");
	            tx.commit();         
	     }
	     catch(HibernateException e)
	     {
	  	   e.printStackTrace();  
	  	   exp=e;
	     }
	     return exp;
  }
  public Beanjob selectedperson(String id)
  {
	  Beanjob ls=null;
	  try{
	  session=factory.openSession();
      tx =session.beginTransaction();
      String qr="from Beanjob where eid=:x";
      Query query=session.createQuery(qr);
      query.setString("x", id);
      ls=(Beanjob)query.uniqueResult();
      tx.commit();
	  }
	  catch(HibernateException e)
	  {
		  e.printStackTrace();
	  }
	  return ls;
  }
  
  public HibernateException saveselectedperson(SelectedPersonBean data)
	{
		HibernateException exp=null;
		try{
			System.out.println("1");
		session=factory.openSession();
		System.out.println("2");
		tx=session.beginTransaction();
		System.out.println("3");
		session.save(data);
		System.out.println("hlo im in DAO");
		tx.commit();
		System.out.println("Saved....");
		}
		catch(HibernateException ex)
		{
			exp=ex;
			ex.printStackTrace();
		}
		return exp;
	}
  List<SelectedPersonBean> getSelectedpersondata()
  {
           session=factory.openSession();
           tx=session.beginTransaction();
           String qr="from SelectedPersonBean";
           Query query=session.createQuery(qr);
           List<SelectedPersonBean> ls=query.list();
           tx.commit();
           return ls;
  }
  SelectedPersonBean search_Selectedperson_sid(String eid)
  {       
           session=factory.openSession();
           tx=session.beginTransaction();
           String qr="from SelectedPersonBean where eid=:x";
           Query query=session.createQuery(qr);
           query.setString("x", eid);
           SelectedPersonBean ls=(SelectedPersonBean) query.uniqueResult();
           tx.commit();
           return ls;
            
  }
 HibernateException updatepassword(String password,String eid)
  {       
	       HibernateException ex=null;
	       try{
           session=factory.openSession();
           tx=session.beginTransaction();
           String qr=" update SelectedPersonBean set serpass=:x where eid=:y";
           Query query=session.createQuery(qr);
           query.setString("x", password);
           query.setString("y", eid);
           int re=query.executeUpdate();
           System.out.println(re);
           tx.commit();
	       }
	       catch(HibernateException exp)
	       {
	    	   ex=exp;
	    	   exp.printStackTrace();
	       }
           return ex;
            
  }
  
}
