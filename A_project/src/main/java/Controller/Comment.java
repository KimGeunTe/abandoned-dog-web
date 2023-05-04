package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Model.CommentDAO;
import Model.CommentDTO;

@WebServlet("/Comment")
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		ArrayList<CommentDTO> list = new ArrayList<>();
		
		String content = request.getParameter("comment");
	
		String writer = request.getParameter("user");

		CommentDAO dao = new CommentDAO();
		CommentDTO dto = new CommentDTO(content, writer);
		
		

		int result = dao.commentInsert(dto);
		
		System.out.println(result);
		list.add(dto);

		PrintWriter out = response.getWriter();

		Gson gson = new Gson();
		
		String json = gson.toJson(list);
		
		out.print(json);

	}

}
