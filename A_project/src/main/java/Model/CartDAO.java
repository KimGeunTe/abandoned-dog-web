package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CartDAO {
	
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String DB_User = "cgi_4_1220_1";
			String DB_Password = "smhrd1";
			
			conn = DriverManager.getConnection(url, DB_User, DB_Password);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	ArrayList<CartDTO> result = new ArrayList<>();
	public ArrayList<CartDTO> cart_info() {
		try {
			getConn();
		
			String sql = "select * from PRODUCT";
			
			psmt = conn.prepareCall(sql);
			
			 rs = psmt.executeQuery();
			 
			 while (rs.next()) {
				String name  = rs.getString(2);
				int price  = rs.getInt(3);
				
				CartDTO dto = new CartDTO(name, price);
				
				result.add(dto);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return result;
	}
	
	
	
	

}
