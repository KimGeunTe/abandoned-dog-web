package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {

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
	
	// 객체 반환
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
	
	// 회원가입
	public int Join(MemberDTO dto) {

		try {
			getConn();
			
			String sql = "INSERT INTO TB_MEMBER VALUES(?, ?, ?, ?, ?, ?, ?, ?,SYSDATE,'M')";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getRrn());
			psmt.setString(5, dto.getGender());
			psmt.setString(6, dto.getEmail());
			psmt.setString(7, dto.getTel());
			psmt.setString(8, dto.getAddress());
			cnt = psmt.executeUpdate();


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// 로그인
	MemberDTO result = null;
	public MemberDTO login(MemberDTO dto) {

		try {
			getConn();
			String sql = "SELECT * FROM TB_MEMBER WHERE MB_ID=? AND MB_PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());

			rs = psmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String rrn = rs.getString(4);
				String gender = rs.getString(5);
				String email = rs.getString(6);
				String tel = rs.getString(7);
				String address = rs.getString(8);

				result = new MemberDTO(id, pw, name, rrn, gender, email, tel, address);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}

}
