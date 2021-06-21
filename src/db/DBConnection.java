package db;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBConnection {
	static Connection conn;

	public static Connection connect() {
		try {
			Context ctx = new InitialContext();
			String path = "java:/comp/env/";
			String dePath = "jdbc/orcl";
			DataSource ds = (DataSource) ctx.lookup(path + dePath);

			conn = ds.getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
	}
}
