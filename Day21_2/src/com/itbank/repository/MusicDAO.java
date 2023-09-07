package com.itbank.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import com.itbank.model.MusicDTO;

public class MusicDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Context init;
	private DataSource ds;
	
	private static MusicDAO instance = new MusicDAO();

	public static MusicDAO getInstance() {
		return instance;
	}
	private MusicDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e) {}
	}
	
	private MusicDTO mapping(ResultSet rs) throws SQLException {
		MusicDTO dto = new MusicDTO();
		dto.setAlbum_id(rs.getInt("album_id"));
		dto.setArtist_id(rs.getInt("artist_id"));
		dto.setGenre(rs.getString("genre"));
		dto.setId(rs.getInt("id"));
		dto.setLyrics(rs.getString("lyrics"));
		dto.setName(rs.getString("name"));
		dto.setPlayCount(rs.getInt("playCount"));
		dto.setPlaytime(rs.getInt("playtime"));
		return dto;
	}
	
	public MusicDTO getDTO(HttpServletRequest request) {
		MusicDTO dto = new MusicDTO();
		if(request.getParameter("id") != null) {
			dto.setId(Integer.parseInt(request.getParameter("id")));
		}
		dto.setAlbum_id(Integer.parseInt(request.getParameter("album_id")));
		dto.setArtist_id(Integer.parseInt(request.getParameter("artist_id")));
		dto.setGenre(request.getParameter("genre"));
		if(request.getParameter("lyrics") != null) {
			dto.setLyrics(request.getParameter("lyrics"));			
		}
		dto.setName(request.getParameter("name"));
		dto.setPlaytime(Integer.parseInt(request.getParameter("playtime")));
		if(request.getParameter("playCount") != null) {
			dto.setPlayCount(Integer.parseInt(request.getParameter("playCount")));
		}
	
		return dto;
	}
	
	public ArrayList<MusicDTO> selectAll(int album_id) {
		ArrayList<MusicDTO> list = new ArrayList<>();
		String sql = "select * from music where album_id = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, album_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int insert(MusicDTO dto) {
		int row = 0;
		String sql = "insert into music(artist_id, album_id, name, genre, playtime, lyrics) "
				+ "values(?, ?, ?, ?, ?, ?)";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getArtist_id());
			pstmt.setInt(2, dto.getAlbum_id());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getGenre());
			pstmt.setInt(5, dto.getPlaytime());
			pstmt.setString(6, dto.getLyrics());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	public MusicDTO selectOne(int id2) {
		MusicDTO dto = null;
		String sql = "select * from music where id=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id2);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = mapping(rs);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	public int viewCount(int id2) {
		int row = 0;
		String sql = "update music set playCount = playCount+1 where id=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id2);
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	
	public int update(MusicDTO dto) {
		int row = 0;
		String sql = "update music set lyrics=? where id=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getLyrics());
			pstmt.setInt(2, dto.getId());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	public ArrayList<MusicDTO> selectMusic() {
		ArrayList<MusicDTO> list = new ArrayList<>();
		String sql = "select * from music order by album_id desc";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
}
