

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

@WebServlet("/AddCardS")
public class AddCardS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddCardS() {
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
			
			
			String cid0 = request.getParameter("cid");
			String accno0 = request.getParameter("accno");
			
			String cardno0 = request.getParameter("cardno");
			String cardtype = request.getParameter("cardtype");
			String cardcvv0 = request.getParameter("cardcvv");
			String cardexp0 = request.getParameter("cardexp");
			
			
			if(cid0=="" || accno0=="" || cardno0=="" || cardtype=="" || cardcvv0=="" || cardexp0=="")
			{
				
				RequestDispatcher disep = request.getRequestDispatcher("errorPage.jsp");
				disep.forward(request, response);
				
				con.close();
				
			}
			
			
			int cid = Integer.parseInt(cid0);
			int accno = Integer.parseInt(accno0);
			int cardno = Integer.parseInt(cardno0);
			int cardcvv = Integer.parseInt(cardcvv0);
			int cardexp = Integer.parseInt(cardexp0);
			
			
			query = "Select accno From account Where accno='"+accno+"' AND cusid='"+cid+"';";
			Statement st1 = con.createStatement();
			ResultSet rs1 = st1.executeQuery(query);
			 
			if(rs1.next())
			{
				
				query = "Insert Into card ( cardno, cardtype, expdate, cardcvv, accid )"
							+"Values ('"+cardno+"', '"+cardtype+"', '"+cardexp+"', '"+cardcvv+"', '"+accno+"' );";
				Statement st = con.createStatement();
				st.executeUpdate(query);
			
			
				request.setAttribute("cid", cid0);
				request.setAttribute("accno", accno0);
			
				request.setAttribute("cardno", cardno0);
				request.setAttribute("cardtype", cardtype);
				request.setAttribute("cardcvv", cardcvv0);
				request.setAttribute("cardexp", cardexp0);
			
				RequestDispatcher dis = request.getRequestDispatcher("cardAdded.jsp");
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
