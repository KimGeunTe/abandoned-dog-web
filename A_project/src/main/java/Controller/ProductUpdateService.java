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

@WebServlet("/ProductUpdateService")
public class ProductUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int pro_seq = Integer.parseInt(request.getParameter("pro_seq"));
		String pro_name = request.getParameter("name");
		int pro_price = Integer.parseInt(request.getParameter("price"));
		String pro_desc = request.getParameter("desc");
		ProductDAO dao = new ProductDAO();
		ProductDTO dto = new ProductDTO(pro_seq, pro_name, pro_price, pro_desc);
		dao.UpdateProduct(dto);
		
		RequestDispatcher rd = request.getRequestDispatcher("ProductList.jsp");
		rd.forward(request, response);
	}
}