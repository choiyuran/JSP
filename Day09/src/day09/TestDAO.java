package day09;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class TestDAO {
	/*** 싱글톤 ***/		
	private static TestDAO instance;
	
	public static TestDAO getInstance() {
		if(instance == null) {
			instance = new TestDAO();
		}
		return instance;
	}
	
	public TestDAO() {
		/*** 커넥션 풀 설정, context.xml, web.xml 사전 설정 필요함 ***/
		// META-INF/context.xml
		// WEB_INF/web.xml
		try {
			init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
			// 자바 컴포넌트 중, 환경 요소중에서 이름이 jdbc/oracle인 요소를 불러온다
		} catch (NamingException e) {
			System.err.println("dataSource 불러오기 실패 : " + e);
		}
		
	}
	private Context init;
	private DataSource ds;
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public String getSysDate() {
		String sysdate = null;
		String sql = "select sysdate from dual";
		
		try {
			// 미리 커넥션풀을 만들어놨다가 필요할때 가져다 쓴다(속도 향상)
			conn = ds.getConnection();			// { con1, con2, con3, con4 ... }
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				sysdate = rs.getString("sysdate");
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
		return sysdate;
			
	}
	
	
	
}
