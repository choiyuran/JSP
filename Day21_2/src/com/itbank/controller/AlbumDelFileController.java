package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.repository.AlbumDAO;
import com.itbank.repository.AlbumFileUtil;

public class AlbumDelFileController extends Controller {
	private AlbumDAO dao = AlbumDAO.getInstance();
	private AlbumFileUtil fileUtil = AlbumFileUtil.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String coverImg = request.getParameter("img");
		String id = request.getParameter("id");
		
		fileUtil.delFile(coverImg);
		int row = dao.removeFile(Integer.parseInt(id));
		return "redirect:/album/list";

	}
			
}
