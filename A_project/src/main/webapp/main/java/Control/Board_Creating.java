package Control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.BoardDTO;

@WebServlet("/Board_Creating")
public class Board_Creating extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 1. 인코딩 작업
		request.setCharacterEncoding("UTF-8");

		// 2. form태그로 부터 넘어오는 데이터 꺼내오기
		String title = request.getParameter("Title");
		String writer = request.getParameter("Writer");
		String content = request.getParameter("content");
		String time = request.getParameter("Time");

		// 3. DB에 연동될 수 있도록 데이터 넘겨주기 -> DAO 이동!
		// (DTO타입으로 데이터를 묶어서 전달)

		BoardDTO dto = new BoardDTO(title, writer, content, time);

		// DAO 객채 생성
		BoardDAO dao = new BoardDAO();
		// DAO의 join 메서드 사용
		int cnt = dao.insertBoard(dto);

		// 4. 성공실패 구분
		String nextPage = "";
		if (cnt > 0) {
			System.out.println("게시글 성공");
		} else {
			System.out.println("게시글 실패");
		}
		nextPage = "BoardMain.jsp";
		// 다음 페이지로 이동
//		response.sendRedirect(nextPage);

		// 페이지 이동시 회원가입한 회원의 이메일 값을 유지하기 위하여 forward방식으로 페이지 이동하기
		// +)scope : 데이터들을 저장하거나 유지하기 위한 영역을 정리한 기능
		// -> 요청에 대한 데이터를 유지할 수 있는 requestScope활용!

		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);

	}




		
		
		
		
		
		
		
	
	
	
	
	}

