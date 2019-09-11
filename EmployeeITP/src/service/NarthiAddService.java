package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.NRecords;
import util.DBconnection;


	
	public class NarthiAddService {

		public String AddDetails(NRecords nrecords)
		 {
		 String NRid = nrecords.getNRid();
		 String patid = nrecords.getPatid();
		 String history = nrecords.getHistory();
		 String temp = nrecords.getTemp();
		 String bp = nrecords.getBp();
		 String rr = nrecords.getRr();
		 String pulse = nrecords.getPulse();
		 String others = nrecords.getOthers();
		 String amount1 = nrecords.getAmount1();
		 String amount2 = nrecords.getAmount2();
		 String amount3 = nrecords.getAmount3();
		 String amount4 = nrecords.getAmount4();
		 String amount5 = nrecords.getAmount5();
		 
		 
		 
		
		 
		 Connection con = null;
		 PreparedStatement preparedStatement = null;
		 
		 try
		 {
		 con = DBconnection.createConnection();
		 String query = "insert into NRecords(NRid, temp, bp, rr, pulse, other , medicine1, medicine2, medicine3, medicine4, medicine5, history, patientID) values (null,?,?,?,?,?,?,?,?,?,?,?,?)"; 
		 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
		 
		 preparedStatement.setString(1, temp);
		 preparedStatement.setString(2, bp);
		 preparedStatement.setString(3, rr);
		 preparedStatement.setString(4, pulse);
		 preparedStatement.setString(5, others);
		 preparedStatement.setString(6, amount1);
		 preparedStatement.setString(7, amount2);
		 preparedStatement.setString(8, amount3);
		 preparedStatement.setString(9, amount4);
		 preparedStatement.setString(10, amount5);
		 preparedStatement.setString(11, history);
		 preparedStatement.setString(12, patid);
		
		 
		 
		 int i= preparedStatement.executeUpdate();
		 
		 if (i!=0)  //Just to ensure data has been inserted into the database
		 return "SUCCESS"; 
		 }
		 catch(SQLException e)
		 {
		 e.printStackTrace();
		 }
		 
		 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
		 }
		}

