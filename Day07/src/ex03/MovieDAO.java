package ex03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MovieDAO {
	// conn, pstmt, rs
	// url, user, password
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private String driverClassName = "oracle.jdbc.driver.OracleDriver";
	// 생성자에서 Class.forName()
	public MovieDAO() {
		try {
			Class.forName(driverClassName);
		} catch(ClassNotFoundException e) {
			System.out.println("클래스를 불러올 수 없습니다" + e);
		}
	}
	
	// 전체 목록을 ArrayList<MovieDTO>으로 반환하는 함수
	public ArrayList<MovieDTO> getList() {
		ArrayList<MovieDTO> list = new ArrayList<>();
		String sql = "select * from movie";
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);		// Statement 클래스의 상속
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MovieDTO movie = new MovieDTO();
				movie.setMovie_rank(rs.getInt("movie_rank"));
				movie.setTitle(rs.getString("title"));
				movie.setOpenningDate(rs.getString("openningDate"));
				movie.setReserveRate(rs.getDouble("reserveRate"));
				movie.setReserveCount(rs.getInt("reserveCount"));
				movie.setWatchCount(rs.getInt("watchCount"));

				list.add(movie);
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
