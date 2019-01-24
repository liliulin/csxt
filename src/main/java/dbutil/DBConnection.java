package dbutil;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;



public class DBConnection {
	String driver = "com.mysql.jdbc.Driver";// 加载数据库驱动
//	String test_url = "jdbc:mysql://localhost:3306/report";
	String test_url = "jdbc:mysql://localhost:3306/report?useunicode=true&characterEncoding=utf8";// 获取mysql连接地址
//	String test_url = "jdbc:mysql://139.129.108.180:3306/report?useunicode=true&characterEncoding=utf8";
	String test_user = "root";//用户名
//	String test_password = "mjitech";
	String test_password = "a2121a";  //密码
	public Connection conn;


	public Connection getConnection() {
		try {
			Class.forName(driver); 
		    conn = (Connection) DriverManager.getConnection(test_url, test_user, test_password); //getConnection()方法，连接MySQL数据库！
		   if (!conn.isClosed()) {
					System.out.println("Testenv report db  Succeeded connecting to the Database!");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return conn ;
	}

	
	
	public void close() {
		try {
			this.conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		DBConnection con = new DBConnection();
		System.out.println("Connection Successful"+con);
	}
}
