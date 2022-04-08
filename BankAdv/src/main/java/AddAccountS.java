

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

@WebServlet("/AddAccountS")
public class AddAccountS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddAccountS() {
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
			
			String acctype = request.getParameter("acctype");
			String accno0 = request.getParameter("accno");
			String balance0 = request.getParameter("balance");
			
			
			if(brcode0=="" || cid0=="" || acctype=="" || accno0=="" || balance0=="")
			{
				
				RequestDispatcher disep = request.getRequestDispatcher("errorPage.jsp");
				disep.forward(request, response);
				
				con.close();
				
			}
			
			
			int brcode = Integer.parseInt(brcode0);
			int cid = Integer.parseInt(cid0);
			int accno = Integer.parseInt(accno0);
			int balance = Integer.parseInt(balance0);
			
			
			query = "Select cusid From customer Where cusid='"+cid+"' AND branchid='"+brcode+"' ;";
			Statement st1 = con.createStatement();
			ResultSet rs1 = st1.executeQuery(query);
			 
			if(rs1.next())
			{
			
			
				query = "Insert Into account ( accno, acctype, balance, cusid )"
							+"Values ('"+accno+"', '"+acctype+"', '"+balance+"', '"+cid+"' );";
				Statement st = con.createStatement();
				st.executeUpdate(query);
					
				
				request.setAttribute("brcode", brcode0);
				request.setAttribute("cid", cid0);
				
				request.setAttribute("acctype", acctype);
				request.setAttribute("accno", accno0);
				request.setAttribute("balance", balance0);
			
				RequestDispatcher dis = request.getRequestDispatcher("accountCreated.jsp");
				dis.forward(request, response);
			
				con.close();
			
			}
			
			else
			 {
      		 
				 RequestDispatcher diswb = request.getRequestDispatcher("notFound.jsp");
				 diswb.forward(request, response);
  			
				 con.close();
				 
			 }
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

}
