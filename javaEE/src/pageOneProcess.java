

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class pageOneProcess
 */
public class pageOneProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pageOneProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String add=request.getParameter("add");
		
		System.out.println("The name is: "+name);
		System.out.println("The address is: "+add);
		System.out.println("The phone is: "+phone);
		
		request.getSession().setAttribute("name", name);
		request.getSession().setAttribute("add", add);
		request.getSession().setAttribute("phone", phone);
		
		response.sendRedirect("jsp/printout.jsp");
		
	}

}
