

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atm.dao.AtmDao;
import com.atm.model.ShowAll;

@WebServlet("/UpdatedShowAllCustomerS")
public class UpdatedShowAllCustomerS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdatedShowAllCustomerS() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			AtmDao dao = new AtmDao();
			
			List<ShowAll> custList = dao.getAllCustomer();
			
			request.setAttribute("custList", custList);
			
			RequestDispatcher dis = request.getRequestDispatcher("updatedShowAllCustomer.jsp");
			dis.forward(request, response);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}
