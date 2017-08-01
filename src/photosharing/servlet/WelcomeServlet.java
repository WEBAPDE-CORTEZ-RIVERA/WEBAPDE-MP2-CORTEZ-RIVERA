package photosharing.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WelcomeServlet
 */
@WebServlet(urlPatterns={"/WelcomeServlet", "/welcome"})
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WelcomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie[] cookies = request.getCookies(); 
		boolean cookieFound = false;
		
		if(cookies != null){
			System.out.println("COOKIE FOUND");
			for(Cookie c : cookies){
				if(c.getName().equals("username")){
					request.getSession().setAttribute("sessionun", c.getValue());
					
					// renew life of cookie 
					c.setMaxAge(60*60*24*21);
						
					try {
						request.getRequestDispatcher("home.jsp").forward(request,  response);
					} catch (ServletException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					cookieFound = true;
				} 
			}
		} 
		if(!cookieFound){
			System.out.println("COOKIE NOT FOUND");
			//response.sendRedirect("index.jsp");
			// get the input of the user
			
			try {
				response.sendRedirect("index.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
