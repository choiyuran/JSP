package members;

import java.sql.ResultSet;
import java.sql.SQLException;

import dao.DAO;

public class MemberDAO extends DAO {
	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}
	private MemberDAO() {}
	
	private MemberDTO mapping(ResultSet rs) throws SQLException {
		MemberDTO dto = new MemberDTO();
		dto.setBirth(rs.getDate("birth"));
		dto.setEmail(rs.getString("email"));
		dto.setUserid(rs.getString("userid"));
		dto.setUsername(rs.getString("username"));
		dto.setUserpw(rs.getString("userpw"));
		return dto;
	}
	public MemberDTO login(MemberDTO dto) {
		MemberDTO user = null;
		String sql = "select * from members where userid=? and userpw=?";
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
	
	public int delete(String userid) {
		int row = 0;
		String sql = "delete from members where userid=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			row = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
		
	}
	public int modify(MemberDTO dto) {
		int row = 0;
		String sql = "update members set userpw=?, email=? where userid=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserpw());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getUserid());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;	
	}
}
