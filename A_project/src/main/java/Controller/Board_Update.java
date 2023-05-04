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

@WebServlet("/Board_Update")
public class Board_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int number = Integer.parseInt(request.getParameter("number"));
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO(number, title, writer, content);
		int cnt = dao.updateBoard(dto);
		if(cnt > 0) {
			System.out.println("업데이트 성공");
		}else{
			System.out.println("업데이트 실패");
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("noticeboard.jsp");
		rd.forward(request, response);
		
	}

}
