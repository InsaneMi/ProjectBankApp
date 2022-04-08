package com.atm.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.atm.dbconnection.Dbconnection;
import com.atm.model.Customer;
import com.atm.model.DropBank;
import com.atm.model.ShowAll;

public class AtmDao {
	public int createCustomer(Customer customer) throws SQLException {
		
		Dbconnection db = new Dbconnection();
	    Connection con = db.getConnection();
		int count = 0;
	
		String query = "Select branchcode From branch Where branchcode='"+customer.getBrname().getBranchCode()+"';";
		Statement st1 = con.createStatement();
		ResultSet rs1 = st1.executeQuery(query);
		 
		if(rs1.next())
		{
			query = "Insert Into customer ( cusid, cusname, cusaddress, cusphone, branchid )"
     		   +"Values ('"+customer.getCusid()+"', '"+customer.getCusName()+"', '"+customer.getCusAddress()+"', '"+customer.getCusPhone()+"', '"+customer.getBrname().getBranchCode()+"' );";
			Statement st = con.createStatement();
			count = st.executeUpdate(query);
			
			con.close();
			return count;
		}else {
			con.close();
			return count;
		}
		
	}
	
	
	public List<ShowAll> getAllCustomer() throws SQLException {
		
		List<ShowAll> custList = new ArrayList<>();
		
		//DB Connection
		Dbconnection db = new Dbconnection();
	    Connection con = db.getConnection();
	    
	    String query = "";
	    
	    String name;
		int accNo;
		double balance;
		double cardNo;
		int expDate;
		
		int c1, c2;
	    
		//Select
	    query = "Select * From customer Order By cusname ASC ;";
		Statement st1 = con.createStatement();
		ResultSet rs1 = st1.executeQuery(query);
		
		while(rs1.next())
		{
			c1=1;
			
			int cusid = rs1.getInt("cusid");
			
			query = "Select * From account Where cusid='"+cusid+"' ;";
			Statement st2 = con.createStatement();
			ResultSet rs2 = st2.executeQuery(query);
			
			while(rs2.next())
			{
				c1=0;
				c2=1;
				
				int accno = rs2.getInt("accno");
				
				query = "Select * From card Where accid='"+accno+"' ;";
				Statement st3 = con.createStatement();
				ResultSet rs3 = st3.executeQuery(query);
				
				while(rs3.next())
				{
					c2=0;
					name = rs1.getString("cusname");
					accNo = rs2.getInt("accno");
					balance = rs2.getInt("balance");
					cardNo = rs3.getInt("cardno");
					expDate = rs3.getInt("expdate");
					
					ShowAll show = new ShowAll(name, accNo, balance,cardNo, expDate);
					
					custList.add(show);
				}
				if(c2==1)
				{
					name = rs1.getString("cusname");
					accNo = rs2.getInt("accno");
					balance = rs2.getInt("balance");
					
					ShowAll show = new ShowAll(name, accNo, balance );
					
					custList.add(show);
				}
				
			}
			if(c1==1)
			{
				name = rs1.getString("cusname");
				ShowAll show = new ShowAll(name);
				
				custList.add(show);
			}
			
		}

		//return
		con.close();
		return custList;
	}
	
	public int changeCustomer(String name, int accno, String balance0, String expdate0) throws SQLException {
		
		Dbconnection db = new Dbconnection();
	    Connection con = db.getConnection();
	    
	    String query = "";
	    
	    if(expdate0=="")
	    {
	    	int balance1 = Integer.parseInt(balance0);
	    	
	    	query = "Select balance From account Where accno='"+accno+"' ;";
			Statement st0 = con.createStatement();
			ResultSet rs0 = st0.executeQuery(query);
			rs0.next();
			int balance = rs0.getInt("balance");
			
			balance = balance + balance1;
	    	
	    	query = "Update account Set balance='"+balance+"' Where accno='"+accno+"' ;";
			Statement st1 = con.createStatement();
			st1.executeUpdate(query);
	    }
	    else if(balance0=="")
	    {
	    	int expdate = Integer.parseInt(expdate0);
	    	
	    	query = "Update card Set expdate='"+expdate+"' Where accid='"+accno+"' ;";
			Statement st2 = con.createStatement();
			st2.executeUpdate(query);
	    }
	    else
	    {
	    	int balance1 = Integer.parseInt(balance0);
	    	int expdate = Integer.parseInt(expdate0);
	    	
	    	query = "Select balance From account Where accno='"+accno+"' ;";
			Statement st0 = con.createStatement();
			ResultSet rs0 = st0.executeQuery(query);
			rs0.next();
			int balance = rs0.getInt("balance");
			
			balance = balance + balance1;
	    	
	    	query = "Update account Set balance='"+balance+"' Where accno='"+accno+"' ;";
			Statement st3 = con.createStatement();
			st3.executeUpdate(query);
			
			query = "Update card Set expdate='"+expdate+"' Where accid='"+accno+"' ;";
			Statement st4 = con.createStatement();
			st4.executeUpdate(query);
	    }
	    
	    con.close();
		return 0;
	}
	
	public int deleteCustomer(int accno) throws SQLException {
		
		Dbconnection db = new Dbconnection();
	    Connection con = db.getConnection();
	    
	    String query = "";
	    
	    query = "Select cardno From card Where accid='"+accno+"' ;";
		Statement st1 = con.createStatement();
		ResultSet rs1 = st1.executeQuery(query);
		
		if(rs1.next())
		{
	    
			query = "Delete From card Where accid='"+accno+"' ;";
			Statement st2 = con.createStatement();
			st2.executeUpdate(query);
		}
		
		query = "Select cusid From account Where accno='"+accno+"' ;";
		Statement st3 = con.createStatement();
		ResultSet rs3 = st3.executeQuery(query);
		rs3.next();
		int cusid = rs3.getInt("cusid");
		
		query = "Delete From account Where accno='"+accno+"' ;";
		Statement st4 = con.createStatement();
		st4.executeUpdate(query);
		
		int check = 1;
		
		query = "Select accno From account Where cusid='"+cusid+"' ;";
		Statement st5 = con.createStatement();
		ResultSet rs5 = st5.executeQuery(query);
		
		while(rs5.next())
		{
			check=0;
			break;
		}
	    
		if(check==1)
		{
			query = "Delete From customer Where cusid='"+cusid+"' ;";
			Statement st6 = con.createStatement();
			st6.executeUpdate(query);
		}
		
		con.close();
		return 0;
	}
	
	public List<DropBank> dropBank() throws SQLException {
		
		List<DropBank> bankList = new ArrayList<>();
		
		Dbconnection db = new Dbconnection();
	    Connection con = db.getConnection();
		
	    String query = "";
	    int bankid;
	    String bankname;
	    
	    query = "Select * From bank Order By bankname ASC ;";
		Statement st1 = con.createStatement();
		ResultSet rs1 = st1.executeQuery(query);
		
		while(rs1.next())
		{
			bankname = rs1.getString("bankname");
			bankid = rs1.getInt("bid");
			
			DropBank show = new DropBank(bankid, bankname);
			
			bankList.add(show);
		}
	    
	    con.close();
		return bankList;
	}

}
