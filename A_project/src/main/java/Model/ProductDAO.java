package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;

	// DB연결
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

	// 객체반환
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

	// 상품 조회
	public List<ProductDTO> selectAllProducts() {

		List<ProductDTO> list = new ArrayList<>();
		try {
			getConn();

			String sql = "select * from product order by pro_seq desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setPro_seq(rs.getInt("PRO_SEQ"));
				dto.setPro_name(rs.getString("PRO_NAME"));
				dto.setPro_price(rs.getInt("PRO_PRICE"));
				dto.setPro_desc(rs.getString("PRO_DESC"));
				dto.setPro_img(rs.getString("PRO_IMG"));
				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public ProductDTO selectOne(int pro_seq) {
		ProductDTO dto = new ProductDTO();
		try {
			getConn();

			String sql = "select * from product where pro_seq = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pro_seq);
			rs = psmt.executeQuery();

			while (rs.next()) {
				dto.setPro_seq(pro_seq);
				dto.setPro_name(rs.getString(2));
				dto.setPro_price(rs.getInt(3));
				dto.setPro_desc(rs.getString(4));
				dto.setPro_img(rs.getString(5));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	// 상품 등록
	public int insertProduct(ProductDTO dto) {

		try {
			getConn();
			String sql = "INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.NEXTVAL, ?, ?, ?, null)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPro_name());
			psmt.setInt(2, dto.getPro_price());
			psmt.setString(3, dto.getPro_desc());
//			psmt.setString(4, dto.getPro_img());
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	// 상품 수정
	public void UpdateProduct(ProductDTO dto) {
		try {
			getConn();

			String sql = "UPDATE PRODUCT SET PRO_NAME=?, PRO_PRICE=?, PRO_DESC=? WHERE PRO_SEQ = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPro_name());
			psmt.setInt(2, dto.getPro_price());
			psmt.setString(3, dto.getPro_desc());
//			psmt.setString(4, dto.getPro_img());
			psmt.setInt(4, dto.getPro_seq());
			psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	// 상품 삭제
	public void deleteProduct(int pro_seq) {
		try {
			getConn();
			
			String sql = "DELETE FROM PRODUCT WHERE PRO_SEQ=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pro_seq);
			psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

}
