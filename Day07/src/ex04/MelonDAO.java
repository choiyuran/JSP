package ex04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MelonDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private String driverClassName = "oracle.jdbc.driver.OracleDriver";
	
	public MelonDAO() {
		try {
			Class.forName(driverClassName);
		} catch(ClassNotFoundException e) {
			System.out.println("클래스를 가져올 수 없습니다" + e);
		}
	}
	
	public ArrayList<MelonDTO> selectAll() {
		ArrayList<MelonDTO> list = new ArrayList<MelonDTO>();
		String sql = "select * from melon order by ranking";
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MelonDTO dto = new MelonDTO();
				
				dto.setRanking(rs.getInt("ranking"));
				dto.setAlbum(rs.getString("album"));
				dto.setArtist(rs.getString("artist"));
				dto.setLikeCount(rs.getInt("likeCount"));
				dto.setTitle(rs.getString("title"));
				
				list.add(dto);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {}
		}
		
		
		return list;
	}
	
}
