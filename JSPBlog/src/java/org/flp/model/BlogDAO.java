/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.flp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.flp.beans.BlogEntry;
import org.flp.connection.ConnectionProvider;

/**
 *
 * @author tanulo
 */
public class BlogDAO {

    /*public static String register(User u) {
        String status = "0";
        try {
            Connection con = ConnectionProvider.getCon();
            if (con != null) {
                PreparedStatement ps
                = con.prepareStatement("insert into siteuser (email, password,crd, lud) values(?,?, NOW(), NOW())");
                ps.setString(1, u.getUemail());
                ps.setString(2, u.getUpass());
                status = String.valueOf(ps.executeUpdate());
            }else{
                status = "-1";
            }
        } catch (Exception e) {
            status = e.getMessage();
        }
        return status;
    }
    */
    public static ArrayList<BlogEntry> getBlogs(){
        Connection con = ConnectionProvider.getCon();
        ArrayList<BlogEntry> al = new ArrayList();
        if (con != null) {
            try {
                PreparedStatement ps
                        = con.prepareStatement("select title, entry, entrydate from blogentry");
                ResultSet rs = ps.executeQuery();
                while(rs.next()){
                    BlogEntry be = new BlogEntry(rs.getString("title"), rs.getString("entry"), rs.getDate("entrydate"));
                    al.add(be);
                }
                return al;
            } catch (SQLException ex) {
                Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
                return al;
            }
        }
        return al;
    }
}