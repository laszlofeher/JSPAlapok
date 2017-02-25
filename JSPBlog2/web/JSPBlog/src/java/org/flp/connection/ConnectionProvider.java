/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.flp.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import static org.flp.connection.Provider.CONNECTION_URL;
import static org.flp.connection.Provider.PASSWORD;
import static org.flp.connection.Provider.USERNAME;

/**
 *
 * @author tanulo
 */
public class ConnectionProvider {

    private static Connection con = null;

    static {
        try {
            con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
        } catch (Exception e) {
            
        }
    }

    public static Connection getCon() {
        return con;
    }
}
