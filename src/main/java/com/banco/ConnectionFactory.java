package com.banco;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionFactory {
	
	public Connection getConnection() {
        try {
        	DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            return DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","administrador","administrador");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
