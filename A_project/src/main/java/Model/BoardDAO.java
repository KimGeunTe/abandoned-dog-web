package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;

public class BoardDAO {
	// 변수
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	ArrayList<BoardDTO> list = new ArrayList<>();

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

	// 객체를 종료하기 위한 close()
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
		} catch (Exception e2) {
			e2.printStackTrace();
		}

	}

	public int insertBoard(BoardDTO b_dto) {
		try {
			getConn();

			// 3) SQL문 실행 준비

			String inser_sql = "insert into TB_COMMUNITY values(TB_COMMUNITY_SEQ.nextval, ?, ?, current_date, ?)";

			psmt = conn.prepareStatement(inser_sql);
			psmt.setString(1, b_dto.getTitle());
			psmt.setString(2, b_dto.getWriter());
			psmt.setString(3, b_dto.getContent());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
	public BoardDTO getNumber(int number) {
		BoardDTO dto = new BoardDTO();
		try {
			getConn();
			
			String sql = "select * from TB_COMMUNITY where comm_seq = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, number);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				dto.setNumber(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setWriter(rs.getString(3));
				dto.setTime(rs.getString(4));
				dto.setContent(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
	}
	
	public ArrayList<BoardDTO> Listofposts() {
		try {
			getConn();
			String Array_sql = "select * from TB_COMMUNITY";
			psmt = conn.prepareStatement(Array_sql);
			rs = psmt.executeQuery();
			list.clear();
			while (rs.next()) {
				int number = rs.getInt(1);
				String title = rs.getString(2);
				String writer = rs.getString(3);
				String content = rs.getString(4);
				String time = rs.getString(5);
				BoardDTO dto = new BoardDTO(number, title, writer, content, time);

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	BoardDTO result = null;

	public BoardDTO readBoard(BoardDTO dto) {
		try {
			getConn();

			String sql = "select * from TB_COMMUNITY where Writer = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getWriter());

			rs = psmt.executeQuery();

			if (rs.next()) {
				int number = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String time = rs.getString(4);
				String writer = rs.getString(5);

				result = new BoardDTO(number, title, writer, time, content);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();

		}

		return result;
	}

	public int removalBoard(int number) {
		try {
			getConn();
			String sql = "DELETE TB_COMMUNITY WHERE comm_seq = ?";

			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, number);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
 
	public int updateBoard(BoardDTO dto) {
		try {
			getConn();
			
			String sql = "update TB_COMMUNITY set COMM_TITLE = ?, COMM_DT = current_date, COMM_CONTENT =? where COMM_SEQ = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setInt(3, dto.getNumber());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

}