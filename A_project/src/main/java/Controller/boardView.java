package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BoardDAO;
import Model.BoardDTO;
import Model.MemberDTO;


@WebServlet("/boardView")
public class boardView extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int number = Integer.parseInt(request.getParameter("number")); 
		HttpSession session = request.getSession();
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO();

		
		session.setAttribute("boardinfo", dto);
		
		String page="";
		if(dto != null){
			System.out.println("성공");
			page="boardView.jsp";
		}else {
			System.out.println("실패");
			page="noticeboard.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
