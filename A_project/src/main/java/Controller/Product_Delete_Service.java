package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ProductDAO;

@WebServlet("/Product_Delete_Service")
public class Product_Delete_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	int pro_seq = Integer.parseInt(request.getParameter("pro_seq"));
	
	ProductDAO dao = new ProductDAO();
	
	dao.deleteProduct(pro_seq);
	
	response.sendRedirect("ProductList.jsp");
	}

}
