

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atm.dao.AtmDao;
import com.atm.model.Branch;
import com.atm.model.Customer;

@WebServlet("/EditCustomerS")
public class EditCustomerS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditCustomerS() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
    	    String name = request.getParameter("name");
			String accno0 = request.getParameter("accno");
			
			String balance0 = request.getParameter("balance");
			String expdate0 = request.getParameter("expdate");
			
			
			if( balance0=="" && expdate0=="" )
			{
				
				RequestDispatcher disep = request.getRequestDispatcher("errorPage.jsp");
				disep.forward(request, response);
				
			}
			
			int accno = Integer.parseInt(accno0);
			
			
			AtmDao dao = new AtmDao();
			int cusChanged = dao.changeCustomer(name, accno, balance0, expdate0);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("UpdatedShowAllCustomerS");
			dis.forward(request, response);
			
			
		}  catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}
