package student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class StudentDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Context init;
	private DataSource ds;
	
	private static StudentDAO instance;

	public static StudentDAO getInstance() {
		if(instance == null) {
			instance = new StudentDAO();
		}
		return instance;
	}
	
	
	public StudentDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
			
		} catch (NamingException e) {
			System.err.println("드라이버 로드 실패 : " + e);
		}
	}
	
	public ArrayList<StudentDTO> selectList() {
		ArrayList<StudentDTO> list = new ArrayList<>();
		String sql = "select name, kor, eng, math from student order by name";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				StudentDTO dto = new StudentDTO();
				dto.setEng(rs.getInt("eng"));
				dto.setKor(rs.getInt("kor"));
				dto.setMath(rs.getInt("math"));
				dto.setName(rs.getString("name"));
				
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
	
	public int insert(StudentDTO dto) {
		int row = 0;
		String sql = "insert into student values(?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2, dto.getKor());
			pstmt.setInt(3, dto.getEng());
			pstmt.setInt(4, dto.getMath());
			
			row = pstmt.executeUpdate();
			
			System.out.println(row + "행이 삽입되었습니다");
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
	
	public StudentDTO selectOne(String name) {
		StudentDTO dto = new StudentDTO();
		String sql = "select " + 
				"student.*, " + 
				"kor + eng + math as total, " + 
				"trunc((kor + eng + math) / 3, 1) as avg " + 
				"from student"
				+ " where name = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto.setAvg(rs.getDouble("avg"));
				dto.setEng(rs.getInt("eng"));
				dto.setKor(rs.getInt("kor"));
				dto.setMath(rs.getInt("math"));
				dto.setName(rs.getString("name"));
				dto.setTotal(rs.getInt("total"));
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
	
	public int delete(String name) {
		int row = 0;
		String sql = "delete from student where name=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			
			row = pstmt.executeUpdate();
			System.out.println(row + "행이 삭제되었습니다");
			
			System.out.println();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}	finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {}
		
		}
		return row;
	}
	
	public int update(StudentDTO dto, String name) {
		int row = 0;
		String sql = "update student set kor=?, eng=?, math=? where name = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getKor());
			pstmt.setInt(2, dto.getEng());
			pstmt.setInt(3, dto.getMath());
			pstmt.setString(4, name);
			
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
	
	public ArrayList<StudentDTO> search(String name) {
		ArrayList<StudentDTO> list = new ArrayList<>();
		String sql = "select student.*,"
				+ " (kor + eng + math) as total,"
				+ " trunc((kor + eng + math ) /3, 1) as avg"
				+ " from student"
				+ " where name like ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + name + "%");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				StudentDTO dto = new StudentDTO();
				dto.setAvg(rs.getDouble("avg"));
				dto.setEng(rs.getInt("eng"));
				dto.setKor(rs.getInt("kor"));
				dto.setMath(rs.getInt("math"));
				dto.setName(rs.getString("name"));
				dto.setTotal(rs.getInt("total"));
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
	
}
