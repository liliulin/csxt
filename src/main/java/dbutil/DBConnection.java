package dbutil;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

/**
 * 
 * 数据库工具类
 * @author gangwang
 * @date 2018-11-22
 */
public class DBConnection {
	String driver = "com.mysql.jdbc.Driver";
//	String test_url = "jdbc:mysql://localhost:3306/report";
	String test_url = "jdbc:mysql://localhost:3306/report?useunicode=true&characterEncoding=utf8";
//	String test_url = "jdbc:mysql://139.129.108.180:3306/report?useunicode=true&characterEncoding=utf8";
	String test_user = "root";
//	String test_password = "mjitech";
	String test_password = "Mjitech20!6";  //发布环境
	public Connection conn;

	/**
	 * 数据库连接方法
	 * @author gangwang
	 * @date 2018-11-22
	 */
	public Connection getConnection() {
		try {
			Class.forName(driver); // 加载驱动程序
		    conn = (Connection) DriverManager.getConnection(test_url, test_user, test_password);
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

	/**
	 * 关闭数据库连接池
	 * 
	 */
	public void close() {
		try {
			this.conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		DBConnection con = new DBConnection();
		System.out.println("连接数据："+con);
	}
}
