

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormSubmit
 */
public class FormSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormSubmit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String subject=request.getParameter("subject");
		String message=request.getParameter("message");
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			//DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback", "root", "");
			Statement st=conn.createStatement();
			st.executeUpdate("insert into entries values('"+name+"','"+email+"','"+subject+"','"+message+"');");
			System.out.println("Data inserted successfully!");
		}
		catch(Exception e)
		{
			System.out.println(e);
			e.printStackTrace();
		}
		System.out.println("The name is: "+name);
		System.out.println("The email is: "+email);
		System.out.println("The subject is: "+subject);
		System.out.println("The message is: "+message);
		
		request.getSession().setAttribute("name", name);
		request.getSession().setAttribute("email", email);
		request.getSession().setAttribute("subject", subject);
		request.getSession().setAttribute("message", message);
		
		response.sendRedirect("jsp/final.jsp");
		
		
	}

}
