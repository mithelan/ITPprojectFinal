package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.News;
import util.DBconnection;



public class DeleteServiceMad {

		
			public void removeEmployee(String nid)
			{Connection con = null;
			 PreparedStatement preparedStatement = null;
			 String driverName = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3307/ITP";
				String username = "root";
				String password = "root";
				
				 
					 con = DBconnection.createConnection();
					 try {
						Class.forName(driverName);
					} catch (ClassNotFoundException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
						try {
							con = (Connection) DriverManager.getConnection(url,username,password);
						} catch (SQLException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
					 String query = "DELETE FROM new WHERE nid="+nid; 
					 try {
						preparedStatement = con.prepareStatement(query);
						preparedStatement.execute(query);
					} catch (SQLException e) {
						
						e.printStackTrace();
					} 
				
				
				
				
				
				
			}

		



}
