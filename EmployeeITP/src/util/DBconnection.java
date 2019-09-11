package util;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DBconnection {
		

		

		public static Connection createConnection()
		 {
		 Connection con = null;
		 String url = "jdbc:mysql://localhost:3307/ITP"; //MySQL URL followed by the database name
		 String username = "root"; //MySQL username
		 String password = "root"; //MySQL password
		 
		 try 
		 {
		 try 
		 {
		 Class.forName("com.mysql.jdbc.Driver"); //loading MySQL drivers. This differs for database servers 
		 } 
		 catch (ClassNotFoundException e)
		 {
		 e.printStackTrace();
		 }
		 
		 con = (Connection) DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
		 System.out.println("Printing connection object "+con);
		 } 
		 catch (Exception e) 
		 {
		 e.printStackTrace();
		 }
		 
		 return con; 
		 
		}

}
