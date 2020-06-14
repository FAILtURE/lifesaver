package kr.co.lifesaver.map.conn;

import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.jdbc.Connection;


public class MysqlConnection {

	private static MysqlConnection mc = null;
	private static Connection conn;
	
	final String DRIVER = "com.mysql.jdbc.Driver";
	final String URL = "jdbc:mysql://localhost:3306/goott7?useSSL=false";
	final String USER = "scott";
	final String PASSWORD = "tiger";
	
	public MysqlConnection() {
		// TODO Auto-generated constructor stub
	}
	
	public static MysqlConnection getInstance() {
		if(mc==null) mc = new MysqlConnection();
		return mc;
	}
	
	public Connection getConnection() {
		if (conn== null) {
			try {
				Class.forName(DRIVER);
				conn = (Connection) DriverManager.getConnection(URL,USER,PASSWORD);
	

			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return  conn;

	}
	
	
}


