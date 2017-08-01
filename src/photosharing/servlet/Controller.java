package photosharing.servlet;
import service.PhotoService;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Photo;
import model.Tag;
import model.User;

/**
 * Servlet implementation class Controller
 */
@WebServlet(urlPatterns={"/Controller", "/register", "/login", "/logout", "/userprofile", "/sharephoto", "/tagphoto", "/viewphoto", "/uploadphoto",
						"/viewmoreunreg", "/viewmorereg", "/viewmoreshared", "/viewmuserpub", "/viewmuserpriv", "/viewmuserpub2", "/userprofile2"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhotoService ps; 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        ps = new PhotoService();
        // TODO Auto-generated constructor stub
    }
    
    public void setPhotoService(PhotoService ps) {
    	this.ps = ps;
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
		
		String urlpattern = request.getServletPath();
		
		switch(urlpattern){
			case "/register": registerUser(request, response);
							  break;
			case "/login":	  loginUser(request, response);
							  break;
			case "/logout":   logoutUser(request, response);
							  break;
			case "/userprofile":   goToProfile(request, response);
								   break;
			case "/userprofile2":   goToProfile2(request, response);
			   					   break;
			case "/uploadphoto": uploadPhoto(request, response);
								 break;
			case "/sharephoto": sharePhoto(request, response);
								break;
			case "/tagphoto": tagPhoto(request, response);
							  break;
			case "/viewphoto": viewPhoto(request, response);
							   break;
			case "/viewmoreunreg": viewAllUnreg(request, response);
			   					   break;
			case "/viewmorereg": viewAllReg(request, response);
			   					 break;
			case "/viewmoreshared": viewAllShared(request, response);
			   						break;
			case "/viewmuserpub": viewPublicPhotos(request, response);
			   					  break;
			case "/viewmuserpub2": viewPublicPhotos2(request, response);
				  				   break;
			case "/viewmuserpriv": viewPrivatePhotos(request, response);
								   break;
		}
		
	}
	
	public void welcomeUser(HttpServletRequest request, HttpServletResponse response) {
		
	}
	
	public void registerUser(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String passwordVerify = request.getParameter("password-verify");
		String description = request.getParameter("description");

		
		// check if it exists in the DB
		// for now, naive checking: if un = admin, and pw = 1234
		//if(username.equals("admin") && password.equals("1234")){
		
		if(!username.equals("") && !password.equals("") && password.equals(passwordVerify)) {
			request.setAttribute("un", username); // key value pair 
			
			HttpSession session = request.getSession();
			session.setAttribute("sessionun", username);
			session.setAttribute("sessionpw", password);
			session.setAttribute("sessionds", description);
			
			User u = new User(0, username, password, description);
			request.setAttribute("user", u);
			
			ps.addUser(u);
			
			System.out.println(u.toString());
			
			Cookie usernameCookie = new Cookie("username", username); 
			usernameCookie.setMaxAge(60*60*24*21); // in seconds 
			response.addCookie(usernameCookie);
			
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//} else {
			//	response.sendRedirect("index.html");
			//}
		} else {
			try {
				response.sendRedirect("index.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	public void loginUser(HttpServletRequest request, HttpServletResponse response) {
		boolean hasAccount = false; 
		String description ="";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		for(int i = 0; i < ps.getUserCnt(); i++) {
			if(username.equals(PhotoService.getUser(i).getUsername())
			   && password.equals(PhotoService.getUser(i).getPassword())) {
				hasAccount = true;
				description = PhotoService.getUser(i).getDescription();
				break;
			}
		}
			// check if they are valid
		if(hasAccount){
			//forward to a success page (Hello, username!)
			request.setAttribute("un",username);
				
			HttpSession session = request.getSession();
			session.setAttribute("sessionun", username);
			session.setAttribute("sessionpw", password);
			session.setAttribute("sessionds", description);
			
			User p=new User(0, username, password, description);
			request.setAttribute("user", p);
			
			System.out.println(p.toString());
			
			ArrayList<User> personList = new ArrayList<User>();
			personList.add(p);
			request.setAttribute("ulist", personList);
				
			Cookie usernameCookie = new Cookie("username", username);
			usernameCookie.setMaxAge(60*60*24*21);
			response.addCookie(usernameCookie);
		
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				response.sendRedirect("index.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//hasAccount = false;
	}
	
	public void logoutUser(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		for(Cookie c:cookies){
			// find username cookie 
			if(c.getName().equals("username")){
				// ...and kill it
				c.setMaxAge(0); // overwrite if same name 
				response.addCookie(c);
			} else if(c.getName().equals("password")) {
				c.setMaxAge(0); // overwrite if same name 
				response.addCookie(c);
			} else if(c.getName().equals("description"));
		}
		
		try {
			response.sendRedirect("index.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void goToProfile(HttpServletRequest request, HttpServletResponse response) {
		String user = request.getParameter("loggedin");
		User u = ps.getUser(user);
//		
		RequestDispatcher rd = request.getRequestDispatcher("user-profile.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void goToProfile2(HttpServletRequest request, HttpServletResponse response) {
		RequestDispatcher rd = request.getRequestDispatcher("otheruserprofile.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void uploadPhoto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String fileloc = request.getParameter("fileloc");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String tags = request.getParameter("tags");
		//String view = request.getParameter("view");
		
		if(fileloc.contains(".jpg") || fileloc.contains(".jpeg") || fileloc.contains(".png") || fileloc.contains(".tiff")) {
			String selectedView = "";
			if(request.getParameter("view")!=null)
			{
			   selectedView="" + request.getParameter("view");
			}
			
			if (selectedView.equalsIgnoreCase("public")){
				Photo p = new Photo(30, "/media/blah.jpg", "I am dead", "So much due, I am dying tbh",PhotoService.getUser(0), "public");
				
				/*
				List<String> taglist = Arrays.asList(tags.split("#"));
				Tag temp = null;
				
				for (int i=0; i<taglist.size(); i++){
					temp = new Tag(p, taglist.get(i));
					p.addTag(temp);
				
				}
				*/
				
				Tag temp = new Tag(p, "#stuff");
				p.addTag(temp);
				PhotoService.addPhoto(p);
				RequestDispatcher rd = request.getRequestDispatcher("user-profile.jsp");
				rd.forward(request, response);
				
				System.out.println("The owner is " + PhotoService.getPhoto(31).getUploader().getUsername());
			}
			else if(selectedView.equalsIgnoreCase("private")){
				Photo p = new Photo(31, "/media/blah.jpg", "I am dead", "So much due, I am dying tbh",PhotoService.getUser(0), "private");
				Tag temp = new Tag(p, "#stuff");
				p.addTag(temp);
				//RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				//rd.forward(request, response);
				
				PhotoService.addPhoto(p);
				
				RequestDispatcher rd = request.getRequestDispatcher("share.jsp");
				rd.forward(request, response);
				
				System.out.println("The owner is " + PhotoService.getPhoto(31).getUploader().getUsername());
			}
		} else {
			try {
				response.sendRedirect("upload.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		//((User)request.getAttribute("user")).addPhoto(p);
		
		
	}
	
	public void sharePhoto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		/*
		int temp = (Integer) request.getAttribute("photoId");
		
		String username = request.getParameter("shareWith");
		int ehe=0;
		for (int i=0; i<PhotoService.getUsers().size(); i++){
			User anuna = PhotoService.getUsers().get(i);
			if (anuna.equals(username))
				ehe = anuna.getId();
		}
		
		
		PhotoService.sharePhoto(ehe,(Integer) request.getAttribute("photoId"));
		PhotoService.sharePhoto(1, 31);
		*/
		
		//************************ SHARE PHOTO 31 TO sophiarivera
		
		RequestDispatcher rd = request.getRequestDispatcher("user-profile.jsp");
		rd.forward(request, response);
		
		
	}
	
	/*
	String tag = request.getParameter("tags");
	boolean hasEqui = false;
	
	for(int i=0; i<PhotoService.getTags().size(); i++){
		if(tag.equalsIgnoreCase(PhotoService.getTags().get(i).getTag()))
			hasEqui = true;
		if(hasEqui)
			break;
	}

	//************************ ADD TAG TO PHOTO 31, yung private photo
	if(!hasEqui)
		PhotoService.addUTag(PhotoService.getPhoto(31), tag);
	*/
	
	public void tagPhoto(HttpServletRequest request, HttpServletResponse response){
		
		RequestDispatcher rd = request.getRequestDispatcher("viewPhotoReg.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void viewPhoto(HttpServletRequest request, HttpServletResponse response){
		RequestDispatcher rd = request.getRequestDispatcher("viewPhotoReg.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void viewAllUnreg(HttpServletRequest request, HttpServletResponse response){
		RequestDispatcher rd = request.getRequestDispatcher("viewAllUnreg.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void viewAllReg(HttpServletRequest request, HttpServletResponse response){
		RequestDispatcher rd = request.getRequestDispatcher("viewAllReg.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void viewAllShared(HttpServletRequest request, HttpServletResponse response){
		RequestDispatcher rd = request.getRequestDispatcher("viewAllShared.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void viewPublicPhotos(HttpServletRequest request, HttpServletResponse response){
		RequestDispatcher rd = request.getRequestDispatcher("profileViewPub1.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void viewPublicPhotos2(HttpServletRequest request, HttpServletResponse response){
		RequestDispatcher rd = request.getRequestDispatcher("profileViewPub2.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void viewPrivatePhotos(HttpServletRequest request, HttpServletResponse response){
		RequestDispatcher rd = request.getRequestDispatcher("profileViewPriv1.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
