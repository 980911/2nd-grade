package ch10;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class simpleController
 */
@WebServlet("/simpleController")
public class simpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public simpleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String year = request.getParameter("year");
		String result = null;
		if(year.equals("4")){
			result="대학생입니다 !!!";
		}else if(year.equals("3")){
			result="중학생 또는 고등학생입니다!!!";
		}else if(year.equals("6")){
			result="초등학생입니다!!!";
		}else{
			result="알 수가 없습니다???";
		}
		
		request.setAttribute("result", result);
		RequestDispatcher dispatcher =
		request.getRequestDispatcher("ch10/ex10-06.jsp");
		dispatcher.forward(request, response);
	}

}
