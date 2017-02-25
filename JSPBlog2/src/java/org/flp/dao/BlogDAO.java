/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.flp.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.flp.model.Blogentry;
import org.flp.model.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author tanulo
 */
public class BlogDAO {
    public ArrayList<Blogentry> getBlogs() {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        ArrayList<Blogentry> al = new ArrayList();
        try {
            tx = session.beginTransaction();
            List blogEntrys = session.createQuery("FROM Blogentry").list();
            for(Iterator iterator = blogEntrys.iterator(); iterator.hasNext();){
                al.add((Blogentry)iterator.next());
            }
            tx.commit();
            session.close();
            return al;
        } catch (HibernateException he) {
            session.close();
            return al;
        }
    }
}