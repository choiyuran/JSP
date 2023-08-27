package board_file;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.DAO;

public class BoardDAO extends DAO {
	private static BoardDAO instance;

	public static BoardDAO getInstance() {
		return instance;
	}
	
	private BoardDTO mapping(ResultSet rs) throws SQLException {
		BoardDTO dto = new BoardDTO();
		dto.setContent(rs.getString("content"));
		dto.setFilePath(rs.getString("filePath"));
		dto.setIdx(rs.getInt("idx"));
		dto.setTitle(rs.getString("title"));
		dto.setWdate(rs.getDate("wdate"));
		dto.setWriter(rs.getString("writer"));
		return dto;
	}
	
	public ArrayList<BoardDTO> selectAll() {
		ArrayList<BoardDTO> list = new ArrayList<>();
		String sql = "select * from board_file order by idx";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public int insert(BoardDTO dto) {
		int row = 0;
		String sql = "insert into board_file(title, content, filePath) values(?, ?, ?)";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getFilePath());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
}
