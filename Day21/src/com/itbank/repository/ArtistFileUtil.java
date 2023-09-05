package com.itbank.repository;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import com.itbank.model.ArtistDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ArtistFileUtil {
	private static ArtistFileUtil instance = new ArtistFileUtil();

	public static ArtistFileUtil getInstance() {
		return instance;
	}
	
	private String saveDirectory = "E:\\artist";
	private int maxPostSize = 1024 * 1024 * 20;
	private String encoding = "UTF-8";
	private DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	private long date = 0;
	
	private ArtistFileUtil() {
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
	}
	
	public ArtistDTO getArtistDTO(HttpServletRequest request) throws IOException, ParseException {
		ArtistDTO dto = null;
		
		MultipartRequest mpRequest = new MultipartRequest(
				request, saveDirectory, maxPostSize, encoding, policy);
				
		String id = mpRequest.getParameter("id");
		String name = mpRequest.getParameter("name");
		String company = mpRequest.getParameter("company");
		String country = mpRequest.getParameter("country");
		String member = mpRequest.getParameter("member");
		String debut = mpRequest.getParameter("debut");
		date = sdf.parse(debut).getTime();
		
		String type = mpRequest.getParameter("type");
		File profileImg = mpRequest.getFile("profileImg");
		String contentType = mpRequest.getContentType("profileImg");
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(company);
		System.out.println(date);
		
		if(profileImg != null && contentType.startsWith("image")) {
			dto = new ArtistDTO();
			if(id != null) {
				dto.setId(Integer.parseInt(id));
			}
			dto.setName(name);
			dto.setCompany(company);
			dto.setCountry(country);
			dto.setMember(member);
			dto.setDebut(new Date(date));
			dto.setType(type);
			dto.setProfileImg(profileImg.getName());
		}
		
		else {
			dto = new ArtistDTO();
			if(id != null) {
				dto.setId(Integer.parseInt(id));
			}
			dto.setName(name);
			dto.setCompany(company);
			dto.setCountry(country);
			dto.setMember(member);
			dto.setDebut(new Date(date));
			dto.setType(type);
		}
		
		return dto;
	}
	
}
