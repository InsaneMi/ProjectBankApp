

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atm.dao.AtmDao;

@WebServlet("/DeleteCustomerS")
public class DeleteCustomerS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteCustomerS() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
    	    String name = request.getParameter("name");
			String accno0 = request.getParameter("accno");
			
			int accno = Integer.parseInt(accno0);
			
			
			AtmDao dao = new AtmDao();
			int cusDeleteded = dao.deleteCustomer(accno);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("UpdatedShowAllCustomerS");
			dis.forward(request, response);
			
			
		}  catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}
