package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public MemberDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}	
	}

	
	public MemberDTO selectOne(MemberDTO dto) {
		MemberDTO user = new MemberDTO();
		String sql = "select * from member where userid=? and userpw=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpw());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				user.setIdx(rs.getInt("idx"));
				user.setName(rs.getString("name"));
				user.setPhone(rs.getString("phone"));
				user.setUserid(rs.getString("userid"));
				user.setUserpw(rs.getString("userpw"));
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e) {}
		
		return user;
	}
	
	public int insert(MemberDTO dto) {
		int row = 0;
		String sql = "insert into member(name, phone, userid, userpw) values(?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPhone());
			pstmt.setString(3, dto.getUserid());
			pstmt.setString(4, dto.getUserpw());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e) {}
		
		return row;
	}
	public ArrayList<MemberDTO> getList() {
		ArrayList<MemberDTO> list = new ArrayList<>();
		String sql = "select * from member order by idx";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setName(rs.getString("name"));
				dto.setPhone(rs.getString("phone"));
				dto.setUserid(rs.getString("userid"));
				dto.setUserpw(rs.getString("userpw"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e) {}
		
		return list;
	}
	
	public int update(MemberDTO dto) {
		int row = 0;
		String sql = "update member set phone=?, userpw=? where idx=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPhone());
			pstmt.setString(2, dto.getUserpw());
			pstmt.setInt(3, dto.getIdx());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e) {}
		
		return row;
	}
}
