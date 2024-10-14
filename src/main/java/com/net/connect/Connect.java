package com.net.connect;

import java.sql.*;


import java.sql.DriverManager;

import com.net.provider.Provider;

public class Connect implements Provider {
	static Connection con = null;

	public static Connection getConnection() {
		try {
			Class.forName(dclass);
			con = DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
            e.printStackTrace();
		}
		return con;
	}
}