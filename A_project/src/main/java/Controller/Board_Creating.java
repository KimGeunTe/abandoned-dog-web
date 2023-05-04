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
import Model.MemberDTO;

@WebServlet("/Board_Creating")
public class Board_Creating extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");

		BoardDTO dto = new BoardDTO(title, writer, content);

		BoardDAO dao = new BoardDAO();
		int cnt = dao.insertBoard(dto);

		String nextPage = "";
		
		if (cnt > 0) {
			System.out.println("게시글 성공");
		} else {
			System.out.println("게시글 실패");
		}
		nextPage = "noticeboard.jsp";

		response.sendRedirect(nextPage);

	}




		
		
		
		
		
		
		
	
	
	
	
	}

