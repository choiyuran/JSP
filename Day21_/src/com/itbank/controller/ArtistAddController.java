package com.itbank.controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.repository.ArtistDAO;
import com.itbank.repository.ArtistFileUtil;

public class ArtistAddController extends Controller {
	private ArtistDAO dao = ArtistDAO.getInstance();
	private ArtistFileUtil fileUtil = ArtistFileUtil.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "/artist/add";
	}
	
	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		int row = dao.insert(fileUtil.getArtistDTO(request));
		System.out.println(row + "행이 삽입되었습니다");
		
		return "redirect:/artist/list";
	}
}
