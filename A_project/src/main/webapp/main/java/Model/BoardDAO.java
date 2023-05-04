package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	ArrayList<BoardDTO> list = new ArrayList<>();
	public void getConn() {
		// 1. try-catch : 실행 중 발생하는 오류를 처리하기 위해 사용
		try {
			// 2-1 ojdbc6 jar 파일 추가
			// 2-2 driver class 동적로딩
			Class.forName("oracle.jdbc.OracleDriver");

			// 3. Connection 객체 만들기
			String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 어느 컴퓨터의 무슨 DB??
			String username = "hr"; // DB 접속에 사용하는 ID
			String password = "hr"; // DB 접속에 사용하는 PW
			conn = DriverManager.getConnection(url, username, password);

		} catch (Exception e) {
			e.printStackTrace(); // 오류 출력
		}
	}

	// 객체를 종료하기 위한 close()
	public void close() {
		try {
			// ResultSet 닫기
			if (rs != null) {
				rs.close();
			}
			// PreparedStatement 닫기
			if (psmt != null) {
				psmt.close();
			}
			// Connection 닫기
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}


	}public int insertBoard(BoardDTO dto) {
		try {

			getConn();

			// 3) SQL문 실행 준비
			String sql = "insert into Board values( ?, ?, ?, ?, ?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, dto.getNumber());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getWriter());
			psmt.setString(4, dto.getContent());
			psmt.setString(5, dto.getTime());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
		
	}public ArrayList<BoardDTO> Listofposts (String id) {
		try {

			getConn();

			// 3) SQL문 실행 준비
			String sql = "select * from Board";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int number = rs.getInt(2);
				String title = rs.getString(3);
				String writer = rs.getString(4);
				String content = rs.getString(5);
				String time = rs.getString(6);
				
				BoardDTO dto = new BoardDTO(number, title, writer, content, time);
				
				list.add(dto);
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
		
	}public void Modify(BoardDTO dto) {
		try {

			getConn();

			// 3) SQL문 실행 준비
			String sql = "select * from web_message where id=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, dto.getNumber());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getWriter());
			psmt.setString(4, dto.getContent());
			psmt.setString(5, dto.getTime());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
}
}