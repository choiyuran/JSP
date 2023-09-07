package com.itbank.controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.repository.AlbumDAO;
import com.itbank.repository.AlbumFileUtil;

public class AlbumAddController extends Controller {
	private AlbumDAO dao = AlbumDAO.getInstance();
	
	private AlbumFileUtil fileUtil = AlbumFileUtil.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "album/add";
	}
	
	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		int row = dao.insert(fileUtil.getAlbumDTO(request));
		System.out.println(row + "행이 추가되었습니다");
		return "redirect:/album/list";
	}
}
