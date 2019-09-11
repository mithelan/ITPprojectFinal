 package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Employee;
import service.AddService;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		 String firstname = request.getParameter("firstname");
		 String address = request.getParameter("address");
		 String profession = request.getParameter("profession");
		 String email = request.getParameter("email");
		 String salary = request.getParameter("salary");
		 String doj = request.getParameter("doj");
		
		 String contactno = request.getParameter("contactno");
		 String nic = request.getParameter("nic");
		 String gender  = request.getParameter("gender");
		Employee employee = new Employee();
		 //Using Java Beans - An easiest way to play with group of related data
		 employee.setfirstname(firstname);
		 employee.setaddress(address);
		 employee.setprofession(profession);
		 employee.setemail(email);
		 employee.setSalary(salary);
		 employee.setnic(nic);
		 employee.setdoj(doj);
		 employee.setcontactno(contactno);
		 employee.setgender(gender);
		 
		 AddService addService = new AddService();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedE = addService.AddEmployee(employee);
		 
		 if(AddedE.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/empl.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedE);
		 request.getRequestDispatcher("").forward(request, response);
		 }
		 }
	}


