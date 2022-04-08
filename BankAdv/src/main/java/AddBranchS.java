

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


@WebServlet("/AddBranchS")
public class AddBranchS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddBranchS() {
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
			
			String bcode0 = request.getParameter("bcode");
			String brname = request.getParameter("brname");
			String brcode0 = request.getParameter("brcode");
			String braddress = request.getParameter("braddress");
			
			
			if(bcode0=="" || brname=="" || brcode0=="" || braddress=="")
			{
				
				RequestDispatcher disep = request.getRequestDispatcher("errorPage.jsp");
				disep.forward(request, response);
				
				con.close();
				
			}
			
			int bcode = Integer.parseInt(bcode0);
			int brcode = Integer.parseInt(brcode0);

			
			query = "Select bid From bank Where bid='"+bcode+"';";
			Statement st1 = con.createStatement();
			ResultSet rs1 = st1.executeQuery(query);
			 
			if(rs1.next())
			{
			
			
			query = "Insert Into branch ( branchcode, branchname, branchaddress, bankid)"
         		   +"Values ('"+brcode+"', '"+brname+"', '"+braddress+"','"+bcode+"');";
			Statement st = con.createStatement();
			st.executeUpdate(query);
			
			
			request.setAttribute("bcode", bcode0);
			request.setAttribute("brname", brname);
			request.setAttribute("brcode", brcode0);
			request.setAttribute("braddress", braddress);
			
			RequestDispatcher dis = request.getRequestDispatcher("branchCreated.jsp");
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
