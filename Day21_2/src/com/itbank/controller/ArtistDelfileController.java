package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.repository.ArtistDAO;
import com.itbank.repository.ArtistFileUtil;

public class ArtistDelfileController extends Controller{
	private ArtistDAO dao = ArtistDAO.getInstance();
	private ArtistFileUtil fileUtil = ArtistFileUtil.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String profileImg = request.getParameter("profileImg");
		String id = request.getParameter("id");
		
		fileUtil.Delfile(profileImg);
		int row = dao.removeFile(Integer.parseInt(id));
		return "redirect:/artist/list";
	}
	
	
	
}
