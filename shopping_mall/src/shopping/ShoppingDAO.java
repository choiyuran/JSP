package shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ShoppingDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private static ShoppingDAO instance;
	private Context init;
	private DataSource ds;
	
	public static ShoppingDAO getInstance() {
		if(instance == null) {
			instance = new ShoppingDAO();
		}
		return instance;
	}
	
	public ShoppingDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
			
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ShoppingDTO> selectAll() {
		ArrayList<ShoppingDTO> list = new ArrayList<ShoppingDTO>();
		String sql = "select * from shopping order by price desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ShoppingDTO dto = new ShoppingDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setBuy(rs.getString("buy"));
				dto.setName(rs.getString("name"));
				dto.setPhone(rs.getString("phone"));
				dto.setPrice(rs.getInt("price"));
				dto.setUserid(rs.getString("userid"));
				
				list.add(dto);
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
			
		return list;
	}
	
	public ShoppingDTO selectOne(int idx) {
		ShoppingDTO dto = null;
		String sql = "select * from shopping where idx = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = new ShoppingDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setBuy(rs.getString("buy"));
				dto.setName(rs.getString("name"));
				dto.setPhone(rs.getString("phone"));
				dto.setPrice(rs.getInt("price"));
				dto.setUserid(rs.getString("userid"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)	rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {}
		}
		return dto;
	}

	public int insert(ShoppingDTO dto) {
		int row = 0;
		String sql = "insert into shopping(name, phone, userid, buy, price) values(?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPhone());
			pstmt.setString(3, dto.getUserid());
			pstmt.setString(4, dto.getBuy());
			pstmt.setInt(5, dto.getPrice());
			
			row = pstmt.executeUpdate();
			System.out.println(row + "행이 업데이트 되었습니다");
			
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
	
	public int delete(int idx) {
		int row = 0;
		String sql = "delete from shopping where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx)
			;
			row = pstmt.executeUpdate();
			System.out.println(row + "행이 삭제 되었습니다");
			
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
	
	public int update(ShoppingDTO dto, int idx) {
		int row = 0;
		String sql = "update shopping set phone=?, buy=?, price=? where idx=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPhone());
			pstmt.setString(2, dto.getBuy());
			pstmt.setInt(3, dto.getPrice());
			pstmt.setInt(4, idx);
			
			row = pstmt.executeUpdate();
			System.out.println(row + "행이 수정되었습니다");
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
}
