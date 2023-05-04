package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CommentDAO {

	
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
	
	public int commentInsert(CommentDTO dto) {
		
		try {
			getConn();
			String sql = "INSERT INTO TB_COMMENT VALUES(TB_COMMENT_SEQ.nextval,?,SYSDATE,?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getContent());
			psmt.setString(2, dto.getWriter());
			
			cnt = psmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt; 
	}
	
	
	
	
}
