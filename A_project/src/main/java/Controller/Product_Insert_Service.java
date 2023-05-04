package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ProductDAO;
import Model.ProductDTO;

@WebServlet("/Product_Insert_Service")
public class Product_Insert_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		int pro_price = Integer.parseInt(request.getParameter("pro_price"));
		String pro_name = request.getParameter("pro_name");
		String pro_desc = request.getParameter("pro_desc");
		
		
		ProductDTO dto = new ProductDTO(pro_name, pro_price, pro_desc);
		
		ProductDAO dao = new ProductDAO();
		int cnt = dao.insertProduct(dto);
		
		String nextPage ="";
		
		if (cnt > 0) {
			nextPage = "ProductList.jsp";
			System.out.println("상품 등록 성공");
			
		}else {
			nextPage = "ProductList.jsp";
			System.out.println("상품 등록 실패");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}

}
