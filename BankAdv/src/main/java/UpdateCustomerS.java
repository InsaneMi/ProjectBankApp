

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerS")
public class UpdateCustomerS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateCustomerS() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
       try {
			
			String url = "jdbc:postgresql://localhost:5432/atmdemo";
			String uname = "postgres";
			String pass = "Postgres";
			String query = "";
			
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			
			
			String brcode0 = request.getParameter("brcode");
			String cid0 = request.getParameter("cid");
			
			String option0 = request.getParameter("option");
			String upvalue = request.getParameter("upvalue");
			
			
			if(brcode0=="" || cid0=="" || option0=="" || upvalue=="")
			{
				
				RequestDispatcher disep = request.getRequestDispatcher("errorPage.jsp");
				disep.forward(request, response);
				
				con.close();
				
			}
			
			
			int brcode = Integer.parseInt(brcode0);
			int cid = Integer.parseInt(cid0);
			int option = Integer.parseInt(option0);
			
			String oldvalue = "";
			
			
			query = "Select cusid From customer Where cusid='"+cid+"' AND branchid='"+brcode+"';";
			Statement st11 = con.createStatement();
			ResultSet rs11 = st11.executeQuery(query);
			 
			if(rs11.next())
			{
			
				switch(option)
				{
			
			     	case 1:
			    	 
			    	 	query = "Select cusname From customer Where cusid='"+cid+"';";
					 	Statement st1 = con.createStatement();
					 	ResultSet rs1 = st1.executeQuery(query);

					 	rs1.next();
					 	oldvalue = rs1.getString("cusname");
					 
                     	query = "Update customer Set cusname='"+upvalue+"' Where cusid='"+cid+"';";
                     	Statement st2 = con.createStatement();
                     	st2.executeUpdate(query);
                     
                     	
                     	request.setAttribute("cid", cid0);
                     	request.setAttribute("oldvalue", oldvalue);
         			 	request.setAttribute("upvalue", upvalue);
         			
         			
         			 	RequestDispatcher disn = request.getRequestDispatcher("customerUpdated.jsp");
         			 	disn.forward(request, response);
         			
         			 	con.close();
			    	 
			    	break;
			    
			     	case 2:
			    	 
			    	 	query = "Select cusphone From customer Where cusid='"+cid+"';";
					 	Statement st3 = con.createStatement();
					 	ResultSet rs3 = st3.executeQuery(query);

					 	rs3.next();
					 	oldvalue = rs3.getString("cusphone");
					 
					 	int upvaluep = Integer.parseInt(upvalue);
					 
                     	query = "Update customer Set cusphone='"+upvaluep+"' Where cusid='"+cid+"';";
                     	Statement st4 = con.createStatement();
                     	st4.executeUpdate(query);
                     
                     	
                     	request.setAttribute("cid", cid0);
                     	request.setAttribute("oldvalue", oldvalue);
         			 	request.setAttribute("upvalue", upvalue);
         			
         			
         			 	RequestDispatcher disp = request.getRequestDispatcher("customerUpdated.jsp");
         			 	disp.forward(request, response);
         			
         			 	con.close();
			    	 
			    	break;
			    	 
			     	case 3:
			    	 
			    	 	query = "Select cusaddress From customer Where cusid='"+cid+"';";
					 	Statement st5 = con.createStatement();
					 	ResultSet rs5 = st5.executeQuery(query);

					 	rs5.next();
					 	oldvalue = rs5.getString("cusaddress");
					 
                     	query = "Update customer Set cusaddress='"+upvalue+"' Where cusid='"+cid+"';";
                     	Statement st6 = con.createStatement();
                     	st6.executeUpdate(query);
                     
                     	
                     	request.setAttribute("cid", cid0);
                     	request.setAttribute("oldvalue", oldvalue);
         			 	request.setAttribute("upvalue", upvalue);
         			
         			
         			 	RequestDispatcher disa = request.getRequestDispatcher("customerUpdated.jsp");
         			 	disa.forward(request, response);
         			
         			 	con.close();
					 
			    	break;
			    	 
			     	case 4:
			     		
			     		int upvalueb = Integer.parseInt(upvalue);
			     		
			     		query = "Select branchcode From branch Where branchcode='"+upvalueb+"';";
						Statement st12 = con.createStatement();
						ResultSet rs12 = st12.executeQuery(query);
						 
						if(rs12.next())
						{
			    	 
			    	 		query = "Select branchid From customer Where cusid='"+cid+"';";
					 		Statement st7 = con.createStatement();
					 		ResultSet rs7 = st7.executeQuery(query);

					 		rs7.next();
					 		oldvalue = rs7.getString("branchid");
					 
                     		query = "Update customer Set branchid='"+upvalueb+"' Where cusid='"+cid+"';";
                     		Statement st8 = con.createStatement();
                     		st8.executeUpdate(query);
                     		
                     		
                     		request.setAttribute("cid", cid0);
                     		request.setAttribute("oldvalue", oldvalue);
         			 		request.setAttribute("upvalue", upvalue);
         			
         			
         			 		RequestDispatcher disb = request.getRequestDispatcher("customerUpdated.jsp");
         			 		disb.forward(request, response);
         			
         			 		con.close();
         			 	
						}
						
						else
						 {
			        		 
			    			 RequestDispatcher diswb = request.getRequestDispatcher("notFound.jsp");
			    			 diswb.forward(request, response);
			    			
			    			 con.close();
							 
						 }
			    	 
			    	break;
			    	 
			     	default :
			    	
				}
			
			}
			
			else
			 {
        		 
    			 RequestDispatcher disw = request.getRequestDispatcher("notFound.jsp");
    			 disw.forward(request, response);
    			
    			 con.close();
				 
			 }
			
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

}
