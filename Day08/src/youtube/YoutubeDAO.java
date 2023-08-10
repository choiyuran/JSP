package youtube;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class YoutubeDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	private String driverName = "oracle.jdbc.driver.OracleDriver";
	
	public YoutubeDAO() {
		try {
			Class.forName(driverName);			
		} catch(ClassNotFoundException e) {
			System.out.println("클래스를 찾을수 없습니다" + e);
		}
	}
	
	public ArrayList<YoutubeDTO> selectAll() {
		ArrayList<YoutubeDTO> list = new ArrayList<>();
		String sql = "select * from youtube order by idx";
		try {
			conn = DriverManager.getConnection(url, user, password);	// url, user, password중 정보가 잘못되어 있거나 가상머신이 꺼져있거나 등 연결 에러가 발생할 수 있기 때문에 try~catch구문 사용
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			// rs에서는 rs.next()를 호출하지 않으면 getString이나 getInt..등을 불러올수 없게 되어있다(그래서 한줄을 불러오더라도 사용해줘야 함)
			while(rs.next()) {		// while(sc.hasNextLine() { ... }
				YoutubeDTO dto = new YoutubeDTO();
				dto.setChannel(rs.getString("channel"));
				dto.setIdx(rs.getInt("idx"));
				dto.setMovieTag(rs.getString("movieTag"));
				dto.setThumbnail(rs.getString("thumbnail"));
				dto.setTitle(rs.getString("title"));
				dto.setViewCount(rs.getInt("viewCount"));
				
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

	
	public int insert(YoutubeDTO dto) {
		int row = 0;
		String sql = "insert into youtube values(?, ?, ?, ?, ?, ?)";
	
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			// 물음표에 들어갈 값을 순서대로 자료형에 맞게 세팅한다
			// 단점은, 위 방식과 달리 쿼리문이 실행되는 내용을 출력하여 확인할 수 없다
			// 이후, 스프링에서 로그를 출력하게 만들면 확인 가능하다
			
			pstmt.setInt(1, dto.getIdx());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getChannel());
			pstmt.setInt(4, dto.getViewCount());
			pstmt.setString(5, dto.getThumbnail());
			pstmt.setString(6, dto.getMovieTag());
			row = pstmt.executeUpdate(); 		// insert, update, delete의 경우 executeUpdate()
												// SQL에 의해 영향을 받은 줄 수를 반환한다
			
			System.out.println(row + "행이 추가되었습니다");
			
		} catch (SQLException e) {
			e.printStackTrace();
		
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {}	
		}
		
		return row;
	}
	
	public YoutubeDTO selectOne(int idx) {
		YoutubeDTO dto = null;
		String sql = "select * from youtube where idx = ?";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = new YoutubeDTO();
				dto.setChannel(rs.getString("channel"));
				dto.setIdx(rs.getInt("idx"));
				dto.setMovieTag(rs.getString("movieTag"));
				dto.setThumbnail(rs.getString("thumbnail"));
				dto.setTitle(rs.getString("title"));
				dto.setViewCount(rs.getInt("viewCount"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {}	
		}
			return dto;
	}
}
