package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.BoardDTO;

@WebServlet("/Board_Removal")
public class Board_Removal extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.removalBoard(number);
		
		if(cnt > 0) {
			System.out.println("게시글삭제 성공");
		}else {
			System.out.println("게시글삭제실패");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("noticeboard.jsp");
		rd.forward(request, response);
		
		
	}
	
	
}
