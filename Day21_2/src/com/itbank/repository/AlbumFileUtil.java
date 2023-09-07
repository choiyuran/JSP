package com.itbank.repository;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import com.itbank.model.AlbumDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AlbumFileUtil {
	private static AlbumFileUtil instance = new AlbumFileUtil();

	public static AlbumFileUtil getInstance() {
		return instance;
	}

	private String saveDirectory = "D:\\album";
	private int maxPostSize = 1024 * 1024 * 20;
	private String encoding = "UTF-8";
	private DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	private long date = 0;
	
	private AlbumFileUtil() {
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
	}
	
	public AlbumDTO getAlbumDTO(HttpServletRequest request) throws IOException, ParseException {
		AlbumDTO dto = null;
		
		MultipartRequest mpRequest = new MultipartRequest(
				request, saveDirectory, maxPostSize, encoding, policy);
		
		String id = mpRequest.getParameter("id");
		String artist_id = mpRequest.getParameter("artist_id");
		String name = mpRequest.getParameter("name");
		String type = mpRequest.getParameter("type");
		String rDate = mpRequest.getParameter("rDate");
		if(rDate != null) {
			date = sdf.parse(rDate).getTime();			
		}
		
		String playTime = mpRequest.getParameter("playTime");
		File coverImg = mpRequest.getFile("coverImg");
		String contentType = mpRequest.getContentType("coverImg");
		
		if(coverImg != null && contentType.startsWith("image")) {
			dto = new AlbumDTO();
			if(id != null) {
				dto.setId(Integer.parseInt(id));
			}
			dto.setArtist_id(Integer.parseInt(artist_id));
			dto.setName(name);
			dto.setType(type);
			dto.setrDate(new Date(date));
			dto.setPlayTime(Integer.parseInt(playTime));
			dto.setCoverImg(coverImg.getName());
		}
		else {
			dto = new AlbumDTO();
			if(id != null) {
				dto.setId(Integer.parseInt(id));
			}
			dto.setArtist_id(Integer.parseInt(artist_id));
			dto.setName(name);
			dto.setType(type);
			dto.setrDate(new Date(date));
			dto.setPlayTime(Integer.parseInt(playTime));
		}
		
		return dto;
				
	}
	
	public boolean delFile(String coverImg) {
		boolean flag = false;
		File f = new File(saveDirectory, coverImg);
		if(f.exists()) {
			f.delete();
		}
		return flag;
	}
}
