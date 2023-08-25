package member;

import java.sql.ResultSet;
import java.sql.SQLException;

import db.DAO;

public class MemberDAO extends DAO {
	private MemberDAO() {}
	
	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}
	
	private MemberDTO mapping(ResultSet rs) throws SQLException {
		MemberDTO dto = new MemberDTO();
		dto.setBirth(rs.getString("birth"));
		dto.setEmail(rs.getString("email"));
		dto.setUserid(rs.getString("userid"));
		dto.setUsername(rs.getString("username"));
		dto.setUserpw(rs.getString("userpw"));
		
		return dto;
	}
	
	public MemberDTO login(MemberDTO dto) {
		MemberDTO user = null;
		String sql = "select * from member where userid=? and userpw=?";
	
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpw());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				user = mapping(rs);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return user;	 
	}
	
	public int join(MemberDTO dto) {
		int row = 0;
		String sql = "insert into member values(?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpw());
			pstmt.setString(3, dto.getUsername());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getBirth());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
}
