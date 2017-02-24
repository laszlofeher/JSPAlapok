/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.flp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import org.flp.beans.User;
import org.flp.connection.ConnectionProvider;

/**
 *
 * @author tanulo
 */
public class UserRegistrationDAO {

    public static String register(User u) {
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
}