

import java.io.IOException;
import java.io.PrintWriter;
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
import javax.servlet.http.HttpSession;


@WebServlet("/AddBankS")
public class AddBankS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddBankS() {
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
			
			String bname = request.getParameter("bname");
			String bcode0 = request.getParameter("bcode");
			String baddress = request.getParameter("baddress");
			
			
			if(bname=="" || bcode0=="" || baddress=="")
			{
				
				RequestDispatcher disep = request.getRequestDispatcher("errorPage.jsp");
				disep.forward(request, response);
				
				con.close();
				
			}
			
			int bcode = Integer.parseInt(bcode0);
			
			
			query = "Insert Into bank ( bid, bankname, bankaddress)"
         		   +"Values ('"+bcode+"', '"+bname+"', '"+baddress+"');";
			Statement st = con.createStatement();
			st.executeUpdate(query);
			
			
			request.setAttribute("bname", bname);
			request.setAttribute("bcode", bcode0);
			request.setAttribute("baddress", baddress);
			
			RequestDispatcher dis = request.getRequestDispatcher("bankCreated.jsp");
			dis.forward(request, response);
			
			con.close();
			
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

}
