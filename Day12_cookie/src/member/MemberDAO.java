package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}
	
	private Context init;
	private DataSource ds;
	private MemberDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public MemberDTO login(MemberDTO dto) {
		// null로 먼저 세팅해주는 이유는 위에서 객체를 생성해버리면
		// 로그인이 실패하더라도 EL Tag는 객체가 생성되었다고 보기 때문에 로그인 성공으로 뜬다
		// 그런 상황을 없애기 위해서 null로 주고 while문 안에서 객체 생성 
		MemberDTO user = null;			
		String sql = "select * from member where userid=? and userpw=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpw());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				user = new MemberDTO();
				user.setBirth(rs.getString("birth"));
				user.setEmail(rs.getString("email"));
				user.setUserid(rs.getString("userid"));
				user.setUsername(rs.getString("username"));
				user.setUserpw(rs.getString("userpw"));
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
		
		
		return user;
	}
	
}
