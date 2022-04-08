

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

import com.atm.dao.AtmDao;
import com.atm.dbconnection.Dbconnection;
import com.atm.model.Bank;
import com.atm.model.Branch;
import com.atm.model.Customer;

@WebServlet("/AddCustomerS")
public class AddCustomerS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddCustomerS() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
       try {
			
			String brcode0 = request.getParameter("brcode");
			
			String cid0 = request.getParameter("cid");
			String cname = request.getParameter("cname");
			String caddress = request.getParameter("caddress");
			String cphone0 = request.getParameter("cphone");
			
			
			if(brcode0=="" || cid0=="" || cname=="" || cphone0=="" || caddress=="")
			{
				
				RequestDispatcher disep = request.getRequestDispatcher("errorPage.jsp");
				disep.forward(request, response);
				
				
			}
			
			int brcode = Integer.parseInt(brcode0);
			int cid = Integer.parseInt(cid0);
			int cphone = Integer.parseInt(cphone0);
			
			Customer cust = new Customer();
			cust.setCusid(cid);
			cust.setCusName(cname);
			cust.setCusPhone(cphone);
			cust.setCusAddress(caddress);
			
			//Branch obj required to be passed to customer obj
			Branch br = new Branch();
			br.setBranchCode(brcode);
			cust.setBrname(br);
			
			//Call Dao method to insert customer
			AtmDao dao = new AtmDao();
			int createCustomer = dao.createCustomer(cust);
			
			
			if(createCustomer>0) {
				
				request.setAttribute("brcode", brcode0);
			
				request.setAttribute("cid", cid0);
				request.setAttribute("cname", cname);
				request.setAttribute("caddress", caddress);
				request.setAttribute("cphone", cphone0);
			
				RequestDispatcher dis = request.getRequestDispatcher("customerCreated.jsp");
				dis.forward(request, response);
			
			}else {
				 RequestDispatcher diswb = request.getRequestDispatcher("notFound.jsp");
				 diswb.forward(request, response);
				
			}
			
			
		}  catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

}
