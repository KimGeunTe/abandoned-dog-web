package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.AdoptingDAO;
import Model.AdoptingDTO;

@WebServlet("/Adopting_Service")
public class Adopting_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String merry = request.getParameter("merry");
		String job = request.getParameter("job");
		String serialnum = request.getParameter("serialnum");
		
		System.out.println(name);
		System.out.println(gender);
		System.out.println(age);
		System.out.println(tel);
		System.out.println(email);
		System.out.println(city);
		System.out.println(merry);
		System.out.println(job);
		System.out.println(serialnum);
		

		
		AdoptingDTO dto = new AdoptingDTO(name, gender, age, tel, email, city, merry, job,serialnum);
		AdoptingDAO dao = new AdoptingDAO();
		int cnt = dao.InsertData(dto);

		String nextPage = "";

		if (cnt > 0) {
			nextPage = "AdoptingFinish.jsp";
			System.out.println("입양신청 성공");

		} else {
			nextPage = "adopting.jsp";
			System.out.println("입양신청 실패");
		}

		response.sendRedirect(nextPage);
	}
	
	
	}


